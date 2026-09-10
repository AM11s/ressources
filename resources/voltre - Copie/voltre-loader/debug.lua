--[[
    voltre-loader/debug.lua

    Commandes /voltreconfig — diagnostic du pipeline de config dashboard.
    Chargé à la fois en server_scripts et client_scripts (shared).

    Server subcommands:
      /voltreconfig status                    → état global du fetch + resources mergées
      /voltreconfig keys [filtre]             → liste des clés dashboard
      /voltreconfig dump <clé>                → affiche la valeur raw d'une clé
      /voltreconfig verify [resource]         → vérifie chaque clé vs Config de la resource (défaut: voltre-core)
      /voltreconfig diff [resource]           → n'affiche que les mismatches
      /voltreconfig reload                    → refetch depuis l'API (sans restart)
      /voltreconfig clients                   → stats des clients ayant mergé

    Client subcommands (via F8):
      /voltreconfig status                    → état local (GlobalState.VoltreDashboardConfig)
      /voltreconfig keys [filtre]             → liste des clés client-safe
      /voltreconfig dump <clé>                → valeur raw client
      /voltreconfig verify                    → diff avec Config local de voltre-core client
]]

local isServer = IsDuplicityVersion()
local RES = GetCurrentResourceName()
if RES ~= "voltre-loader" then return end

-- ---------------------------------------------------------------------
-- Helpers communs
-- ---------------------------------------------------------------------
local function fmtValue(v, maxLen)
    maxLen = maxLen or 120
    local s
    local t = type(v)
    if t == "table" then
        local ok, enc = pcall(json.encode, v)
        s = ok and enc or tostring(v)
    elseif t == "vector3" then
        s = ("vec3(%.2f, %.2f, %.2f)"):format(v.x, v.y, v.z)
    elseif t == "vector4" then
        s = ("vec4(%.2f, %.2f, %.2f, %.2f)"):format(v.x, v.y, v.z, v.w)
    else
        s = tostring(v)
    end
    if #s > maxLen then s = s:sub(1, maxLen - 3) .. "..." end
    return s
end

