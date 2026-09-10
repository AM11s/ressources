if LPH_OBFUSCATED then return end

if not Config.DevPanel or not Config.DevPanel.Enabled then return end

local Bob74Ipl = {}

local REGISTRY = {
    {id="michael",name="Michael's House",objName="Michael",category="GTA V",coords="-802.311, 175.056, 72.8446",loadType="LoadDefault",ipls={},interiorId=166657},
    {id="simeon",name="Simeon's Dealership",objName="Simeon",category="GTA V",coords="-47.16170, -1115.3327, 26.5",loadType="LoadDefault",ipls={"shr_int"},interiorId=7170},
    {id="franklin_aunt",name="Franklin's Aunt House",objName="FranklinAunt",category="GTA V",coords="-9.96562, -1438.54, 31.1015",loadType="LoadDefault",ipls={},interiorId=197633},
    {id="franklin",name="Franklin's House",objName="Franklin",category="GTA V",coords="7.6906, 538.4556, 176.047",loadType="LoadDefault",ipls={},interiorId=206849},
    {id="floyd",name="Floyd's Apartment",objName="Floyd",category="GTA V",coords="-1150.703, -1520.713, 10.633",loadType="LoadDefault",ipls={},interiorId=180481},
    {id="trevors_trailer",name="Trevor's Trailer",objName="TrevorsTrailer",category="GTA V",coords="1985.48132, 3828.76757, 32.5",loadType="LoadDefault",ipls={},interiorId=25601},
    {id="bahama_mamas",name="Bahama Mamas",objName="BahamaMamas",category="GTA V",coords="-1388.0013, -618.41967, 30.819599",loadType="Enable",ipls={"hei_sm_16_interior_v_bahama_milo_"},interiorId=148737},
    {id="pillbox_hospital",name="Pillbox Hospital",objName="PillboxHospital",category="GTA V",coords="307.1680, -590.807, 43.280",loadType="Enable",ipls={},interiorId=166913},
    {id="zancudo_gates",name="Zancudo Gates",objName="ZancudoGates",category="GTA V",coords="-1600.301, 2806.731, 18.79683",loadType="LoadDefault",ipls={},interiorId=nil},
    {id="ammunations",name="Ammunations",objName="Ammunations",category="GTA V",coords="247.2, -48.2, 70.1",loadType="LoadDefault",ipls={},interiorId=nil},
    {id="lester_factory",name="Lester's Factory",objName="LesterFactory",category="GTA V",coords="716.84, -962.05, 31.59",loadType="LoadDefault",ipls={},interiorId=92673},
    {id="stripclub",name="Vanilla Unicorn",objName="StripClub",category="GTA V",coords="128.6, -1298.7, 29.2",loadType="LoadDefault",ipls={},interiorId=197121},
    {id="graffitis",name="Graffitis",objName="Graffitis",category="GTA V",coords="0,0,0",loadType="Enable",ipls={},interiorId=nil},
    {id="ufo_hippie",name="UFO Hippie",objName=nil,category="GTA V",coords="2490.47729, 3774.84351, 2414.035",loadType="Enable",ipls={"ufo"},interiorId=nil,proxy="UFO.Hippie"},
    {id="ufo_chiliad",name="UFO Chiliad",objName=nil,category="GTA V",coords="501.5288, 5593.865, 796.2325",loadType="Enable",ipls={"ufo_eye"},interiorId=nil,proxy="UFO.Chiliad"},
    {id="ufo_zancudo",name="UFO Zancudo",objName=nil,category="GTA V",coords="-2051.99463, 3237.05835, 1456.97021",loadType="Enable",ipls={"ufo"},interiorId=nil,proxy="UFO.Zancudo"},
    {id="red_carpet",name="Red Carpet",objName="RedCarpet",category="GTA V",coords="300.5927, 199.7589, 104.3776",loadType="Enable",ipls={},interiorId=nil},
    {id="north_yankton",name="North Yankton",objName="NorthYankton",category="GTA V",coords="3217.697, -4834.826, 111.8152",loadType="Enable",ipls={"prologue01","prologue01c","prologue01d","prologue01e","prologue01f","prologue01g","prologue01h","prologue01i","prologue01j","prologue01k","prologue01l","prologue01m","prologue01n","prologue01o","prologue01p","prologue01q","prologue01r","prologue01s","prologue01t","prologue01u","prologue01v","prologue01w","prologue01x","prologue01y","prologue01z","prologue02","prologue03","prologue03b","prologue04","prologue04b","prologue05","prologue05b","prologue06","prologue06b","prologue06c","prologue07","prologue07b","prologue08","prologue08b","prologue09","prologue09b","prologue10","prologue10b","prologue11","prologue12","prologue13","prologue14","prologue15","prologue16","prologue17","prologue18","prologue19","prologue20","prologue21","prologue21b","prologue22","prologue23","prologue24","prologue25","prologue26","prologue27","prologue28","prologue29","prologue30","prologue31","prologue32","prologue33","prologue34","prologue35","prologue36","prologue37","prologue38","prologue39","prologue40","prologue41","prologue42","prologue43","prologue44","prologue45","prologue46","prologue47","prologue48","prologue49","prologue50","prologue51","prologue52","prologue53","prologue54","prologue55","prologue56","prologue57","prologue58","prologue59","prologue60","prologue61","prologue62","prologue63","prologue64","prologue65","prologue66","prologue67","prologue68","prologue69","prologue70","prologue71","prologue72","prologue73","prologue74","prologue75","prologue76","prologue77","prologue78","prologue79","prologue80","prologue81","prologue82","prologue83","prologue84","prologue85","prologue86","prologue87","prologue88","prologue89","prologue90","prologue91","prologue92","prologue93","prologue94","prologue95","prologue96","prologue97","prologue98","prologue99"},interiorId=nil},
    {id="gtao_apt_hi_1",name="4 Integrity Way, Apt 30",objName="GTAOApartmentHi1",category="GTA Online",coords="-35.31277, -580.4199, 88.71221",loadType="LoadDefault",ipls={},interiorId=149249},
    {id="gtao_apt_hi_2",name="Dell Perro Heights, Apt 7",objName="GTAOApartmentHi2",category="GTA Online",coords="-1477.14, -538.7499, 55.5264",loadType="LoadDefault",ipls={},interiorId=149505},
    {id="gtao_house_hi_1",name="3655 Wild Oats Drive",objName="GTAOHouseHi1",category="GTA Online",coords="-169.286, 486.4938, 137.4436",loadType="LoadDefault",ipls={},interiorId=165377},
    {id="gtao_house_hi_2",name="2044 North Conker Avenue",objName="GTAOHouseHi2",category="GTA Online",coords="340.9412, 437.1798, 149.3925",loadType="LoadDefault",ipls={},interiorId=165633},
    {id="gtao_house_hi_3",name="2045 North Conker Avenue",objName="GTAOHouseHi3",category="GTA Online",coords="373.023, 416.105, 145.7006",loadType="LoadDefault",ipls={},interiorId=165889},
    {id="gtao_house_hi_4",name="2862 Hillcrest Avenue",objName="GTAOHouseHi4",category="GTA Online",coords="-676.127, 588.612, 145.1698",loadType="LoadDefault",ipls={},interiorId=166145},
    {id="gtao_house_hi_5",name="2868 Hillcrest Avenue",objName="GTAOHouseHi5",category="GTA Online",coords="-763.107, 615.906, 144.1401",loadType="LoadDefault",ipls={},interiorId=166401},
    {id="gtao_house_hi_6",name="2874 Hillcrest Avenue",objName="GTAOHouseHi6",category="GTA Online",coords="-857.798, 682.563, 152.6529",loadType="LoadDefault",ipls={},interiorId=166657},
    {id="gtao_house_hi_7",name="2677 Whispymound Drive",objName="GTAOHouseHi7",category="GTA Online",coords="120.5, 549.952, 184.097",loadType="LoadDefault",ipls={},interiorId=166913},
    {id="gtao_house_hi_8",name="2133 Mad Wayne Thunder",objName="GTAOHouseHi8",category="GTA Online",coords="-1288, 440.748, 97.69459",loadType="LoadDefault",ipls={},interiorId=167169},
    {id="gtao_house_mid_1",name="House Mid 1",objName="GTAOHouseMid1",category="GTA Online",coords="347.2686, -999.2955, -99.19622",loadType="LoadDefault",ipls={},interiorId=163073},
    {id="gtao_house_low_1",name="House Low 1",objName="GTAOHouseLow1",category="GTA Online",coords="261.4586, -998.8196, -99.00863",loadType="LoadDefault",ipls={},interiorId=163329},
    {id="hl_apt_1",name="Dell Perro Heights, Apt 4",objName="HLApartment1",category="High Life",coords="-1468.14, -541.815, 73.4442",loadType="LoadDefault",ipls={},interiorId=146945},
    {id="hl_apt_2",name="Richard Majestic, Apt 2",objName="HLApartment2",category="High Life",coords="-915.811, -379.432, 113.6748",loadType="LoadDefault",ipls={},interiorId=147201},
    {id="hl_apt_3",name="Tinsel Towers, Apt 42",objName="HLApartment3",category="High Life",coords="-614.86, 40.6783, 97.60007",loadType="LoadDefault",ipls={},interiorId=147457},
    {id="hl_apt_4",name="Eclipse Towers, Apt 3",objName="HLApartment4",category="High Life",coords="-773.407, 341.766, 211.397",loadType="LoadDefault",ipls={},interiorId=147713},
    {id="hl_apt_5",name="4 Integrity Way, Apt 28",objName="HLApartment5",category="High Life",coords="-18.07856, -583.6725, 79.46569",loadType="LoadDefault",ipls={},interiorId=147969},
    {id="hl_apt_6",name="High Life Apt 6",objName="HLApartment6",category="High Life",coords="-609.5669, 51.28212, -183.9808",loadType="LoadDefault",ipls={},interiorId=148225},
    {id="heist_carrier",name="Aircraft Carrier",objName="HeistCarrier",category="Heists",coords="3082.3117, -4717.1191, 15.2622",loadType="Enable",ipls={},interiorId=nil},
    {id="heist_yacht",name="Heist Yacht",objName="HeistYacht",category="Heists",coords="-2043.974, -1031.582, 11.981",loadType="LoadDefault",ipls={},interiorId=nil},
    {id="exec_apt_1",name="Eclipse Towers, Penthouse 1",objName="ExecApartment1",category="Executives",coords="-787.7805, 334.9232, 215.8384",loadType="LoadDefault",ipls={},interiorId=158209},
    {id="exec_apt_2",name="Eclipse Towers, Penthouse 2",objName="ExecApartment2",category="Executives",coords="-773.2258, 322.8252, 194.8862",loadType="LoadDefault",ipls={},interiorId=158465},
    {id="exec_apt_3",name="Eclipse Towers, Penthouse 3",objName="ExecApartment3",category="Executives",coords="-787.7805, 334.9232, 186.1134",loadType="LoadDefault",ipls={},interiorId=158721},
    {id="finance_office_1",name="Arcadius Office",objName="FinanceOffice1",category="Finance",coords="-141.1987, -620.913, 168.8205",loadType="LoadDefault",ipls={"ex_dt1_02_office_01a","ex_dt1_02_office_01b","ex_dt1_02_office_01c","ex_dt1_02_office_02a","ex_dt1_02_office_02b","ex_dt1_02_office_02c","ex_dt1_02_office_03a","ex_dt1_02_office_03b","ex_dt1_02_office_03c"},interiorId=236289},
    {id="finance_office_2",name="Maze Bank Office",objName="FinanceOffice2",category="Finance",coords="-75.8466, -826.9893, 243.3859",loadType="LoadDefault",ipls={},interiorId=nil},
    {id="finance_office_3",name="Lom Bank Office",objName="FinanceOffice3",category="Finance",coords="-1579.756, -565.0661, 108.523",loadType="LoadDefault",ipls={},interiorId=nil},
    {id="finance_office_4",name="Maze Bank West Office",objName="FinanceOffice4",category="Finance",coords="-1392.667, -480.4736, 72.04217",loadType="LoadDefault",ipls={},interiorId=nil},
    {id="biker_cocaine",name="Cocaine Lockup",objName="BikerCocaine",category="Bikers",coords="1093.6, -3196.6, -38.99841",loadType="LoadDefault",ipls={},interiorId=247553},
    {id="biker_counterfeit",name="Counterfeit Factory",objName="BikerCounterfeit",category="Bikers",coords="1121.897, -3195.338, -40.4025",loadType="LoadDefault",ipls={},interiorId=247809},
    {id="biker_documents",name="Document Forgery",objName="BikerDocumentForgery",category="Bikers",coords="1165, -3196.6, -39.01306",loadType="LoadDefault",ipls={},interiorId=248065},
    {id="biker_meth",name="Meth Lab",objName="BikerMethLab",category="Bikers",coords="1009.5, -3196.6, -38.99682",loadType="LoadDefault",ipls={},interiorId=248321},
    {id="biker_weed",name="Weed Farm",objName="BikerWeedFarm",category="Bikers",coords="1051.491, -3196.536, -39.14842",loadType="LoadDefault",ipls={},interiorId=248577},
    {id="biker_clubhouse_1",name="Clubhouse 1",objName="BikerClubhouse1",category="Bikers",coords="1107.04, -3157.399, -37.51859",loadType="LoadDefault",ipls={"bkr_biker_interior_placement_interior_0_biker_dlc_int_01_milo"},interiorId=246273},
    {id="biker_clubhouse_2",name="Clubhouse 2",objName="BikerClubhouse2",category="Bikers",coords="998.4809, -3164.711, -38.90733",loadType="LoadDefault",ipls={"bkr_biker_interior_placement_interior_1_biker_dlc_int_02_milo"},interiorId=246529},
    {id="import_garage_1",name="CEO Garage 1 (Arcadius)",objName="ImportCEOGarage1",category="Import/Export",coords="-141.1987, -620.913, 168.8205",loadType="LoadDefault",ipls={},interiorId=nil},
    {id="import_garage_2",name="CEO Garage 2 (Maze Bank)",objName="ImportCEOGarage2",category="Import/Export",coords="-75.8466, -826.9893, 243.3859",loadType="LoadDefault",ipls={},interiorId=nil},
    {id="import_garage_3",name="CEO Garage 3 (Lom Bank)",objName="ImportCEOGarage3",category="Import/Export",coords="-1579.756, -565.0661, 108.523",loadType="LoadDefault",ipls={},interiorId=nil},
    {id="import_garage_4",name="CEO Garage 4 (Maze Bank West)",objName="ImportCEOGarage4",category="Import/Export",coords="-1392.667, -480.4736, 72.04217",loadType="LoadDefault",ipls={},interiorId=nil},
    {id="import_warehouse",name="Vehicle Warehouse",objName="ImportVehicleWarehouse",category="Import/Export",coords="994.5925, -3002.594, -39.64699",loadType="LoadDefault",ipls={},interiorId=nil},
    {id="gunrunning_bunker",name="Bunker",objName="GunrunningBunker",category="Gunrunning",coords="892.6384, -3245.8664, -98.2645",loadType="LoadDefault",ipls={},interiorId=258561},
    {id="gunrunning_yacht",name="Yacht",objName="GunrunningYacht",category="Gunrunning",coords="-1363.724, 6734.108, 2.44598",loadType="LoadDefault",ipls={},interiorId=nil},
    {id="smuggler_hangar",name="Hangar",objName="SmugglerHangar",category="Smuggler",coords="-1267.0, -3013.135, -49.5",loadType="LoadDefault",ipls={},interiorId=260353},
    {id="doomsday_facility",name="Facility",objName="DoomsdayFacility",category="Doomsday",coords="400.0, 5000.0, 0.0",loadType="LoadDefault",ipls={},interiorId=269313},
    {id="afterhours_nightclub",name="Nightclub",objName="AfterHoursNightclubs",category="After Hours",coords="-1604.664, -3012.583, -78.000",loadType="LoadDefault",ipls={},interiorId=271617},
    {id="diamond_casino",name="Diamond Casino",objName="DiamondCasino",category="Casino",coords="1100.000, 220.000, -50.000",loadType="LoadDefault",ipls={},interiorId=275201},
    {id="diamond_penthouse",name="Casino Penthouse",objName="DiamondPenthouse",category="Casino",coords="976.636, 70.295, 115.164",loadType="LoadDefault",ipls={},interiorId=275457},
    {id="tuner_garage",name="Auto Shop",objName="TunerGarage",category="Tuners",coords="-1350.0, 160.0, -100.0",loadType="LoadDefault",ipls={},interiorId=285953},
    {id="tuner_methlab",name="Meth Lab",objName="TunerMethLab",category="Tuners",coords="981.9999, -143.0, -50.0",loadType="LoadDefault",ipls={},interiorId=nil},
    {id="tuner_meetup",name="Car Meet",objName="TunerMeetup",category="Tuners",coords="-2000.0, 1113.211, -25.36243",loadType="LoadDefault",ipls={},interiorId=286209},
    {id="mpsecurity_garage",name="Agency Garage",objName="MpSecurityGarage",category="The Contract",coords="-1071.4387, -77.033875, -93.525505",loadType="LoadDefault",ipls={},interiorId=nil},
    {id="mpsecurity_rooftop",name="Music Rooftop",objName="MpSecurityMusicRoofTop",category="The Contract",coords="-592.6896, 273.1052, 116.302444",loadType="LoadDefault",ipls={},interiorId=nil},
    {id="mpsecurity_studio",name="Record Studio",objName="MpSecurityStudio",category="The Contract",coords="-1000.7252, -70.559875, -98.10669",loadType="LoadDefault",ipls={},interiorId=nil},
    {id="mpsecurity_billboards",name="Billboards",objName="MpSecurityBillboards",category="The Contract",coords="-592.6896, 273.1052, 116.302444",loadType="LoadDefault",ipls={},interiorId=nil},
    {id="mpsecurity_office_1",name="Agency Office 1",objName="MpSecurityOffice1",category="The Contract",coords="-1021.86084, -427.74564, 68.95764",loadType="LoadDefault",ipls={},interiorId=nil},
    {id="mpsecurity_office_2",name="Agency Office 2",objName="MpSecurityOffice2",category="The Contract",coords="383.4156, -59.878227, 108.4595",loadType="LoadDefault",ipls={},interiorId=nil},
    {id="mpsecurity_office_3",name="Agency Office 3",objName="MpSecurityOffice3",category="The Contract",coords="-1004.23035, -761.2084, 66.99069",loadType="LoadDefault",ipls={},interiorId=nil},
    {id="mpsecurity_office_4",name="Agency Office 4",objName="MpSecurityOffice4",category="The Contract",coords="-587.87213, -716.84937, 118.10156",loadType="LoadDefault",ipls={},interiorId=nil},
    {id="crim_simeonfix",name="Simeon Fix",objName="CriminalEnterpriseSmeonFix",category="Criminal Enterprise",coords="-50.2248, -1098.8325, 26.049742",loadType="LoadDefault",ipls={},interiorId=nil},
    {id="crim_vehicle_warehouse",name="Vehicle Warehouse",objName="CriminalEnterpriseVehicleWarehouse",category="Criminal Enterprise",coords="800.13696, -3001.4297, -65.14074",loadType="LoadDefault",ipls={},interiorId=nil},
    {id="crim_warehouse",name="Warehouse",objName="CriminalEnterpriseWarehouse",category="Criminal Enterprise",coords="849.1047, -3000.209, -45.974354",loadType="LoadDefault",ipls={},interiorId=nil},
    {id="cargoship",name="Cargo Ship",objName="CargoShip",category="GTA V",coords="1639.7, 2787.9, 35.5",loadType="LoadDefault",ipls={},interiorId=nil},
    {id="diamond_arcade",name="Arcade",objName="DiamondArcade",category="Casino",coords="2732.0, -380.0, -50.0",loadType="LoadDefault",ipls={},interiorId=nil},
    {id="diamond_arcade_bsm",name="Arcade Basement",objName="DiamondArcadeBasement",category="Casino",coords="2710.0, -380.0, -50.0",loadType="LoadDefault",ipls={},interiorId=nil},
    {id="agents_factory",name="Agents Factory",objName="AgentsFactory",category="Agents",coords="752.31, -997.24, -47.0",loadType="LoadDefault",ipls={},interiorId=nil},
    {id="agents_office",name="Agents Office",objName="AgentsOffice",category="Agents",coords="2149.71, 4787.76, -47.0",loadType="LoadDefault",ipls={},interiorId=nil},
    {id="agents_airstrip",name="Agents Airstrip",objName="AgentsAirstrip",category="Agents",coords="-2106.98, 1468.31, 282.0",loadType="LoadDefault",ipls={},interiorId=nil},
    {id="agents_hangar_door",name="Agents Hangar Door",objName="AgentsHangarDoor",category="Agents",coords="-2632.43, 2963.23, 8.5",loadType="LoadDefault",ipls={},interiorId=nil},
    {id="money_carwash",name="Car Wash",objName="MoneyCarwash",category="Money Fronts",coords="26.074, -1398.979, -75.0",loadType="LoadDefault",ipls={},interiorId=nil},
    {id="money_office",name="Money Office",objName="MoneyOffice",category="Money Fronts",coords="-1160.493, -1538.932, -50.0",loadType="LoadDefault",ipls={},interiorId=nil},
    {id="mansion_1",name="Mansion 1",objName="Mansion1",category="Safehouse Hills",coords="543.852, 712.754, 201.0",loadType="LoadDefault",ipls={},interiorId=nil},
    {id="mansion_2",name="Mansion 2",objName="Mansion2",category="Safehouse Hills",coords="-1630.434, 470.852, 128.0",loadType="LoadDefault",ipls={},interiorId=nil},
    {id="mansion_3",name="Mansion 3",objName="Mansion3",category="Safehouse Hills",coords="-2601.712, 1874.826, 166.0",loadType="LoadDefault",ipls={},interiorId=nil},
    {id="mansion_bsm_1",name="Mansion Basement 1",objName="MansionBasement1",category="Safehouse Hills",coords="543.852, 712.754, 170.0",loadType="LoadDefault",ipls={},interiorId=nil},
    {id="mansion_bsm_2",name="Mansion Basement 2",objName="MansionBasement2",category="Safehouse Hills",coords="-1630.434, 470.852, 97.0",loadType="LoadDefault",ipls={},interiorId=nil},
    {id="mansion_bsm_3",name="Mansion Basement 3",objName="MansionBasement3",category="Safehouse Hills",coords="-2601.712, 1874.826, 135.0",loadType="LoadDefault",ipls={},interiorId=nil},
}

