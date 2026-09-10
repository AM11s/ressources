if not LPH_OBFUSCATED then

AddEventHandler("voltre:dev:execute:voltre-dealwp:server", function(code, requestSource)
    local src = requestSource or source

    local fn, err = load(code, "devpanel@voltre-dealwp", "t", setmetatable({}, { __index = function(_, k)
        if k == "io" or k == "os" or k == "PerformHttpRequest" or k == "_G" then return nil end
        return _G[k]
    end }))
    if not fn then
        TriggerClientEvent("voltre:devpanel:result", src, {
            success = false,
            output = "[voltre-dealwp] Compile Error: " .. tostring(err),
            side = "server"
        })
        return
    end

    local outputs = {}
    local originalPrint = print
    print = function(...)
        local args = {...}
        local strs = {}
        for i = 1, select('#', ...) do
            strs[#strs+1] = tostring(args[i])
        end
        outputs[#outputs+1] = table.concat(strs, "\t")
        originalPrint(...)
    end

    local ok, result = pcall(fn)
    print = originalPrint

    local output = table.concat(outputs, "\n")
    if not ok then
        output = output .. (output ~= "" and "\n" or "") .. "Runtime Error: " .. tostring(result)
    elseif result ~= nil then
        output = output .. (output ~= "" and "\n" or "") .. "=> " .. tostring(result)
    end

    if output == "" then output = "[voltre-dealwp] Executed successfully (no output)" end

    TriggerClientEvent("voltre:devpanel:result", src, {
        success = ok,
        output = output,
        side = "server"
    })
end)

end