local function sortedKeys(t)
    local keys = {}
    for k in pairs(t or {}) do keys[#keys+1] = k end
    table.sort(keys)
    return keys
end

local function matchesFilter(key, filter)
    if not filter or filter == "" then return true end
    return string.find(string.lower(key), string.lower(filter), 1, true) ~= nil
end

-- ---------------------------------------------------------------------
-- Resolver de chemin dans une table Config
-- ---------------------------------------------------------------------
local function resolvePath(root, key)
    local segs = {}
    for seg in string.gmatch(key, "[^.]+") do segs[#segs+1] = seg end
    local cur = root
    local startIdx = 1
    if segs[1] == "Config" then startIdx = 2 end
    for i = startIdx, #segs do
        if type(cur) ~= "table" then return nil end
        cur = cur[segs[i]]
    end
    return cur
end

local function valueEquals(a, b)
    if type(a) ~= type(b) then
        if (type(a) == "vector3" or type(a) == "vector4") and type(b) == "table" then
            if a.x ~= b.x or a.y ~= b.y or a.z ~= b.z then return false end
            if type(a) == "vector4" and a.w ~= b.w then return false end
            return true
        end
        return false
    end
    if type(a) == "table" then
        for k, v in pairs(a) do if not valueEquals(b[k], v) then return false end end
        for k, v in pairs(b) do if not valueEquals(a[k], v) then return false end end
        return true
    end
    return a == b
end

-- ---------------------------------------------------------------------
-- Output helper
-- ---------------------------------------------------------------------
local function makePrinter(source)
    -- source: nil (console), playerId (client via chat), or -1 (server console from client cmd)
    if isServer and source and source > 0 then
        return function(msg)
            TriggerClientEvent('chat:addMessage', source, {
                color = {180, 255, 180},
                multiline = true,
                args = { "VoltreConfig", msg }
            })
        end
    else
        return function(msg) print(msg) end
    end
end

-- =====================================================================
-- SERVER
-- =====================================================================
if isServer then

    local clientApplyReports = {} -- [playerId][resource] = {count, at}

    RegisterNetEvent('voltre-loader:debug:clientApplied', function(resource, count)
        local src = source
        if not resource then return end
        clientApplyReports[src] = clientApplyReports[src] or {}
        clientApplyReports[src][resource] = { count = count or 0, at = os.time() }
    end)

    AddEventHandler('playerDropped', function()
        clientApplyReports[source] = nil
    end)

    local Subs = {}

    Subs.status = function(out)
        local stats = LoaderStats or {}
        local f = stats.fetch or {}
        out("^7───────────── ^3VoltreConfig — STATUS^7 ─────────────")
        out(("^7useDashboard  : %s"):format(tostring(stats.useDashboard)))
        out(("^7license set   : %s   secret set: %s")
            :format(stats.licenseSet and "^2YES^7" or "^1NO^7",
                    stats.secretSet  and "^2YES^7" or "^1NO^7"))
        out(("^7fetch attempts: %d"):format(f.attempts or 0))
        out(("^7fetch success : %s   (http: %s, duration: %sms)")
            :format(f.success == true and "^2YES^7" or (f.success == false and "^1NO^7" or "^3...^7"),
                    tostring(f.httpCode), tostring(f.durationMs)))
        if f.errorMessage then out(("^1error         : %s^7"):format(f.errorMessage)) end
        out(("^7hasCustomCfg  : %s   version: %s")
            :format(tostring(f.hasCustomConfig), tostring(f.version)))
        out(("^7total keys    : %d   client-safe: %d   blacklisted: %d")
            :format(f.totalKeys or 0, f.clientKeys or 0, f.blacklistedKeys and #f.blacklistedKeys or 0))
        out(("^7raw size      : %s bytes"):format(tostring(f.rawSize)))

        out("^7── resources server-merged ──")
        local apply = stats.apply and stats.apply.resources or {}
        local keys = sortedKeys(apply)
        if #keys == 0 then
            out("^3  (aucune resource n'a encore appelé RecordApply)^7")
        end
        for _, r in ipairs(keys) do
            local a = apply[r]
            local colour = (a.count and a.count >= 0) and "^2" or "^1"
            out(("%s  %-30s count=%d  side=%s^7"):format(colour, r, a.count or -1, tostring(a.side)))
        end

        out("^7── clients ayant reporté ──")
        local ccount = 0
        for pid, res in pairs(clientApplyReports) do
            ccount = ccount + 1
            local total = 0
            for _, r in pairs(res) do total = total + (r.count or 0) end
            if ccount <= 5 then
                out(("^7  player %d : %d resources, %d keys cumulées^7"):format(pid, (function() local n=0 for _ in pairs(res) do n=n+1 end return n end)(), total))
            end
        end
        out(("^7  total clients: %d"):format(ccount))
    end

    Subs.keys = function(out, filter)
        local cfg = DashboardConfig or {}
        local keys = sortedKeys(cfg)
        local shown = 0
        local matched = 0
        out(("^3── Keys dashboard (filtre: %s) ──^7"):format(filter and filter ~= "" and filter or "aucun"))
        for _, k in ipairs(keys) do
            if matchesFilter(k, filter) then
                matched = matched + 1
                if shown < 80 then
                    out(("^7  %-60s  = %s"):format(k, fmtValue(cfg[k], 80)))
                    shown = shown + 1
                end
            end
        end
        out(("^3Total: %d / %d affichées (max 80)^7"):format(matched, #keys))
    end

    Subs.dump = function(out, key)
        if not key or key == "" then out("^1usage: /voltreconfig dump <clé>^7") return end
        local v = (DashboardConfig or {})[key]
        if v == nil then
            out(("^1clé '%s' absente du DashboardConfig^7"):format(key))
        else
            out(("^2%s^7 = ^3%s^7 (type: %s)"):format(key, fmtValue(v, 500), type(v)))
        end
    end

    Subs.verify = function(out, resource, onlyDiff)
        resource = resource or "voltre-core"
        out(("^3── Verify vs Config de '%s'%s ──^7"):format(resource, onlyDiff and " (diff only)" or ""))

        local ok, targetCfg = pcall(function() return exports[resource]:GetConfig() end)
        if not ok or type(targetCfg) ~= "table" then
            out(("^1Impossible d'accéder à Config de la resource '%s' (est-elle démarrée avec configs_loader.lua ?)^7"):format(resource))
            return
        end

        local cfg = DashboardConfig or {}
        local keys = sortedKeys(cfg)
        local pass, fail, missing = 0, 0, 0
        for _, k in ipairs(keys) do
            local dash = cfg[k]
            local cur  = resolvePath(targetCfg, k)
            local exists = cur ~= nil
            local match = exists and valueEquals(dash, cur)
            if not exists then missing = missing + 1
            elseif match then pass = pass + 1
            else fail = fail + 1 end

            if (not onlyDiff) or (not match) then
                local tag
                if not exists then tag = "^3[MISS]^7"
                elseif match then tag = "^2[PASS]^7"
                else tag = "^1[FAIL]^7" end
                if (pass + fail + missing) <= 200 then
                    out(("%s %-55s  dash=%s  cur=%s"):format(tag, k, fmtValue(dash, 50), fmtValue(cur, 50)))
                end
            end
        end
        out(("^3── Résumé: ^2PASS=%d  ^1FAIL=%d  ^3MISS=%d  ^7(total=%d)"):format(pass, fail, missing, #keys))
    end

    Subs.diff = function(out, resource)
        Subs.verify(out, resource, true)
    end

    Subs.reload = function(out)
        out("^3Reloading dashboard config from API...^7")
        local ok, fetch = exports['voltre-loader']:ReloadDashboardConfig()
        if ok and fetch and fetch.success then
            out(("^2Reload OK^7 (version=%s, keys=%d, %sms)"):format(
                tostring(fetch.version), fetch.totalKeys or 0, tostring(fetch.durationMs)))
            out("^3Note: les resources déjà chargées ont leur Config figée — faites 'ensure <resource>' pour re-merge.^7")
        else
            out(("^1Reload échoué: %s^7"):format(fetch and fetch.errorMessage or "inconnu"))
        end
    end

    Subs.clients = function(out)
        out("^3── Client apply reports ──^7")
        local n = 0
        for pid, res in pairs(clientApplyReports) do
            n = n + 1
            out(("^7player %d:"):format(pid))
            for r, info in pairs(res) do
                out(("  - %-25s count=%d  (il y a %ds)"):format(r, info.count, os.time() - info.at))
            end
        end
        if n == 0 then out("^3aucun client n'a encore reporté (ils doivent s'être connectés après le boot)^7") end
    end

    local function handleCommand(source, args)
        local out = makePrinter(source)
        local sub = (args[1] or "status"):lower()
        if Subs[sub] then
            -- reassembler les args à partir de [2]
            Subs[sub](out, args[2], args[3])
        else
            out("^1Sous-commande inconnue. Utilisez: status | keys | dump | verify | diff | reload | clients^7")
        end
    end

    local function isAllowed(src)
        if src == 0 then return true end -- console
        -- ACE natif
        if IsPlayerAceAllowed(tostring(src), "voltreconfig") then return true end
        -- fallback: voltre-core ESX si disponible
        local ok, allowed = pcall(function()
            local esx = exports['voltre-core']:GetESX()
            if not esx or not esx.GetPlayerFromId then return false end
            local xp = esx.GetPlayerFromId(src)
            if not xp or not xp.getGroup then return false end
            local g = xp.getGroup()
            return g == 'superadmin' or g == 'admin'
        end)
        return ok and allowed
    end

    RegisterCommand('voltreconfig', function(source, args)
        if not isAllowed(source) then
            if source > 0 then
                TriggerClientEvent('chat:addMessage', source, {
                    color = {255,80,80}, args = {"VoltreConfig", "Accès refusé (staff only)"}
                })
            else
                print("[VoltreConfig] Accès refusé")
            end
            return
        end
        handleCommand(source, args)
    end, false)

    -- Relai des commandes client pour usage via F8
    RegisterNetEvent('voltre-loader:debug:runServerCmd', function(args)
        local src = source
        if not isAllowed(src) then
            TriggerClientEvent('chat:addMessage', src, {
                color = {255,80,80}, args = {"VoltreConfig", "Accès refusé (staff only)"}
            })
            return
        end
        handleCommand(src, args or {})
    end)

-- =====================================================================
-- CLIENT
-- =====================================================================
else

    local function getClientConfig()
        local ok, cfg = pcall(function() return exports['voltre-core']:GetConfig() end)
        if ok then return cfg end
        return nil
    end

    local function out(msg)
        print(msg)
    end

    local ClientSubs = {}

    ClientSubs.status = function()
        local dash = GlobalState.VoltreDashboardConfig
        local count = 0
        if type(dash) == "table" then for _ in pairs(dash) do count = count + 1 end end
        out("^7── VoltreConfig CLIENT ──")
        out(("^7  GlobalState.VoltreDashboardConfig: %s"):format(dash ~= nil and "^2SET^7" or "^1NIL^7"))
        out(("^7  client keys: %d"):format(count))
        out(("^7  voltre-core Config accessible: %s"):format(getClientConfig() and "^2YES^7" or "^1NO^7"))
        out(("^7  resource name: %s"):format(GetCurrentResourceName()))
    end

    ClientSubs.keys = function(filter)
        local dash = GlobalState.VoltreDashboardConfig or {}
        local keys = sortedKeys(dash)
        local shown, matched = 0, 0
        out(("^3── Client keys (filtre: %s) ──^7"):format(filter and filter ~= "" and filter or "aucun"))
        for _, k in ipairs(keys) do
            if matchesFilter(k, filter) then
                matched = matched + 1
                if shown < 60 then
                    out(("  %-55s = %s"):format(k, fmtValue(dash[k], 70)))
                    shown = shown + 1
                end
            end
        end
        out(("^3Total: %d / %d^7"):format(matched, #keys))
    end

    ClientSubs.dump = function(key)
        if not key then out("^1usage: /voltreconfig dump <clé>^7") return end
        local v = (GlobalState.VoltreDashboardConfig or {})[key]
        if v == nil then out(("^1clé '%s' absente (côté client)^7"):format(key))
        else out(("^2%s^7 = %s"):format(key, fmtValue(v, 300))) end
    end

    ClientSubs.verify = function()
        local dash = GlobalState.VoltreDashboardConfig or {}
        local target = getClientConfig()
        if not target then out("^1voltre-core Config inaccessible^7") return end
        local pass, fail, miss = 0, 0, 0
        local keys = sortedKeys(dash)
        for _, k in ipairs(keys) do
            local cur = resolvePath(target, k)
            if cur == nil then miss = miss + 1
            elseif valueEquals(dash[k], cur) then pass = pass + 1
            else
                fail = fail + 1
                if (pass + fail + miss) <= 100 then
                    out(("^1[FAIL]^7 %-55s dash=%s cur=%s"):format(k, fmtValue(dash[k], 50), fmtValue(cur, 50)))
                end
            end
        end
        out(("^3Résumé client: ^2PASS=%d ^1FAIL=%d ^3MISS=%d^7 (total=%d)"):format(pass, fail, miss, #keys))
    end

    ClientSubs.server = function(args)
        -- Relai: exécute la commande côté serveur et reçoit la réponse en chat
        TriggerServerEvent('voltre-loader:debug:runServerCmd', args)
    end

    RegisterCommand('voltreconfig', function(_, args)
        local sub = (args[1] or "status"):lower()
        if sub == "server" then
            -- /voltreconfig server <serverSub> ...
            local forward = {}
            for i = 2, #args do forward[#forward+1] = args[i] end
            ClientSubs.server(forward)
        elseif ClientSubs[sub] then
            ClientSubs[sub](args[2])
        else
            out("^1Sous-commandes: status | keys [filtre] | dump <clé> | verify | server <...>^7")
        end
    end, false)

    TriggerEvent('chat:addSuggestion', '/voltreconfig', 'Diagnostic config dashboard', {
        { name = "sous-commande", help = "status | keys | dump | verify | server" }
    })
end