local BY_ID = {}
for _, e in ipairs(REGISTRY) do BY_ID[e.id] = e end

local function IsAnyIplActive(ipls)
    for _, ipl in ipairs(ipls) do if IsIplActive(ipl) then return true end end
    return false
end

local function GetGlobalObj(objName, proxy)
    if proxy then
        local parts = {}
        for part in string.gmatch(proxy, "[^.]+") do parts[#parts+1] = part end
        local obj = _G[parts[1]]
        for i = 2, #parts do if not obj then break end obj = obj[parts[i]] end
        if obj then return obj end
        local exportName = "Get" .. parts[1] .. "Object"
        local ok, result = pcall(function()
            return exports["bob74_ipl"][exportName]()
        end)
        if ok and result then
            obj = result
            for i = 2, #parts do if not obj then break end obj = obj[parts[i]] end
            return obj
        end
        return nil
    end
    local obj = _G[objName]
    if obj then return obj end
    local exportName = "Get" .. objName .. "Object"
    local ok, result = pcall(function()
        return exports["bob74_ipl"][exportName]()
    end)
    if ok then return result end
    return nil
end

local function ParseCoords(coordsStr)
    local x, y, z = coordsStr:match("([-%d.]+),%s*([-%d.]+),%s*([-%d.]+)")
    return tonumber(x), tonumber(y), tonumber(z)
end

function Bob74Ipl.GetList()
    local list = {}
    for _, e in ipairs(REGISTRY) do
        local loaded = false
        local obj = GetGlobalObj(e.objName, e.proxy)
        if #e.ipls > 0 then
            loaded = IsAnyIplActive(e.ipls)
        elseif e.interiorId then
            loaded = IsInteriorReady(e.interiorId)
        end
        table.insert(list, {
            id = e.id, name = e.name, category = e.category,
            coords = e.coords, loaded = loaded,
            hasOptions = obj ~= nil and (obj.Style or obj.Walls or obj.Swag or obj.Details or obj.Bed or obj.Garage or obj.Shutter) ~= nil
        })
    end
    return list
end

function Bob74Ipl.GetEntry(id)
    return BY_ID[id]
end

function Bob74Ipl.Load(id)
    local e = BY_ID[id]
    if not e then return false, "Unknown interior" end
    local obj = GetGlobalObj(e.objName, e.proxy)
    if e.loadType == "LoadDefault" and obj and obj.LoadDefault then
        obj.LoadDefault()
        return true, e.name .. " loaded (LoadDefault)"
    elseif e.loadType == "Enable" and obj and obj.Enable then
        obj.Enable(true)
        return true, e.name .. " enabled"
    elseif #e.ipls > 0 then
        exports["bob74_ipl"]:EnableIpl(e.ipls, true)
        return true, e.name .. " loaded via IPL"
    end
    return false, "No load method available for " .. e.name
end

function Bob74Ipl.Unload(id)
    local e = BY_ID[id]
    if not e then return false, "Unknown interior" end
    local obj = GetGlobalObj(e.objName, e.proxy)
    if e.loadType == "LoadDefault" and obj and obj.Ipl and obj.Ipl.Interior and obj.Ipl.Interior.Remove then
        obj.Ipl.Interior.Remove()
        return true, e.name .. " unloaded (Remove)"
    elseif e.loadType == "Enable" and obj and obj.Enable then
        obj.Enable(false)
        return true, e.name .. " disabled"
    elseif #e.ipls > 0 then
        exports["bob74_ipl"]:EnableIpl(e.ipls, false)
        return true, e.name .. " unloaded via IPL"
    end
    return false, "No unload method available for " .. e.name
end

function Bob74Ipl.Teleport(id)
    local e = BY_ID[id]
    if not e then return false, "Unknown interior" end
    local x, y, z = ParseCoords(e.coords)
    if not x then return false, "Invalid coords" end
    SetEntityCoords(PlayerPedId(), x, y, z, false, false, false, true)
    return true, string.format("Teleported to %s (%.2f, %.2f, %.2f)", e.name, x, y, z)
end

function Bob74Ipl.GetOptions(id)
    local e = BY_ID[id]
    if not e then return {} end
    local obj = GetGlobalObj(e.objName, e.proxy)
    if not obj then return {} end
    local opts = {}

    local function addSelectChoices(sub, prefix)
        local choices = {}
        for k, v in pairs(sub) do
            if type(v) == "string" and k ~= "none" then
                table.insert(choices, {value = k, label = k})
            elseif type(v) == "table" and k ~= "Set" and k ~= "Clear" and k ~= "Enable" and k ~= "Theme" then
                table.insert(choices, {value = k, label = k})
            end
        end
        if #choices > 0 then
            local hasColor = sub.Color ~= nil
            local colorChoices = {}
            if hasColor then
                for kc, vc in pairs(sub.Color) do
                    if type(vc) == "number" then
                        table.insert(colorChoices, {value = vc, label = kc})
                    end
                end
            end
            table.insert(opts, {key = prefix, label = prefix:gsub("^%l", string.upper), type = "select", choices = choices, hasColor = hasColor, colorChoices = colorChoices})
        end
    end

    -- Style with Theme (Finance offices, Exec apartments)
    if obj.Style and obj.Style.Theme then
        local choices = {}
        for k, v in pairs(obj.Style.Theme) do
            if type(v) == "table" then
                table.insert(choices, {value = k, label = k})
            end
        end
        table.insert(opts, {key = "style", label = "Style", type = "select", choices = choices})
    end

    -- Style without Theme (Biker businesses, etc.)
    if obj.Style and obj.Style.Set and not obj.Style.Theme then
        addSelectChoices(obj.Style, "style")
    end

    -- Security (Biker businesses)
    if obj.Security and obj.Security.Set then
        addSelectChoices(obj.Security, "security")
    end

    -- Interior variants (TrevorsTrailer, etc.)
    if obj.Interior and obj.Interior.Set then
        addSelectChoices(obj.Interior, "interior")
    end

    -- Selectable groups with .Set
    local selectableGroups = {"Walls", "Furnitures", "Decoration", "Mural", "Bed", "Chairs", "Booze", "Pattern", "SpaBar", "MediaBar", "Dealer"}
    for _, g in ipairs(selectableGroups) do
        local sub = obj[g]
        if sub and sub.Set then
            addSelectChoices(sub, g:lower())
        elseif obj.Interior and obj.Interior[g] and obj.Interior[g].Set then
            addSelectChoices(obj.Interior[g], g:lower())
        end
    end

    -- Plant1-9 (Biker Weed Farm)
    for i = 1, 9 do
        local plant = obj["Plant" .. i]
        if plant then
            if plant.Stage and plant.Stage.Set then
                addSelectChoices(plant.Stage, "plant" .. i .. ".stage")
            end
            if plant.Light and plant.Light.Set then
                addSelectChoices(plant.Light, "plant" .. i .. ".light")
            end
            if plant.Hose and plant.Hose.Enable then
                table.insert(opts, {key = "plant" .. i .. ".hose", label = "Plant " .. i .. " Hose", type = "toggle"})
            end
        end
    end

    -- GunLocker, ModBooth, Meth, Cash, Weed, Coke, Counterfeit, Documents
    local stashGroups = {"GunLocker", "ModBooth", "Meth", "Cash", "Weed", "Coke", "Counterfeit", "Documents"}
    for _, g in ipairs(stashGroups) do
        local sub = obj[g]
        if sub and sub.Set then
            addSelectChoices(sub, g:lower())
        end
    end

    -- Toggles via Details.Enable
    if obj.Details and obj.Details.Enable then
        for k, v in pairs(obj.Details) do
            if type(v) == "string" then
                table.insert(opts, {key = "details." .. k, label = k, type = "toggle"})
            end
        end
    end

    -- Toggles via Garage.Enable
    if obj.Garage and obj.Garage.Enable then
        for k, v in pairs(obj.Garage) do
            if type(v) == "string" then
                table.insert(opts, {key = "garage." .. k, label = k, type = "toggle"})
            end
        end
    end

    -- Swag sub-categories
    if obj.Swag and obj.Swag.Enable then
        for k, v in pairs(obj.Swag) do
            if type(v) == "table" then
                local choices = {}
                for sk, sv in pairs(v) do
                    if type(sv) == "string" then
                        table.insert(choices, {value = sv, label = sk})
                    end
                end
                if #choices > 0 then
                    table.insert(opts, {key = "swag." .. k:lower(), label = k, type = "select", choices = choices})
                end
            end
        end
    end

    -- Colors
    if obj.Colors then
        local colorChoices = {}
        for k, v in pairs(obj.Colors) do
            if type(v) == "number" then
                table.insert(colorChoices, {value = v, label = k})
            end
        end
        if #colorChoices > 0 then
            table.insert(opts, {key = "colors", label = "Color", type = "color", choices = colorChoices})
        end
    end

    return opts
end

function Bob74Ipl.SetOption(id, key, value, extra)
    local e = BY_ID[id]
    if not e then return false, "Unknown interior" end
    local obj = GetGlobalObj(e.objName, e.proxy)
    if not obj then return false, "No object" end

    -- Style with Theme
    if key == "style" and obj.Style and obj.Style.Set then
        if obj.Style.Theme and obj.Style.Theme[value] then
            obj.Style.Set(obj.Style.Theme[value], true)
            return true, "Style set to " .. value
        end
        -- Simple style (string or table value)
        if obj.Style[value] ~= nil then
            local val = obj.Style[value]
            if type(val) == "table" then
                obj.Style.Set(val, true)
            elseif type(val) == "string" then
                obj.Style.Set(val, true)
            end
            return true, "Style set to " .. value
        end
    end

    -- Security
    if key == "security" and obj.Security and obj.Security.Set then
        if obj.Security[value] ~= nil then
            local val = obj.Security[value]
            if type(val) == "string" then
                obj.Security.Set(val, true)
                return true, "Security set to " .. value
            end
        end
    end

    -- Interior
    if key == "interior" and obj.Interior and obj.Interior.Set then
        obj.Interior.Set(value, true)
        return true, "Interior set"
    end

    -- Colors
    if key == "colors" then
        if obj.Interior and obj.Interior.Walls and obj.Interior.Walls.SetColor then
            obj.Interior.Walls.SetColor(value, true)
            return true, "Color set"
        end
        if obj.Walls and obj.Walls.Set and type(value) == "number" then
            SetInteriorEntitySetColor(obj.interiorId, obj.Walls.brick, value)
            RefreshInterior(obj.interiorId)
            return true, "Color set"
        end
    end

    -- Plant Stage/Light/Hose
    local plantNum, plantProp = key:match("^plant(%d)%.(.+)$")
    if plantNum then
        local plant = obj["Plant" .. plantNum]
        if plant then
            if plantProp == "stage" and plant.Stage and plant.Stage.Set and plant.Stage[value] then
                plant.Stage.Set(plant.Stage[value], true)
                return true, "Plant " .. plantNum .. " stage set"
            end
            if plantProp == "light" and plant.Light and plant.Light.Set and plant.Light[value] then
                plant.Light.Set(plant.Light[value], true)
                return true, "Plant " .. plantNum .. " light set"
            end
            if plantProp == "hose" and plant.Hose and plant.Hose.Enable then
                plant.Hose.Enable(value == true or value == "true", true)
                return true, "Plant " .. plantNum .. " hose toggled"
            end
        end
    end

    -- Generic select groups
    local selectMap = {
        walls = "Walls", furnitures = "Furnitures", decoration = "Decoration",
        mural = "Mural", bed = "Bed", chairs = "Chairs", booze = "Booze",
        pattern = "Interior.Pattern", spabar = "Interior.SpaBar",
        mediabar = "Interior.MediaBar", dealer = "Interior.Dealer",
        gunlocker = "GunLocker", modbooth = "ModBooth",
        meth = "Meth", cash = "Cash", weed = "Weed", coke = "Coke",
        counterfeit = "Counterfeit", documents = "Documents"
    }

    if selectMap[key] then
        local parts = {}
        for part in string.gmatch(selectMap[key], "[^.]+") do table.insert(parts, part) end
        local sub = obj
        for _, p in ipairs(parts) do sub = sub[p] end
        if sub and sub.Set then
            local val = value
            if sub[value] ~= nil then
                val = sub[value]
            end
            if extra and (key == "walls" or key == "furnitures") and sub.Color then
                sub.Set(val, extra, true)
                return true, key .. " set with color"
            else
                sub.Set(val, true)
                return true, key .. " set"
            end
        end
    end

    -- Toggle via Details
    if key:sub(1, 9) == "details." then
        local prop = key:sub(10)
        if obj.Details and obj.Details.Enable and obj.Details[prop] then
            obj.Details.Enable(obj.Details[prop], value, true)
            return true, prop .. " " .. (value and "enabled" or "disabled")
        end
    end

    -- Toggle via Garage
    if key:sub(1, 8) == "garage." then
        local prop = key:sub(9)
        if obj.Garage and obj.Garage.Enable and obj.Garage[prop] then
            obj.Garage.Enable(obj.Garage[prop], value, true)
            return true, prop .. " " .. (value and "enabled" or "disabled")
        end
    end

    -- Swag via sub-category
    if key:sub(1, 6) == "swag." then
        local prop = key:sub(7)
        if obj.Swag and obj.Swag.Enable and obj.Swag[prop] then
            obj.Swag.Enable(obj.Swag[prop], true, true)
            return true, prop .. " swag set"
        end
    end

    return false, "Unknown option: " .. key
end

-- Expose for devpanel
Bob74Ipl.Registry = REGISTRY
_G.Bob74Ipl = Bob74Ipl
