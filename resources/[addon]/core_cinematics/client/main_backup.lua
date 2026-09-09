--[[
░▒▓████████▓▒░▒▓██████▓▒░       ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓███████▓▒░  
   ░▒▓█▓▒░  ░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ 
   ░▒▓█▓▒░  ░▒▓█▓▒░             ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ 
   ░▒▓█▓▒░  ░▒▓█▓▒░             ░▒▓████████▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓███████▓▒░  
   ░▒▓█▓▒░  ░▒▓█▓▒░             ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ 
   ░▒▓█▓▒░  ░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ 
   ░▒▓█▓▒░   ░▒▓██████▓▒░       ░▒▓█▓▒░░▒▓█▓▒░░▒▓██████▓▒░░▒▓███████▓▒░  
                                                                         
 This File Leaked By TC HUB Team, Join Our Server For More
 DISCORD: - https://discord.gg/k3S8RjkPWc - https://t.me/+RgDxwPX3L7w2ODBk - https://tchub.shop/
--]]

local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1, L45_1, L46_1, L47_1, L48_1, L49_1, L50_1, L51_1, L52_1, L53_1, L54_1, L55_1, L56_1, L57_1, L58_1, L59_1, L60_1, L61_1, L62_1, L63_1, L64_1, L65_1, L66_1, L67_1, L68_1, L69_1, L70_1, L71_1, L72_1, L73_1, L74_1, L75_1, L76_1, L77_1, L78_1, L79_1, L80_1, L81_1, L82_1
L0_1 = false
L1_1 = false
L2_1 = false
L3_1 = nil
L4_1 = {}
L5_1 = 0
L6_1 = 0.0
L7_1 = Config
L7_1 = L7_1.DefaultFPS
L7_1 = L7_1 * 30
L8_1 = {}
L9_1 = 1
L10_1 = 1
L11_1 = 0
L12_1 = nil
L13_1 = {}
L14_1 = Config
L14_1 = L14_1.DefaultInterpolationMode
if not L14_1 then
  L14_1 = "eased"
end
L13_1.mode = L14_1
L13_1.tension = 0.0
L13_1.spring = 0.0
L14_1 = {}
L15_1 = false
L16_1 = {}
L17_1 = {}
L18_1 = {}
L19_1 = false
L20_1 = false
L21_1 = false
L22_1 = 0.0
L23_1 = nil
L24_1 = 0.0
L25_1 = {}
L26_1 = {}
L27_1 = {}
L28_1 = {}
L29_1 = {}
L30_1 = {}
L31_1 = {}
L32_1 = {}
L33_1 = {}
L34_1 = {}
L35_1 = {}
L36_1 = {}
L37_1 = {}
L38_1 = {}
L39_1 = 10
L40_1 = {}
L41_1 = nil
L42_1 = false
L43_1 = nil
L44_1 = {}
L45_1 = {}
L46_1 = {}
L47_1 = {}
L48_1 = {}
L49_1 = nil
L50_1 = nil
L51_1 = false
L52_1 = false
L53_1 = 4.0
L54_1 = {}
L55_1 = 0
L56_1 = true
L57_1 = 1.0
L58_1 = nil
L59_1 = nil
L60_1 = nil
L61_1 = nil
L62_1 = nil
L63_1 = {}
L64_1 = ipairs
L65_1 = Config
L65_1 = L65_1.Fonts
if not L65_1 then
  L65_1 = {}
end
L64_1, L65_1, L66_1, L67_1 = L64_1(L65_1)
for L68_1, L69_1 in L64_1, L65_1, L66_1, L67_1 do
  L70_1 = L69_1.url
  if L70_1 then
    L70_1 = L69_1.family
    L71_1 = L69_1.url
    L63_1[L70_1] = L71_1
  end
end
function L64_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = A1_2 - A0_2
  L3_2 = L3_2 % 360.0
  L4_2 = 180.0
  if L3_2 > L4_2 then
    L3_2 = L3_2 - 360.0
  end
  L4_2 = L3_2 * A2_2
  L4_2 = A0_2 + L4_2
  return L4_2
end
lerpAngle = L64_1
function L64_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = A1_2 - A0_2
  L3_2 = L3_2 % 24.0
  if L3_2 > 12.0 then
    L3_2 = L3_2 - 24.0
  end
  L4_2 = L3_2 * A2_2
  L4_2 = A0_2 + L4_2
  L4_2 = L4_2 % 24.0
  return L4_2
end
lerpTime = L64_1
function L64_1(A0_2)
  local L1_2
  L1_2 = A0_2 or nil
  if not A0_2 then
    L1_2 = Config
    L1_2 = L1_2.DefaultFov
  end
  L1_2 = L1_2 + 0.001
  return L1_2
end
fv = L64_1
function L64_1(A0_2)
  local L1_2
  if "easein" == A0_2 then
    L1_2 = 1
    return L1_2
  elseif "easeout" == A0_2 then
    L1_2 = 2
    return L1_2
  elseif "ease" == A0_2 then
    L1_2 = 3
    return L1_2
  else
    L1_2 = 0
    return L1_2
  end
end
easingToCurveType = L64_1
L64_1 = {}
L64_1.time = 12.0
L64_1.freezeTime = false
L64_1.weather = "CLEAR"
L64_1.weatherOverride = true
L64_1.rainEnabled = false
L64_1.rainLevel = 0.0
L64_1.windSpeed = 0.0
L64_1.cityLights = false
function L65_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = math
  L1_2 = L1_2.floor
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = A0_2 - L1_2
  L3_2 = L3_2 * 60
  L2_2 = L2_2(L3_2)
  L3_2 = NetworkOverrideClockTime
  L4_2 = L1_2
  L5_2 = L2_2
  L6_2 = 0
  L3_2(L4_2, L5_2, L6_2)
end
applyGameTime = L65_1
L65_1 = RegisterNetEvent
L66_1 = "core_cinematics:permOk"
L65_1(L66_1)
L65_1 = RegisterNetEvent
L66_1 = "core_cinematics:permDenied"
L65_1(L66_1)
L65_1 = RegisterCommand
L66_1 = "cinematics"
function L67_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2[1]
  if "record" == L2_2 then
    L3_2 = startVehicleRecording
    L3_2()
  elseif "stop" == L2_2 then
    L3_2 = stopVehicleRecording
    L3_2()
  elseif "clear" == L2_2 then
    L3_2 = false
    L15_1 = L3_2
    L3_2 = {}
    L14_1 = L3_2
    L3_2 = {}
    L26_1 = L3_2
    L3_2 = print
    L4_2 = _L
    L5_2 = "lua.notify.recordings_cleared"
    L4_2, L5_2 = L4_2(L5_2)
    L3_2(L4_2, L5_2)
  elseif "preview" == L2_2 then
    L3_2 = L51_1
    if L3_2 then
      L3_2 = L4_1
      L3_2 = #L3_2
      if not (L3_2 < 2) then
        goto lbl_43
      end
    end
    L3_2 = print
    L4_2 = _L
    L5_2 = "lua.notify.preview_no_prop_or_keyframes"
    L4_2, L5_2 = L4_2(L5_2)
    L3_2(L4_2, L5_2)
    do return end
    ::lbl_43::
    L3_2 = L52_1
    if L3_2 then
      L3_2 = false
      L52_1 = L3_2
      L3_2 = print
      L4_2 = _L
      L5_2 = "lua.notify.preview_stopped"
      L4_2, L5_2 = L4_2(L5_2)
      L3_2(L4_2, L5_2)
      return
    end
    L3_2 = true
    L52_1 = L3_2
    L3_2 = print
    L4_2 = _L
    L5_2 = "lua.notify.preview_started"
    L4_2, L5_2 = L4_2(L5_2)
    L3_2(L4_2, L5_2)
    L3_2 = CreateThread
    function L4_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3
      L0_3 = Config
      L0_3 = L0_3.DefaultFPS
      L1_3 = GetGameTimer
      L1_3 = L1_3()
      L2_3 = L4_1
      L3_3 = #L2_3
      L2_3 = L4_1
      L2_3 = L2_3[L3_3]
      L3_3 = L2_3.frame
      L3_3 = L3_3 / L0_3
      while true do
        L4_3 = L52_1
        if not L4_3 then
          break
        end
        L4_3 = Wait
        L5_3 = 0
        L4_3(L5_3)
        L4_3 = GetGameTimer
        L4_3 = L4_3()
        L4_3 = L4_3 - L1_3
        L4_3 = L4_3 / 1000.0
        if L3_3 < L4_3 then
          L5_3 = false
          L52_1 = L5_3
          L5_3 = print
          L6_3 = _L
          L7_3 = "lua.notify.preview_finished"
          L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3 = L6_3(L7_3)
          L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3)
          break
        end
        L5_3 = L4_3 * L0_3
        L6_3 = L13_1.mode
        if "spline" == L6_3 then
          L6_3 = interpolateKeyframesSpline
          L7_3 = L5_3
          L6_3 = L6_3(L7_3)
          if L6_3 then
            goto lbl_47
          end
        end
        L6_3 = interpolateKeyframes
        L7_3 = L5_3
        L6_3 = L6_3(L7_3)
        ::lbl_47::
        if L6_3 then
          L7_3 = L50_1
          if L7_3 then
            L7_3 = DoesEntityExist
            L8_3 = L50_1
            L7_3 = L7_3(L8_3)
            if L7_3 then
              L7_3 = L6_3.pos
              L8_3 = L6_3.rot
              L9_3 = math
              L9_3 = L9_3.rad
              L10_3 = L8_3.x
              L10_3 = -L10_3
              L9_3 = L9_3(L10_3)
              L10_3 = math
              L10_3 = L10_3.rad
              L11_3 = L8_3.z
              L11_3 = L11_3 + 180.0
              L10_3 = L10_3(L11_3)
              L11_3 = L53_1
              L12_3 = vector3
              L13_3 = math
              L13_3 = L13_3.sin
              L14_3 = L10_3
              L13_3 = L13_3(L14_3)
              L13_3 = -L13_3
              L14_3 = math
              L14_3 = L14_3.cos
              L15_3 = L9_3
              L14_3 = L14_3(L15_3)
              L13_3 = L13_3 * L14_3
              L13_3 = L13_3 * L11_3
              L14_3 = math
              L14_3 = L14_3.cos
              L15_3 = L10_3
              L14_3 = L14_3(L15_3)
              L15_3 = math
              L15_3 = L15_3.cos
              L16_3 = L9_3
              L15_3 = L15_3(L16_3)
              L14_3 = L14_3 * L15_3
              L14_3 = L14_3 * L11_3
              L15_3 = math
              L15_3 = L15_3.sin
              L16_3 = L9_3
              L15_3 = L15_3(L16_3)
              L15_3 = L15_3 * L11_3
              L12_3 = L12_3(L13_3, L14_3, L15_3)
              L13_3 = vector3
              L14_3 = math
              L14_3 = L14_3.cos
              L15_3 = L10_3
              L14_3 = L14_3(L15_3)
              L14_3 = L14_3 * L11_3
              L15_3 = math
              L15_3 = L15_3.sin
              L16_3 = L10_3
              L15_3 = L15_3(L16_3)
              L15_3 = L15_3 * L11_3
              L16_3 = 0.0
              L13_3 = L13_3(L14_3, L15_3, L16_3)
              L14_3 = vector3
              L15_3 = math
              L15_3 = L15_3.sin
              L16_3 = L10_3
              L15_3 = L15_3(L16_3)
              L16_3 = math
              L16_3 = L16_3.sin
              L17_3 = L9_3
              L16_3 = L16_3(L17_3)
              L15_3 = L15_3 * L16_3
              L15_3 = L15_3 * L11_3
              L16_3 = math
              L16_3 = L16_3.cos
              L17_3 = L10_3
              L16_3 = L16_3(L17_3)
              L16_3 = -L16_3
              L17_3 = math
              L17_3 = L17_3.sin
              L18_3 = L9_3
              L17_3 = L17_3(L18_3)
              L16_3 = L16_3 * L17_3
              L16_3 = L16_3 * L11_3
              L17_3 = math
              L17_3 = L17_3.cos
              L18_3 = L9_3
              L17_3 = L17_3(L18_3)
              L17_3 = L17_3 * L11_3
              L14_3 = L14_3(L15_3, L16_3, L17_3)
              L15_3 = SetEntityMatrix
              L16_3 = L50_1
              L17_3 = L12_3
              L18_3 = L13_3
              L19_3 = L14_3
              L20_3 = vector3
              L21_3 = L7_3.x
              L22_3 = L7_3.y
              L23_3 = L7_3.z
              L20_3, L21_3, L22_3, L23_3 = L20_3(L21_3, L22_3, L23_3)
              L15_3(L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3)
            end
          end
        end
      end
    end
    L3_2(L4_2)
  else
    L3_2 = L0_1
    if L3_2 then
      L3_2 = closeUI
      L3_2()
    else
      L3_2 = TriggerServerEvent
      L4_2 = "core_cinematics:checkPerm"
      L3_2(L4_2)
    end
  end
end
L68_1 = false
L65_1(L66_1, L67_1, L68_1)
L65_1 = AddEventHandler
L66_1 = "core_cinematics:permOk"
function L67_1()
  local L0_2, L1_2
  L0_2 = openUI
  L0_2()
end
L65_1(L66_1, L67_1)
L65_1 = AddEventHandler
L66_1 = "core_cinematics:permDenied"
function L67_1()
  local L0_2, L1_2
end
L65_1(L66_1, L67_1)
function L65_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if nil == A0_2 then
    A0_2 = true
  end
  if nil == A1_2 then
    A1_2 = true
  end
  L2_2 = L15_1
  if L2_2 then
    L2_2 = print
    L3_2 = _L
    L4_2 = "lua.notify.already_recording"
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L3_2(L4_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    return
  end
  L2_2 = true
  L15_1 = L2_2
  L2_2 = {}
  L14_1 = L2_2
  L2_2 = {}
  L26_1 = L2_2
  L2_2 = {}
  L3_2 = {}
  L4_2 = CreateThread
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3
    L0_3 = GetGameTimer
    L0_3 = L0_3()
    while true do
      L1_3 = L15_1
      if not L1_3 then
        break
      end
      L1_3 = GetGameTimer
      L1_3 = L1_3()
      L1_3 = L1_3 - L0_3
      L1_3 = L1_3 / 1000.0
      L2_3 = PlayerPedId
      L2_3 = L2_3()
      L3_3 = GetEntityCoords
      L4_3 = L2_3
      L3_3 = L3_3(L4_3)
      L4_3 = A0_2
      if L4_3 then
        L4_3 = ipairs
        L5_3 = GetGamePool
        L6_3 = "CVehicle"
        L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3 = L5_3(L6_3)
        L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3)
        for L8_3, L9_3 in L4_3, L5_3, L6_3, L7_3 do
          L10_3 = DoesEntityExist
          L11_3 = L9_3
          L10_3 = L10_3(L11_3)
          if L10_3 then
            L10_3 = IsEntityDead
            L11_3 = L9_3
            L10_3 = L10_3(L11_3)
            if not L10_3 then
              L10_3 = GetEntityCoords
              L11_3 = L9_3
              L10_3 = L10_3(L11_3)
              L10_3 = L10_3 - L3_3
              L10_3 = #L10_3
              L11_3 = Config
              L11_3 = L11_3.RecordRadius
              if L10_3 <= L11_3 then
                L10_3 = L2_2
                L10_3 = L10_3[L9_3]
                if not L10_3 then
                  L10_3 = L14_1
                  L10_3 = #L10_3
                  L10_3 = L10_3 + 1
                  L11_3 = L14_1
                  L12_3 = {}
                  L13_3 = GetEntityModel
                  L14_3 = L9_3
                  L13_3 = L13_3(L14_3)
                  L12_3.vehicleModel = L13_3
                  L13_3 = GetVehicleNumberPlateText
                  L14_3 = L9_3
                  L13_3 = L13_3(L14_3)
                  L12_3.plate = L13_3
                  L13_3 = captureVehicleProps
                  L14_3 = L9_3
                  L13_3 = L13_3(L14_3)
                  L12_3.props = L13_3
                  L12_3.duration = 0.0
                  L13_3 = {}
                  L12_3.frames = L13_3
                  L11_3[L10_3] = L12_3
                  L11_3 = L2_2
                  L11_3[L9_3] = L10_3
                end
                L10_3 = L2_2
                L10_3 = L10_3[L9_3]
                L11_3 = GetEntityCoords
                L12_3 = L9_3
                L11_3 = L11_3(L12_3)
                L12_3 = GetEntityRotation
                L13_3 = L9_3
                L14_3 = 2
                L12_3 = L12_3(L13_3, L14_3)
                L13_3 = GetEntityVelocity
                L14_3 = L9_3
                L13_3 = L13_3(L14_3)
                L14_3 = table
                L14_3 = L14_3.insert
                L15_3 = L14_1
                L15_3 = L15_3[L10_3]
                L15_3 = L15_3.frames
                L16_3 = {}
                L16_3.t = L1_3
                L17_3 = L11_3.x
                L16_3.px = L17_3
                L17_3 = L11_3.y
                L16_3.py = L17_3
                L17_3 = L11_3.z
                L16_3.pz = L17_3
                L17_3 = L12_3.x
                L16_3.rx = L17_3
                L17_3 = L12_3.y
                L16_3.ry = L17_3
                L17_3 = L12_3.z
                L16_3.rz = L17_3
                L17_3 = L13_3.x
                L16_3.vx = L17_3
                L17_3 = L13_3.y
                L16_3.vy = L17_3
                L17_3 = L13_3.z
                L16_3.vz = L17_3
                L17_3 = GetVehicleSteeringAngle
                L18_3 = L9_3
                L17_3 = L17_3(L18_3)
                L16_3.steer = L17_3
                L17_3 = GetVehicleCurrentRpm
                L18_3 = L9_3
                L17_3 = L17_3(L18_3)
                L16_3.rpm = L17_3
                L17_3 = IsHornActive
                L18_3 = L9_3
                L17_3 = L17_3(L18_3)
                L16_3.horn = L17_3
                L17_3 = GetVehicleHandbrake
                L18_3 = L9_3
                L17_3 = L17_3(L18_3)
                L16_3.handbrake = L17_3
                L14_3(L15_3, L16_3)
                L14_3 = L14_1
                L14_3 = L14_3[L10_3]
                L14_3.duration = L1_3
              end
            end
          end
        end
      end
      L4_3 = A1_2
      if L4_3 then
        L4_3 = GetGamePool
        L5_3 = "CPed"
        L4_3 = L4_3(L5_3)
        L5_3 = false
        L6_3 = ipairs
        L7_3 = L4_3
        L6_3, L7_3, L8_3, L9_3 = L6_3(L7_3)
        for L10_3, L11_3 in L6_3, L7_3, L8_3, L9_3 do
          if L11_3 == L2_3 then
            L5_3 = true
            break
          end
        end
        if not L5_3 then
          L6_3 = table
          L6_3 = L6_3.insert
          L7_3 = L4_3
          L8_3 = L2_3
          L6_3(L7_3, L8_3)
        end
        L6_3 = ipairs
        L7_3 = L4_3
        L6_3, L7_3, L8_3, L9_3 = L6_3(L7_3)
        for L10_3, L11_3 in L6_3, L7_3, L8_3, L9_3 do
          L12_3 = IsPedHuman
          L13_3 = L11_3
          L12_3 = L12_3(L13_3)
          if L12_3 then
            L12_3 = IsEntityDead
            L13_3 = L11_3
            L12_3 = L12_3(L13_3)
            if not L12_3 then
              L12_3 = GetEntityCoords
              L13_3 = L11_3
              L12_3 = L12_3(L13_3)
              L12_3 = L12_3 - L3_3
              L12_3 = #L12_3
              L13_3 = Config
              L13_3 = L13_3.RecordRadius
              if L12_3 <= L13_3 then
                L12_3 = L3_2
                L12_3 = L12_3[L11_3]
                if not L12_3 then
                  L12_3 = L26_1
                  L12_3 = #L12_3
                  L12_3 = L12_3 + 1
                  L13_3 = pcall
                  L14_3 = capturePedAppearance
                  L15_3 = L11_3
                  L13_3, L14_3 = L13_3(L14_3, L15_3)
                  L15_3 = L26_1
                  L16_3 = {}
                  L17_3 = GetEntityModel
                  L18_3 = L11_3
                  L17_3 = L17_3(L18_3)
                  L16_3.pedModel = L17_3
                  L16_3.duration = 0.0
                  L17_3 = L11_3 == L2_3
                  L16_3.isPlayer = L17_3
                  L17_3 = L14_3 or L17_3
                  if not L13_3 or not L14_3 then
                    L17_3 = nil
                  end
                  L16_3.appearance = L17_3
                  L17_3 = {}
                  L16_3.frames = L17_3
                  L15_3[L12_3] = L16_3
                  L15_3 = L3_2
                  L15_3[L11_3] = L12_3
                end
                L12_3 = L3_2
                L12_3 = L12_3[L11_3]
                L13_3 = nil
                L14_3 = IsPedInAnyVehicle
                L15_3 = L11_3
                L16_3 = false
                L14_3 = L14_3(L15_3, L16_3)
                if L14_3 then
                  L14_3 = GetVehiclePedIsIn
                  L15_3 = L11_3
                  L16_3 = false
                  L14_3 = L14_3(L15_3, L16_3)
                  L15_3 = L2_2
                  L15_3 = L15_3[L14_3]
                  if L15_3 then
                    L16_3 = {}
                    L16_3.t = L1_3
                    L16_3.inVehicle = true
                    L16_3.vehRecIdx = L15_3
                    L17_3 = findPedSeat
                    L18_3 = L14_3
                    L19_3 = L11_3
                    L17_3 = L17_3(L18_3, L19_3)
                    if not L17_3 then
                      L17_3 = -1
                    end
                    L16_3.seat = L17_3
                    L13_3 = L16_3
                  end
                else
                  L14_3 = GetEntityCoords
                  L15_3 = L11_3
                  L14_3 = L14_3(L15_3)
                  L15_3 = GetEntityVelocity
                  L16_3 = L11_3
                  L15_3 = L15_3(L16_3)
                  L16_3 = GetSelectedPedWeapon
                  L17_3 = L11_3
                  L16_3 = L16_3(L17_3)
                  if L11_3 == L2_3 then
                    L17_3 = IsPlayerFreeAiming
                    L18_3 = PlayerId
                    L18_3, L19_3, L20_3 = L18_3()
                    L17_3 = L17_3(L18_3, L19_3, L20_3)
                    if L17_3 then
                      goto lbl_275
                    end
                  end
                  L17_3 = IsPedAimingFromCover
                  L18_3 = L11_3
                  L17_3 = L17_3(L18_3)
                  ::lbl_275::
                  L18_3 = {}
                  L18_3.t = L1_3
                  L18_3.inVehicle = false
                  L19_3 = L14_3.x
                  L18_3.px = L19_3
                  L19_3 = L14_3.y
                  L18_3.py = L19_3
                  L19_3 = L14_3.z
                  L18_3.pz = L19_3
                  L19_3 = GetEntityHeading
                  L20_3 = L11_3
                  L19_3 = L19_3(L20_3)
                  L18_3.rz = L19_3
                  L19_3 = L15_3.x
                  L18_3.vx = L19_3
                  L19_3 = L15_3.y
                  L18_3.vy = L19_3
                  L19_3 = L15_3.z
                  L18_3.vz = L19_3
                  L19_3 = GetPedDesiredMoveBlendRatio
                  L20_3 = L11_3
                  L19_3 = L19_3(L20_3)
                  L18_3.moveBlend = L19_3
                  L18_3.weapon = L16_3
                  L18_3.isAiming = L17_3
                  L19_3 = IsPedShooting
                  L20_3 = L11_3
                  L19_3 = L19_3(L20_3)
                  L18_3.isShooting = L19_3
                  L19_3 = IsPedJumping
                  L20_3 = L11_3
                  L19_3 = L19_3(L20_3)
                  L18_3.isJumping = L19_3
                  L19_3 = IsPedVaulting
                  L20_3 = L11_3
                  L19_3 = L19_3(L20_3)
                  L18_3.isVaulting = L19_3
                  L19_3 = IsPedClimbing
                  L20_3 = L11_3
                  L19_3 = L19_3(L20_3)
                  L18_3.isClimbing = L19_3
                  L19_3 = IsPedRagdoll
                  L20_3 = L11_3
                  L19_3 = L19_3(L20_3)
                  L18_3.isRagdoll = L19_3
                  L13_3 = L18_3
                end
                if L13_3 then
                  L14_3 = table
                  L14_3 = L14_3.insert
                  L15_3 = L26_1
                  L15_3 = L15_3[L12_3]
                  L15_3 = L15_3.frames
                  L16_3 = L13_3
                  L14_3(L15_3, L16_3)
                  L14_3 = L26_1
                  L14_3 = L14_3[L12_3]
                  L14_3.duration = L1_3
                end
              end
            end
          end
        end
      end
      L4_3 = math
      L4_3 = L4_3.floor
      L5_3 = L1_3 * 2
      L4_3 = L4_3(L5_3)
      L5_3 = math
      L5_3 = L5_3.floor
      L6_3 = L1_3 - 0.033
      L6_3 = L6_3 * 2
      L5_3 = L5_3(L6_3)
      if L4_3 > L5_3 then
        L4_3 = SendNUIMessage
        L5_3 = {}
        L5_3.type = "recordingTick"
        L5_3.elapsed = L1_3
        L4_3(L5_3)
      end
      L4_3 = Wait
      L5_3 = 33
      L4_3(L5_3)
    end
  end
  L4_2(L5_2)
  L4_2 = Config
  L4_2 = L4_2.RecordingStopKey
  if not L4_2 then
    L4_2 = 177
  end
  L5_2 = CreateThread
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3
    while true do
      L0_3 = L15_1
      if not L0_3 then
        break
      end
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = L4_2
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = IsControlJustPressed
      L1_3 = 0
      L2_3 = L4_2
      L0_3 = L0_3(L1_3, L2_3)
      if not L0_3 then
        L0_3 = IsDisabledControlJustPressed
        L1_3 = 0
        L2_3 = L4_2
        L0_3 = L0_3(L1_3, L2_3)
        if not L0_3 then
          goto lbl_24
        end
      end
      L0_3 = stopVehicleRecording
      L0_3()
      do return end
      ::lbl_24::
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
    end
  end
  L5_2(L6_2)
  if A0_2 then
    L5_2 = _L
    L6_2 = "lua.notify.target_vehicles"
    L5_2 = L5_2(L6_2)
    if L5_2 then
      goto lbl_47
    end
  end
  L5_2 = ""
  ::lbl_47::
  if A0_2 and A1_2 then
    L6_2 = " + "
    if L6_2 then
      goto lbl_55
    end
  end
  L6_2 = ""
  ::lbl_55::
  if A1_2 then
    L7_2 = _L
    L8_2 = "lua.notify.target_peds"
    L7_2 = L7_2(L8_2)
    if L7_2 then
      goto lbl_63
    end
  end
  L7_2 = ""
  ::lbl_63::
  L5_2 = L5_2 .. L6_2 .. L7_2
  L6_2 = print
  L7_2 = _L
  L8_2 = "lua.notify.recording_started"
  L9_2 = {}
  L9_2.targets = L5_2
  L10_2 = Config
  L10_2 = L10_2.RecordRadius
  L9_2.radius = L10_2
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2, L9_2)
  L6_2(L7_2, L8_2, L9_2, L10_2)
end
startVehicleRecording = L65_1
function L65_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = L15_1
  if not L0_2 then
    L0_2 = print
    L1_2 = _L
    L2_2 = "lua.notify.not_recording"
    L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L1_2(L2_2)
    L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    return
  end
  L0_2 = false
  L15_1 = L0_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.type = "recordingStopped"
  L0_2(L1_2)
  L0_2 = L14_1
  L0_2 = #L0_2
  L1_2 = 1
  L2_2 = -1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = L14_1
    L4_2 = L4_2[L3_2]
    L4_2 = L4_2.frames
    L4_2 = #L4_2
    if L4_2 < 2 then
      L4_2 = table
      L4_2 = L4_2.remove
      L5_2 = L14_1
      L6_2 = L3_2
      L4_2(L5_2, L6_2)
    end
  end
  L0_2 = L26_1
  L0_2 = #L0_2
  L1_2 = 1
  L2_2 = -1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = L26_1
    L4_2 = L4_2[L3_2]
    L4_2 = L4_2.frames
    L4_2 = #L4_2
    if L4_2 < 2 then
      L4_2 = table
      L4_2 = L4_2.remove
      L5_2 = L26_1
      L6_2 = L3_2
      L4_2(L5_2, L6_2)
    end
  end
  L0_2 = L14_1
  L0_2 = #L0_2
  L0_2 = L0_2 > 0
  L1_2 = L26_1
  L1_2 = #L1_2
  L1_2 = L1_2 > 0
  if not L0_2 and not L1_2 then
    L2_2 = {}
    L14_1 = L2_2
    L2_2 = {}
    L26_1 = L2_2
    L2_2 = print
    L3_2 = _L
    L4_2 = "lua.notify.recording_empty"
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2(L4_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  else
    L2_2 = 0.0
    L3_2 = ipairs
    L4_2 = L14_1
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = L8_2.duration
      if L2_2 < L9_2 then
        L2_2 = L8_2.duration
      end
    end
    L3_2 = ipairs
    L4_2 = L26_1
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = L8_2.duration
      if L2_2 < L9_2 then
        L2_2 = L8_2.duration
      end
    end
    L3_2 = print
    L4_2 = _L
    L5_2 = "lua.notify.recording_saved"
    L6_2 = {}
    L7_2 = L14_1
    L7_2 = #L7_2
    L6_2.vehicles = L7_2
    L7_2 = L26_1
    L7_2 = #L7_2
    L6_2.peds = L7_2
    L7_2 = string
    L7_2 = L7_2.format
    L8_2 = "%.1f"
    L9_2 = L2_2
    L7_2 = L7_2(L8_2, L9_2)
    L6_2.duration = L7_2
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2, L6_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    L3_2 = 0.0
    L22_1 = L3_2
    L3_2 = nil
    L23_1 = L3_2
    L3_2 = 0.0
    L24_1 = L3_2
    L3_2 = spawnVehicleRecording
    L3_2()
    L3_2 = initPedRecording
    L3_2()
    L3_2 = CreateThread
    function L4_2()
      local L0_3, L1_3
      L0_3 = Wait
      L1_3 = 150
      L0_3(L1_3)
      L0_3 = previewVehicleAtFrame
      L1_3 = L5_1
      if not L1_3 then
        L1_3 = 0
      end
      L0_3(L1_3)
      L0_3 = previewPedAtFrame
      L1_3 = L5_1
      if not L1_3 then
        L1_3 = 0
      end
      L0_3(L1_3)
    end
    L3_2(L4_2)
    L3_2 = SendNUIMessage
    L4_2 = {}
    L4_2.type = "recordingFinished"
    L3_2(L4_2)
  end
end
stopVehicleRecording = L65_1
function L65_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
  L1_2 = GetVehicleColours
  L2_2 = A0_2
  L1_2, L2_2 = L1_2(L2_2)
  L3_2 = GetVehicleCustomPrimaryColour
  L4_2 = A0_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L6_2 = GetVehicleCustomSecondaryColour
  L7_2 = A0_2
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  L9_2 = GetVehicleExtraColours
  L10_2 = A0_2
  L9_2, L10_2 = L9_2(L10_2)
  L11_2 = GetVehicleNeonLightsColour
  L12_2 = A0_2
  L11_2, L12_2, L13_2 = L11_2(L12_2)
  L14_2 = {}
  L14_2.colorP1 = L1_2
  L14_2.colorP2 = L2_2
  L15_2 = GetIsVehiclePrimaryColourCustom
  L16_2 = A0_2
  L15_2 = L15_2(L16_2)
  L14_2.isCustomP1 = L15_2
  L15_2 = {}
  L16_2 = L3_2
  L17_2 = L4_2
  L18_2 = L5_2
  L15_2[1] = L16_2
  L15_2[2] = L17_2
  L15_2[3] = L18_2
  L14_2.customP1 = L15_2
  L15_2 = GetIsVehicleSecondaryColourCustom
  L16_2 = A0_2
  L15_2 = L15_2(L16_2)
  L14_2.isCustomP2 = L15_2
  L15_2 = {}
  L16_2 = L6_2
  L17_2 = L7_2
  L18_2 = L8_2
  L15_2[1] = L16_2
  L15_2[2] = L17_2
  L15_2[3] = L18_2
  L14_2.customP2 = L15_2
  L14_2.pearl = L9_2
  L14_2.wheelColor = L10_2
  L15_2 = GetVehicleLivery
  L16_2 = A0_2
  L15_2 = L15_2(L16_2)
  L14_2.livery = L15_2
  L15_2 = GetVehicleWheelType
  L16_2 = A0_2
  L15_2 = L15_2(L16_2)
  L14_2.wheelType = L15_2
  L15_2 = GetVehicleWindowTint
  L16_2 = A0_2
  L15_2 = L15_2(L16_2)
  L14_2.windowTint = L15_2
  L15_2 = {}
  L16_2 = IsVehicleNeonLightEnabled
  L17_2 = A0_2
  L18_2 = 0
  L16_2 = L16_2(L17_2, L18_2)
  L17_2 = IsVehicleNeonLightEnabled
  L18_2 = A0_2
  L19_2 = 1
  L17_2 = L17_2(L18_2, L19_2)
  L18_2 = IsVehicleNeonLightEnabled
  L19_2 = A0_2
  L20_2 = 2
  L18_2 = L18_2(L19_2, L20_2)
  L19_2 = IsVehicleNeonLightEnabled
  L20_2 = A0_2
  L21_2 = 3
  L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L19_2(L20_2, L21_2)
  L15_2[1] = L16_2
  L15_2[2] = L17_2
  L15_2[3] = L18_2
  L15_2[4] = L19_2
  L15_2[5] = L20_2
  L15_2[6] = L21_2
  L15_2[7] = L22_2
  L15_2[8] = L23_2
  L15_2[9] = L24_2
  L15_2[10] = L25_2
  L14_2.neon = L15_2
  L15_2 = {}
  L16_2 = L11_2
  L17_2 = L12_2
  L18_2 = L13_2
  L15_2[1] = L16_2
  L15_2[2] = L17_2
  L15_2[3] = L18_2
  L14_2.neonColor = L15_2
  L15_2 = {}
  L14_2.mods = L15_2
  L15_2 = {}
  L14_2.extras = L15_2
  L15_2 = 0
  L16_2 = 49
  L17_2 = 1
  for L18_2 = L15_2, L16_2, L17_2 do
    L19_2 = GetVehicleMod
    L20_2 = A0_2
    L21_2 = L18_2
    L19_2 = L19_2(L20_2, L21_2)
    if -1 ~= L19_2 then
      L20_2 = L14_2.mods
      L21_2 = {}
      L22_2 = L19_2
      L23_2 = GetVehicleModVariation
      L24_2 = A0_2
      L25_2 = L18_2
      L23_2, L24_2, L25_2 = L23_2(L24_2, L25_2)
      L21_2[1] = L22_2
      L21_2[2] = L23_2
      L21_2[3] = L24_2
      L21_2[4] = L25_2
      L20_2[L18_2] = L21_2
    end
  end
  L15_2 = 0
  L16_2 = 14
  L17_2 = 1
  for L18_2 = L15_2, L16_2, L17_2 do
    L19_2 = DoesExtraExist
    L20_2 = A0_2
    L21_2 = L18_2
    L19_2 = L19_2(L20_2, L21_2)
    if L19_2 then
      L19_2 = L14_2.extras
      L20_2 = IsVehicleExtraTurnedOn
      L21_2 = A0_2
      L22_2 = L18_2
      L20_2 = L20_2(L21_2, L22_2)
      L19_2[L18_2] = L20_2
    end
  end
  return L14_2
end
captureVehicleProps = L65_1
function L65_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if not A1_2 then
    return
  end
  L2_2 = SetVehicleModKit
  L3_2 = A0_2
  L4_2 = 0
  L2_2(L3_2, L4_2)
  L2_2 = SetVehicleColours
  L3_2 = A0_2
  L4_2 = A1_2.colorP1
  L5_2 = A1_2.colorP2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A1_2.isCustomP1
  if L2_2 then
    L2_2 = SetVehicleCustomPrimaryColour
    L3_2 = A0_2
    L4_2 = A1_2.customP1
    L4_2 = L4_2[1]
    L5_2 = A1_2.customP1
    L5_2 = L5_2[2]
    L6_2 = A1_2.customP1
    L6_2 = L6_2[3]
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
  L2_2 = A1_2.isCustomP2
  if L2_2 then
    L2_2 = SetVehicleCustomSecondaryColour
    L3_2 = A0_2
    L4_2 = A1_2.customP2
    L4_2 = L4_2[1]
    L5_2 = A1_2.customP2
    L5_2 = L5_2[2]
    L6_2 = A1_2.customP2
    L6_2 = L6_2[3]
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
  L2_2 = SetVehicleExtraColours
  L3_2 = A0_2
  L4_2 = A1_2.pearl
  L5_2 = A1_2.wheelColor
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = SetVehicleLivery
  L3_2 = A0_2
  L4_2 = A1_2.livery
  L2_2(L3_2, L4_2)
  L2_2 = SetVehicleWheelType
  L3_2 = A0_2
  L4_2 = A1_2.wheelType
  L2_2(L3_2, L4_2)
  L2_2 = SetVehicleWindowTint
  L3_2 = A0_2
  L4_2 = A1_2.windowTint
  L2_2(L3_2, L4_2)
  L2_2 = 0
  L3_2 = 49
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A1_2.mods
    L6_2 = L6_2[L5_2]
    if L6_2 then
      L6_2 = SetVehicleMod
      L7_2 = A0_2
      L8_2 = L5_2
      L9_2 = A1_2.mods
      L9_2 = L9_2[L5_2]
      L9_2 = L9_2[1]
      L10_2 = A1_2.mods
      L10_2 = L10_2[L5_2]
      L10_2 = L10_2[2]
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
  end
  L2_2 = 0
  L3_2 = 14
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A1_2.extras
    L6_2 = L6_2[L5_2]
    if nil ~= L6_2 then
      L6_2 = SetVehicleExtra
      L7_2 = A0_2
      L8_2 = L5_2
      L9_2 = A1_2.extras
      L9_2 = L9_2[L5_2]
      if L9_2 then
        L9_2 = 0
        if L9_2 then
          goto lbl_92
        end
      end
      L9_2 = 1
      ::lbl_92::
      L6_2(L7_2, L8_2, L9_2)
    end
  end
  L2_2 = 0
  L3_2 = 3
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = SetVehicleNeonLightEnabled
    L7_2 = A0_2
    L8_2 = L5_2
    L9_2 = A1_2.neon
    L10_2 = L5_2 + 1
    L9_2 = L9_2[L10_2]
    L6_2(L7_2, L8_2, L9_2)
  end
  L2_2 = SetVehicleNeonLightsColour
  L3_2 = A0_2
  L4_2 = A1_2.neonColor
  L4_2 = L4_2[1]
  L5_2 = A1_2.neonColor
  L5_2 = L5_2[2]
  L6_2 = A1_2.neonColor
  L6_2 = L6_2[3]
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
applyVehicleProps = L65_1
function L65_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetEntityModel
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = 1885233650 == L1_2 or -1667301416 == L1_2
  return L2_2
end
isPedFreemodeModel = L65_1
function L65_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L2_2 = isPedFreemodeModel
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L1_2.freemode = L2_2
  L2_2 = {}
  L1_2.components = L2_2
  L2_2 = {}
  L1_2.props = L2_2
  L2_2 = pcall
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L0_3 = 0
    L1_3 = 11
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = L1_2.components
      L5_3 = L1_2.components
      L5_3 = #L5_3
      L5_3 = L5_3 + 1
      L6_3 = {}
      L6_3.slot = L3_3
      L7_3 = GetPedDrawableVariation
      L8_3 = A0_2
      L9_3 = L3_3
      L7_3 = L7_3(L8_3, L9_3)
      L6_3.drawable = L7_3
      L7_3 = GetPedTextureVariation
      L8_3 = A0_2
      L9_3 = L3_3
      L7_3 = L7_3(L8_3, L9_3)
      L6_3.texture = L7_3
      L7_3 = GetPedPaletteVariation
      L8_3 = A0_2
      L9_3 = L3_3
      L7_3 = L7_3(L8_3, L9_3)
      L6_3.palette = L7_3
      L4_3[L5_3] = L6_3
    end
  end
  L2_2(L3_2)
  L2_2 = pcall
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L0_3 = 0
    L1_3 = 7
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = L1_2.props
      L5_3 = L1_2.props
      L5_3 = #L5_3
      L5_3 = L5_3 + 1
      L6_3 = {}
      L6_3.slot = L3_3
      L7_3 = GetPedPropIndex
      L8_3 = A0_2
      L9_3 = L3_3
      L7_3 = L7_3(L8_3, L9_3)
      L6_3.drawable = L7_3
      L7_3 = GetPedPropTextureIndex
      L8_3 = A0_2
      L9_3 = L3_3
      L7_3 = L7_3(L8_3, L9_3)
      L6_3.texture = L7_3
      L4_3[L5_3] = L6_3
    end
  end
  L2_2(L3_2)
  L2_2 = L1_2.freemode
  if not L2_2 then
    return L1_2
  end
  L2_2 = pcall
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L0_3 = Citizen
    L0_3 = L0_3.InvokeNative
    L1_3 = 2830157900151113168
    L2_3 = A0_2
    L3_3 = Citizen
    L3_3 = L3_3.PointerValueIntInitialized
    L4_3 = 0
    L3_3 = L3_3(L4_3)
    L4_3 = Citizen
    L4_3 = L4_3.PointerValueIntInitialized
    L5_3 = 0
    L4_3 = L4_3(L5_3)
    L5_3 = Citizen
    L5_3 = L5_3.PointerValueIntInitialized
    L6_3 = 0
    L5_3 = L5_3(L6_3)
    L6_3 = Citizen
    L6_3 = L6_3.PointerValueIntInitialized
    L7_3 = 0
    L6_3 = L6_3(L7_3)
    L7_3 = Citizen
    L7_3 = L7_3.PointerValueIntInitialized
    L8_3 = 0
    L7_3 = L7_3(L8_3)
    L8_3 = Citizen
    L8_3 = L8_3.PointerValueIntInitialized
    L9_3 = 0
    L8_3 = L8_3(L9_3)
    L9_3 = Citizen
    L9_3 = L9_3.PointerValueFloatInitialized
    L10_3 = 0
    L9_3 = L9_3(L10_3)
    L10_3 = Citizen
    L10_3 = L10_3.PointerValueFloatInitialized
    L11_3 = 0
    L10_3 = L10_3(L11_3)
    L11_3 = Citizen
    L11_3 = L11_3.PointerValueFloatInitialized
    L12_3 = 0
    L11_3, L12_3 = L11_3(L12_3)
    L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
    L9_3 = {}
    L9_3.shapeFirst = L0_3
    L9_3.shapeSecond = L1_3
    L9_3.shapeThird = L2_3
    L9_3.skinFirst = L3_3
    L9_3.skinSecond = L4_3
    L9_3.skinThird = L5_3
    L10_3 = L6_3 or L10_3
    if not L6_3 then
      L10_3 = 0.0
    end
    L9_3.shapeMix = L10_3
    L10_3 = L7_3 or L10_3
    if not L7_3 then
      L10_3 = 0.0
    end
    L9_3.skinMix = L10_3
    L10_3 = L8_3 or L10_3
    if not L8_3 then
      L10_3 = 0.0
    end
    L9_3.thirdMix = L10_3
    L1_2.headBlend = L9_3
  end
  L2_2(L3_2)
  L2_2 = {}
  L1_2.overlays = L2_2
  L2_2 = pcall
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L0_3 = 0
    L1_3 = 12
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = GetPedHeadOverlayData
      L5_3 = A0_2
      L6_3 = L3_3
      L4_3, L5_3, L6_3, L7_3, L8_3, L9_3 = L4_3(L5_3, L6_3)
      L10_3 = L1_2.overlays
      L11_3 = L1_2.overlays
      L11_3 = #L11_3
      L11_3 = L11_3 + 1
      L12_3 = {}
      L12_3.slot = L3_3
      L12_3.value = L5_3
      L12_3.colourType = L6_3
      L12_3.colour1 = L7_3
      L12_3.colour2 = L8_3
      L12_3.opacity = L9_3
      L10_3[L11_3] = L12_3
    end
  end
  L2_2(L3_2)
  L2_2 = {}
  L1_2.faceFeatures = L2_2
  L2_2 = pcall
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L0_3 = 0
    L1_3 = 19
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = L1_2.faceFeatures
      L5_3 = L1_2.faceFeatures
      L5_3 = #L5_3
      L5_3 = L5_3 + 1
      L6_3 = {}
      L6_3.slot = L3_3
      L7_3 = GetPedFaceFeature
      L8_3 = A0_2
      L9_3 = L3_3
      L7_3 = L7_3(L8_3, L9_3)
      L6_3.value = L7_3
      L4_3[L5_3] = L6_3
    end
  end
  L2_2(L3_2)
  L2_2 = pcall
  function L3_2()
    local L0_3, L1_3
    L0_3 = GetPedHairColor
    L1_3 = A0_2
    L0_3 = L0_3(L1_3)
    L1_2.hairColor = L0_3
    L0_3 = GetPedHairHighlightColor
    L1_3 = A0_2
    L0_3 = L0_3(L1_3)
    L1_2.hairHighlightColor = L0_3
  end
  L2_2(L3_2)
  L2_2 = pcall
  function L3_2()
    local L0_3, L1_3
    L0_3 = GetPedEyeColor
    if L0_3 then
      L0_3 = GetPedEyeColor
      L1_3 = A0_2
      L0_3 = L0_3(L1_3)
      L1_2.eyeColor = L0_3
    end
  end
  L2_2(L3_2)
  return L1_2
end
capturePedAppearance = L65_1
function L65_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  if not A1_2 then
    return
  end
  L2_2 = isPedFreemodeModel
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A1_2.headBlend
    if L3_2 then
      L3_2 = A1_2.headBlend
      L4_2 = pcall
      L5_2 = SetPedHeadBlendData
      L6_2 = A0_2
      L7_2 = L3_2.shapeFirst
      if not L7_2 then
        L7_2 = 0
      end
      L8_2 = L3_2.shapeSecond
      if not L8_2 then
        L8_2 = 0
      end
      L9_2 = L3_2.shapeThird
      if not L9_2 then
        L9_2 = 0
      end
      L10_2 = L3_2.skinFirst
      if not L10_2 then
        L10_2 = 0
      end
      L11_2 = L3_2.skinSecond
      if not L11_2 then
        L11_2 = 0
      end
      L12_2 = L3_2.skinThird
      if not L12_2 then
        L12_2 = 0
      end
      L13_2 = L3_2.shapeMix
      L13_2 = L13_2 + 0.0
      L14_2 = L3_2.skinMix
      L14_2 = L14_2 + 0.0
      L15_2 = L3_2.thirdMix
      L15_2 = L15_2 + 0.0
      L16_2 = false
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    end
  end
  L3_2 = A1_2.components
  if L3_2 then
    L3_2 = ipairs
    L4_2 = A1_2.components
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = pcall
      L10_2 = SetPedComponentVariation
      L11_2 = A0_2
      L12_2 = L8_2.slot
      L13_2 = L8_2.drawable
      if not L13_2 then
        L13_2 = 0
      end
      L14_2 = L8_2.texture
      if not L14_2 then
        L14_2 = 0
      end
      L15_2 = L8_2.palette
      if not L15_2 then
        L15_2 = 0
      end
      L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    end
  end
  L3_2 = A1_2.props
  if L3_2 then
    L3_2 = ipairs
    L4_2 = A1_2.props
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = L8_2.drawable
      if L9_2 then
        L9_2 = L8_2.drawable
        if -1 ~= L9_2 then
          L9_2 = pcall
          L10_2 = SetPedPropIndex
          L11_2 = A0_2
          L12_2 = L8_2.slot
          L13_2 = L8_2.drawable
          L14_2 = L8_2.texture
          if not L14_2 then
            L14_2 = 0
          end
          L15_2 = true
          L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
      end
      else
        L9_2 = pcall
        L10_2 = ClearPedProp
        L11_2 = A0_2
        L12_2 = L8_2.slot
        L9_2(L10_2, L11_2, L12_2)
      end
    end
  end
  if L2_2 then
    L3_2 = A1_2.overlays
    if L3_2 then
      L3_2 = ipairs
      L4_2 = A1_2.overlays
      L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
      for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
        L9_2 = pcall
        L10_2 = SetPedHeadOverlay
        L11_2 = A0_2
        L12_2 = L8_2.slot
        L13_2 = L8_2.value
        if not L13_2 then
          L13_2 = 0
        end
        L14_2 = L8_2.opacity
        if not L14_2 then
          L14_2 = 1.0
        end
        L14_2 = L14_2 + 0.0
        L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
        L9_2 = L8_2.colourType
        if L9_2 then
          L9_2 = L8_2.colour1
          if L9_2 then
            L9_2 = pcall
            L10_2 = SetPedHeadOverlayColor
            L11_2 = A0_2
            L12_2 = L8_2.slot
            L13_2 = L8_2.colourType
            L14_2 = L8_2.colour1
            L15_2 = L8_2.colour2
            if not L15_2 then
              L15_2 = 0
            end
            L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
          end
        end
      end
    end
  end
  if L2_2 then
    L3_2 = A1_2.faceFeatures
    if L3_2 then
      L3_2 = ipairs
      L4_2 = A1_2.faceFeatures
      L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
      for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
        L9_2 = pcall
        L10_2 = SetPedFaceFeature
        L11_2 = A0_2
        L12_2 = L8_2.slot
        L13_2 = L8_2.value
        if not L13_2 then
          L13_2 = 0.0
        end
        L13_2 = L13_2 + 0.0
        L9_2(L10_2, L11_2, L12_2, L13_2)
      end
    end
  end
  if L2_2 then
    L3_2 = A1_2.hairColor
    if L3_2 then
      L3_2 = pcall
      L4_2 = SetPedHairColor
      L5_2 = A0_2
      L6_2 = A1_2.hairColor
      L7_2 = A1_2.hairHighlightColor
      if not L7_2 then
        L7_2 = 0
      end
      L3_2(L4_2, L5_2, L6_2, L7_2)
    end
  end
  if L2_2 then
    L3_2 = A1_2.eyeColor
    if L3_2 then
      L3_2 = SetPedEyeColor
      if L3_2 then
        L3_2 = pcall
        L4_2 = SetPedEyeColor
        L5_2 = A0_2
        L6_2 = A1_2.eyeColor
        L3_2(L4_2, L5_2, L6_2)
      end
    end
  end
end
applyPedAppearance = L65_1
function L65_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = GetPedInVehicleSeat
  L3_2 = A0_2
  L4_2 = -1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == A1_2 then
    L2_2 = -1
    return L2_2
  end
  L2_2 = GetVehicleMaxNumberOfPassengers
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = 0
  L4_2 = L2_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = GetPedInVehicleSeat
    L8_2 = A0_2
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 == A1_2 then
      return L6_2
    end
  end
  L3_2 = nil
  return L3_2
end
findPedSeat = L65_1
L65_1 = false
function L66_1()
  local L0_2, L1_2
  L0_2 = L42_1
  if L0_2 then
    L0_2 = print
    L1_2 = "[Cinematics] Solo recording already in progress."
    L0_2(L1_2)
    return
  end
  L0_2 = true
  L65_1 = L0_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.type = "recordingCountdown"
  L0_2(L1_2)
end
startSoloRecording = L66_1
function L66_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = false
  L65_1 = L0_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetVehiclePedIsIn
  L2_2 = L0_2
  L3_2 = false
  L1_2 = L1_2(L2_2, L3_2)
  if 0 == L1_2 then
    L2_2 = print
    L3_2 = "[Cinematics] You must be in a vehicle when the countdown finishes."
    L2_2(L3_2)
    L2_2 = SendNUIMessage
    L3_2 = {}
    L3_2.type = "recordingStopped"
    L2_2(L3_2)
    L2_2 = openUI
    L2_2()
    return
  end
  L2_2 = L40_1
  L2_2 = #L2_2
  L2_2 = L2_2 + 1
  L3_2 = L40_1
  L4_2 = {}
  L4_2.id = L2_2
  L5_2 = "Layer "
  L6_2 = L2_2
  L5_2 = L5_2 .. L6_2
  L4_2.name = L5_2
  L5_2 = {}
  L6_2 = GetEntityModel
  L7_2 = L1_2
  L6_2 = L6_2(L7_2)
  L5_2.vehicleModel = L6_2
  L6_2 = GetVehicleNumberPlateText
  L7_2 = L1_2
  L6_2 = L6_2(L7_2)
  L5_2.plate = L6_2
  L6_2 = captureVehicleProps
  L7_2 = L1_2
  L6_2 = L6_2(L7_2)
  L5_2.props = L6_2
  L5_2.duration = 0.0
  L6_2 = {}
  L5_2.frames = L6_2
  L4_2.vehicleRec = L5_2
  L4_2.startSec = 0.0
  L4_2.endSec = nil
  L4_2.trimInSec = 0.0
  L4_2.vehicleSpawn = nil
  L4_2.vehicleSpawning = false
  L4_2.vehicleFrameIdx = 1
  L3_2[L2_2] = L4_2
  L3_2 = true
  L42_1 = L3_2
  L43_1 = L2_2
  L3_2 = SendNUIMessage
  L4_2 = {}
  L4_2.type = "recordingStarted"
  L3_2(L4_2)
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L0_3 = GetGameTimer
    L0_3 = L0_3()
    while true do
      L1_3 = L42_1
      if not L1_3 then
        break
      end
      L1_3 = L43_1
      L2_3 = L2_2
      if L1_3 ~= L2_3 then
        break
      end
      L1_3 = GetGameTimer
      L1_3 = L1_3()
      L1_3 = L1_3 - L0_3
      L1_3 = L1_3 / 1000.0
      L3_3 = L2_2
      L2_3 = L40_1
      L2_3 = L2_3[L3_3]
      if not L2_3 then
        break
      end
      L3_3 = GetVehiclePedIsIn
      L4_3 = PlayerPedId
      L4_3 = L4_3()
      L5_3 = false
      L3_3 = L3_3(L4_3, L5_3)
      if 0 ~= L3_3 then
        L4_3 = GetEntityCoords
        L5_3 = L3_3
        L4_3 = L4_3(L5_3)
        L5_3 = GetEntityRotation
        L6_3 = L3_3
        L7_3 = 2
        L5_3 = L5_3(L6_3, L7_3)
        L6_3 = GetEntityVelocity
        L7_3 = L3_3
        L6_3 = L6_3(L7_3)
        L7_3 = table
        L7_3 = L7_3.insert
        L8_3 = L2_3.vehicleRec
        L8_3 = L8_3.frames
        L9_3 = {}
        L9_3.t = L1_3
        L10_3 = L4_3.x
        L9_3.px = L10_3
        L10_3 = L4_3.y
        L9_3.py = L10_3
        L10_3 = L4_3.z
        L9_3.pz = L10_3
        L10_3 = L5_3.x
        L9_3.rx = L10_3
        L10_3 = L5_3.y
        L9_3.ry = L10_3
        L10_3 = L5_3.z
        L9_3.rz = L10_3
        L10_3 = L6_3.x
        L9_3.vx = L10_3
        L10_3 = L6_3.y
        L9_3.vy = L10_3
        L10_3 = L6_3.z
        L9_3.vz = L10_3
        L10_3 = GetVehicleSteeringAngle
        L11_3 = L3_3
        L10_3 = L10_3(L11_3)
        L9_3.steer = L10_3
        L10_3 = GetVehicleCurrentRpm
        L11_3 = L3_3
        L10_3 = L10_3(L11_3)
        L9_3.rpm = L10_3
        L10_3 = IsHornActive
        L11_3 = L3_3
        L10_3 = L10_3(L11_3)
        L9_3.horn = L10_3
        L7_3(L8_3, L9_3)
        L7_3 = L2_3.vehicleRec
        L7_3.duration = L1_3
      end
      L4_3 = math
      L4_3 = L4_3.floor
      L5_3 = L1_3 * 2
      L4_3 = L4_3(L5_3)
      L5_3 = math
      L5_3 = L5_3.floor
      L6_3 = L1_3 - 0.033
      L6_3 = L6_3 * 2
      L5_3 = L5_3(L6_3)
      if L4_3 > L5_3 then
        L4_3 = SendNUIMessage
        L5_3 = {}
        L5_3.type = "recordingTick"
        L5_3.elapsed = L1_3
        L4_3(L5_3)
      end
      L4_3 = Wait
      L5_3 = 33
      L4_3(L5_3)
    end
  end
  L3_2(L4_2)
  L3_2 = Config
  L3_2 = L3_2.RecordingStopKey
  if not L3_2 then
    L3_2 = 177
  end
  L4_2 = CreateThread
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3
    while true do
      L0_3 = L42_1
      if not L0_3 then
        break
      end
      L0_3 = L43_1
      L1_3 = L2_2
      if L0_3 ~= L1_3 then
        break
      end
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = L3_2
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = IsControlJustPressed
      L1_3 = 0
      L2_3 = L3_2
      L0_3 = L0_3(L1_3, L2_3)
      if not L0_3 then
        L0_3 = IsDisabledControlJustPressed
        L1_3 = 0
        L2_3 = L3_2
        L0_3 = L0_3(L1_3, L2_3)
        if not L0_3 then
          goto lbl_28
        end
      end
      L0_3 = stopSoloRecording
      L0_3()
      do return end
      ::lbl_28::
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
    end
  end
  L4_2(L5_2)
  L4_2 = print
  L5_2 = "[Cinematics] Solo layer recording started (Layer "
  L6_2 = L2_2
  L7_2 = ")"
  L5_2 = L5_2 .. L6_2 .. L7_2
  L4_2(L5_2)
end
beginSoloRecording = L66_1
function L66_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = L42_1
  if not L0_2 then
    return
  end
  L0_2 = false
  L42_1 = L0_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.type = "recordingStopped"
  L0_2(L1_2)
  L0_2 = L43_1
  L1_2 = nil
  L43_1 = L1_2
  if L0_2 then
    L1_2 = L40_1
    L1_2 = L1_2[L0_2]
    if L1_2 then
      goto lbl_22
    end
  end
  do return end
  ::lbl_22::
  L1_2 = L40_1
  L1_2 = L1_2[L0_2]
  L2_2 = L1_2.vehicleRec
  L3_2 = L2_2.frames
  L3_2 = #L3_2
  if L3_2 < 2 then
    L3_2 = table
    L3_2 = L3_2.remove
    L4_2 = L40_1
    L5_2 = L0_2
    L3_2(L4_2, L5_2)
    L3_2 = print
    L4_2 = "[Cinematics] Solo recording too short, discarded."
    L3_2(L4_2)
    L3_2 = openUI
    L3_2()
    return
  end
  L1_2.startSec = 0.0
  L1_2.endSec = nil
  L1_2.trimInSec = 0.0
  L3_2 = print
  L4_2 = "[Cinematics] Solo layer %d saved: %.1fs, %d frames"
  L5_2 = L4_2
  L4_2 = L4_2.format
  L6_2 = L0_2
  L7_2 = L2_2.duration
  L8_2 = L2_2.frames
  L8_2 = #L8_2
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = SendNUIMessage
  L4_2 = {}
  L4_2.type = "recordingFinished"
  L3_2(L4_2)
  L3_2 = openUI
  L3_2()
end
stopSoloRecording = L66_1
function L66_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = Config
  L0_2 = L0_2.DefaultFPS
  L1_2 = {}
  L2_2 = ipairs
  L3_2 = L40_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.vehicleRec
    L9_2 = GetDisplayNameFromVehicleModel
    L10_2 = L8_2.vehicleModel
    L9_2 = L9_2(L10_2)
    if "CARNOTFOUND" == L9_2 then
      L10_2 = tostring
      L11_2 = L8_2.vehicleModel
      L10_2 = L10_2(L11_2)
      L9_2 = L10_2
    end
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = L1_2
    L12_2 = {}
    L13_2 = L7_2.id
    L12_2.id = L13_2
    L13_2 = L7_2.name
    L12_2.name = L13_2
    L14_2 = L9_2
    L13_2 = L9_2.lower
    L13_2 = L13_2(L14_2)
    L12_2.model = L13_2
    L13_2 = L8_2.duration
    L12_2.duration = L13_2
    L13_2 = math
    L13_2 = L13_2.floor
    L14_2 = L8_2.duration
    L14_2 = L14_2 * L0_2
    L13_2 = L13_2(L14_2)
    L12_2.totalFrames = L13_2
    L13_2 = math
    L13_2 = L13_2.floor
    L14_2 = L7_2.startSec
    L14_2 = L14_2 * L0_2
    L13_2 = L13_2(L14_2)
    L12_2.startFrame = L13_2
    L13_2 = L7_2.endSec
    if L13_2 then
      L13_2 = math
      L13_2 = L13_2.floor
      L14_2 = L7_2.endSec
      L14_2 = L14_2 * L0_2
      L13_2 = L13_2(L14_2)
      if L13_2 then
        goto lbl_59
      end
    end
    L13_2 = nil
    ::lbl_59::
    L12_2.endFrame = L13_2
    L13_2 = math
    L13_2 = L13_2.floor
    L14_2 = L7_2.trimInSec
    L14_2 = L14_2 * L0_2
    L13_2 = L13_2(L14_2)
    L12_2.trimInFrame = L13_2
    L10_2(L11_2, L12_2)
  end
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.type = "overlayLayersLoaded"
  L3_2.layers = L1_2
  L2_2(L3_2)
end
sendOverlayLayersToJS = L66_1
function L66_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L40_1
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    return
  end
  L2_2 = L1_2.vehicleSpawning
  if L2_2 then
    return
  end
  L2_2 = L1_2.vehicleSpawn
  if L2_2 then
    L2_2 = DoesEntityExist
    L3_2 = L1_2.vehicleSpawn
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = DeleteEntity
      L3_2 = L1_2.vehicleSpawn
      L2_2(L3_2)
      L1_2.vehicleSpawn = nil
    end
  end
  L1_2.vehicleSpawning = true
  L2_2 = L1_2.vehicleRec
  L3_2 = L2_2.vehicleModel
  L4_2 = RequestModel
  L5_2 = L3_2
  L4_2(L5_2)
  L4_2 = CreateThread
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    while true do
      L0_3 = HasModelLoaded
      L1_3 = L3_2
      L0_3 = L0_3(L1_3)
      if L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 50
      L0_3(L1_3)
    end
    L1_3 = A0_2
    L0_3 = L40_1
    L0_3 = L0_3[L1_3]
    if L0_3 then
      L1_3 = A0_2
      L0_3 = L40_1
      L0_3 = L0_3[L1_3]
      L0_3 = L0_3.vehicleSpawning
      if L0_3 then
        goto lbl_25
      end
    end
    L0_3 = SetModelAsNoLongerNeeded
    L1_3 = L3_2
    L0_3(L1_3)
    do return end
    ::lbl_25::
    L0_3 = L2_2.frames
    L0_3 = L0_3[1]
    L1_3 = CreateVehicle
    L2_3 = L3_2
    L3_3 = L0_3.px
    L4_3 = L0_3.py
    L5_3 = L0_3.pz
    L6_3 = L0_3.rz
    L7_3 = false
    L8_3 = false
    L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
    L2_3 = SetEntityRotation
    L3_3 = L1_3
    L4_3 = L0_3.rx
    L5_3 = L0_3.ry
    L6_3 = L0_3.rz
    L7_3 = 2
    L8_3 = true
    L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
    L2_3 = SetEntityInvincible
    L3_3 = L1_3
    L4_3 = true
    L2_3(L3_3, L4_3)
    L2_3 = FreezeEntityPosition
    L3_3 = L1_3
    L4_3 = true
    L2_3(L3_3, L4_3)
    L2_3 = SetVehicleEngineOn
    L3_3 = L1_3
    L4_3 = true
    L5_3 = true
    L6_3 = false
    L2_3(L3_3, L4_3, L5_3, L6_3)
    L2_3 = SetVehicleLights
    L3_3 = L1_3
    L4_3 = 2
    L2_3(L3_3, L4_3)
    L2_3 = L2_2.plate
    if L2_3 then
      L2_3 = L2_2.plate
      if "" ~= L2_3 then
        L2_3 = SetVehicleNumberPlateText
        L3_3 = L1_3
        L4_3 = L2_2.plate
        L2_3(L3_3, L4_3)
      end
    end
    L2_3 = L2_2.props
    if L2_3 then
      L2_3 = applyVehicleProps
      L3_3 = L1_3
      L4_3 = L2_2.props
      L2_3(L3_3, L4_3)
    end
    L2_3 = SetEntityMotionBlur
    L3_3 = L1_3
    L4_3 = L19_1
    L2_3(L3_3, L4_3)
    L2_3 = SetModelAsNoLongerNeeded
    L3_3 = L3_2
    L2_3(L3_3)
    L1_2.vehicleSpawn = L1_3
    L1_2.vehicleSpawning = false
  end
  L4_2(L5_2)
end
spawnOverlayVehicle = L66_1
function L66_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2
  L1_2 = L40_1
  L1_2 = #L1_2
  if 0 == L1_2 then
    return
  end
  L1_2 = Config
  L1_2 = L1_2.DefaultFPS
  L2_2 = 1
  L3_2 = L40_1
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L40_1
    L6_2 = L6_2[L5_2]
    if not L6_2 then
    else
      L7_2 = L6_2.vehicleRec
      L8_2 = L7_2.frames
      L9_2 = #L8_2
      if L9_2 < 2 then
      else
        L10_2 = A0_2 / L1_2
        L11_2 = L6_2.endSec
        if not L11_2 then
          L11_2 = L6_2.startSec
          L12_2 = L7_2.duration
          L11_2 = L11_2 + L12_2
          L12_2 = L6_2.trimInSec
          L11_2 = L11_2 - L12_2
        end
        L12_2 = L6_2.startSec
        if L10_2 < L12_2 or L10_2 > L11_2 then
          L12_2 = L6_2.vehicleSpawn
          if L12_2 then
            L12_2 = DoesEntityExist
            L13_2 = L6_2.vehicleSpawn
            L12_2 = L12_2(L13_2)
            if L12_2 then
              L12_2 = DeleteEntity
              L13_2 = L6_2.vehicleSpawn
              L12_2(L13_2)
              L6_2.vehicleSpawn = nil
              L6_2.vehicleSpawning = false
            end
          end
        else
          L12_2 = L6_2.startSec
          L12_2 = L10_2 - L12_2
          L13_2 = L6_2.trimInSec
          L12_2 = L12_2 + L13_2
          L13_2 = L7_2.duration
          if not (L12_2 > L13_2) then
            L13_2 = L8_2[1]
            L13_2 = L13_2.t
            if not (L12_2 < L13_2) then
              goto lbl_82
            end
          end
          L13_2 = L6_2.vehicleSpawn
          if L13_2 then
            L13_2 = DoesEntityExist
            L14_2 = L6_2.vehicleSpawn
            L13_2 = L13_2(L14_2)
            if L13_2 then
              L13_2 = DeleteEntity
              L14_2 = L6_2.vehicleSpawn
              L13_2(L14_2)
              L6_2.vehicleSpawn = nil
              L6_2.vehicleSpawning = false
              goto lbl_232
              ::lbl_82::
              L13_2 = L6_2.vehicleSpawn
              if L13_2 then
                L13_2 = DoesEntityExist
                L14_2 = L6_2.vehicleSpawn
                L13_2 = L13_2(L14_2)
                if L13_2 then
                  goto lbl_94
                end
              end
              L13_2 = spawnOverlayVehicle
              L14_2 = L5_2
              L13_2(L14_2)
              goto lbl_232
              ::lbl_94::
              L13_2 = L6_2.vehicleSpawn
              L14_2 = 1
              while true do
                L15_2 = L9_2 - 1
                if not (L14_2 < L15_2) then
                  break
                end
                L15_2 = L14_2 + 1
                L15_2 = L8_2[L15_2]
                L15_2 = L15_2.t
                if not (L12_2 >= L15_2) then
                  break
                end
                L14_2 = L14_2 + 1
              end
              L15_2 = L8_2[L14_2]
              L16_2 = math
              L16_2 = L16_2.min
              L17_2 = L14_2 + 1
              L18_2 = L9_2
              L16_2 = L16_2(L17_2, L18_2)
              L16_2 = L8_2[L16_2]
              L17_2 = L16_2.t
              L18_2 = L15_2.t
              L17_2 = L17_2 - L18_2
              L18_2 = 0.001
              if L17_2 > L18_2 then
                L18_2 = math
                L18_2 = L18_2.max
                L19_2 = 0.0
                L20_2 = math
                L20_2 = L20_2.min
                L21_2 = 1.0
                L22_2 = L15_2.t
                L22_2 = L12_2 - L22_2
                L22_2 = L22_2 / L17_2
                L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2 = L20_2(L21_2, L22_2)
                L18_2 = L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2)
                if L18_2 then
                  goto lbl_140
                end
              end
              L18_2 = 0.0
              ::lbl_140::
              L19_2 = L15_2.px
              L20_2 = L16_2.px
              L21_2 = L15_2.px
              L20_2 = L20_2 - L21_2
              L20_2 = L20_2 * L18_2
              L19_2 = L19_2 + L20_2
              L20_2 = L15_2.py
              L21_2 = L16_2.py
              L22_2 = L15_2.py
              L21_2 = L21_2 - L22_2
              L21_2 = L21_2 * L18_2
              L20_2 = L20_2 + L21_2
              L21_2 = L15_2.pz
              L22_2 = L16_2.pz
              L23_2 = L15_2.pz
              L22_2 = L22_2 - L23_2
              L22_2 = L22_2 * L18_2
              L21_2 = L21_2 + L22_2
              L22_2 = L7_2.suspensionDelta
              if not L22_2 then
                L22_2 = 0.0
              end
              L21_2 = L21_2 + L22_2
              L22_2 = lerpAngle
              L23_2 = L15_2.rx
              L24_2 = L16_2.rx
              L25_2 = L18_2
              L22_2 = L22_2(L23_2, L24_2, L25_2)
              L23_2 = lerpAngle
              L24_2 = L15_2.ry
              L25_2 = L16_2.ry
              L26_2 = L18_2
              L23_2 = L23_2(L24_2, L25_2, L26_2)
              L24_2 = lerpAngle
              L25_2 = L15_2.rz
              L26_2 = L16_2.rz
              L27_2 = L18_2
              L24_2 = L24_2(L25_2, L26_2, L27_2)
              L25_2 = L15_2.steer
              L26_2 = L16_2.steer
              L27_2 = L15_2.steer
              L26_2 = L26_2 - L27_2
              L26_2 = L26_2 * L18_2
              L25_2 = L25_2 + L26_2
              L26_2 = FreezeEntityPosition
              L27_2 = L13_2
              L28_2 = false
              L26_2(L27_2, L28_2)
              L26_2 = SetEntityCoordsNoOffset
              L27_2 = L13_2
              L28_2 = L19_2
              L29_2 = L20_2
              L30_2 = L21_2
              L31_2 = false
              L32_2 = false
              L33_2 = false
              L26_2(L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2)
              L26_2 = SetEntityRotation
              L27_2 = L13_2
              L28_2 = L22_2
              L29_2 = L23_2
              L30_2 = L24_2
              L31_2 = 2
              L32_2 = true
              L26_2(L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
              L26_2 = SetVehicleSteeringAngle
              L27_2 = L13_2
              L28_2 = L25_2
              L26_2(L27_2, L28_2)
              L26_2 = SetEntityVelocity
              L27_2 = L13_2
              L28_2 = 0.0
              L29_2 = 0.0
              L30_2 = 0.0
              L26_2(L27_2, L28_2, L29_2, L30_2)
              L26_2 = FreezeEntityPosition
              L27_2 = L13_2
              L28_2 = true
              L26_2(L27_2, L28_2)
            end
          end
        end
      end
    end
    ::lbl_232::
  end
end
previewOverlayAtFrame = L66_1
function L66_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = ipairs
  L1_2 = L40_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L5_2.vehicleSpawn
    if L6_2 then
      L6_2 = DoesEntityExist
      L7_2 = L5_2.vehicleSpawn
      L6_2 = L6_2(L7_2)
      if L6_2 then
        L6_2 = DeleteEntity
        L7_2 = L5_2.vehicleSpawn
        L6_2(L7_2)
      end
    end
    L5_2.vehicleSpawn = nil
    L5_2.vehicleSpawning = false
    L5_2.vehicleFrameIdx = 1
  end
end
cleanupOverlaySpawns = L66_1
function L66_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = L14_1
  L0_2 = #L0_2
  if 0 == L0_2 then
    L0_2 = L26_1
    L0_2 = #L0_2
    if 0 == L0_2 then
      return
    end
  end
  L0_2 = pairs
  L1_2 = L16_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = DoesEntityExist
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = DeleteEntity
      L7_2 = L5_2
      L6_2(L7_2)
    end
  end
  L0_2 = {}
  L16_1 = L0_2
  L0_2 = {}
  L17_1 = L0_2
  L0_2 = {}
  L18_1 = L0_2
  L0_2 = 1
  L1_2 = L14_1
  L1_2 = #L1_2
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = L18_1
    L4_2[L3_2] = 1
  end
  L0_2 = 0.0
  L1_2 = ipairs
  L2_2 = L14_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.duration
    if L0_2 < L7_2 then
      L0_2 = L6_2.duration
    end
  end
  L1_2 = ipairs
  L2_2 = L26_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.duration
    if L0_2 < L7_2 then
      L0_2 = L6_2.duration
    end
  end
  L1_2 = Config
  L1_2 = L1_2.DefaultFPS
  L2_2 = {}
  L3_2 = ipairs
  L4_2 = L14_1
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = GetDisplayNameFromVehicleModel
    L10_2 = L8_2.vehicleModel
    L9_2 = L9_2(L10_2)
    if "CARNOTFOUND" == L9_2 then
      L10_2 = tostring
      L11_2 = L8_2.vehicleModel
      L10_2 = L10_2(L11_2)
      L9_2 = L10_2
    end
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = L2_2
    L12_2 = {}
    L12_2.type = "vehicle"
    L12_2.idx = L7_2
    L14_2 = L9_2
    L13_2 = L9_2.lower
    L13_2 = L13_2(L14_2)
    L12_2.model = L13_2
    L12_2.isPlayer = false
    L10_2(L11_2, L12_2)
  end
  L3_2 = ipairs
  L4_2 = L26_1
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L2_2
    L11_2 = {}
    L11_2.type = "ped"
    L11_2.idx = L7_2
    L12_2 = tostring
    L13_2 = L8_2.pedModel
    L12_2 = L12_2(L13_2)
    L11_2.model = L12_2
    L12_2 = L8_2.isPlayer
    if not L12_2 then
      L12_2 = false
    end
    L11_2.isPlayer = L12_2
    L9_2(L10_2, L11_2)
  end
  L3_2 = SendNUIMessage
  L4_2 = {}
  L4_2.type = "vehicleRecordingLoaded"
  L4_2.duration = L0_2
  L5_2 = math
  L5_2 = L5_2.floor
  L6_2 = L0_2 * L1_2
  L5_2 = L5_2(L6_2)
  L4_2.totalFrames = L5_2
  L5_2 = L14_1
  L5_2 = #L5_2
  L4_2.count = L5_2
  L5_2 = L26_1
  L5_2 = #L5_2
  L4_2.pedCount = L5_2
  L5_2 = math
  L5_2 = L5_2.floor
  L6_2 = L22_1
  L6_2 = L6_2 * L1_2
  L5_2 = L5_2(L6_2)
  L4_2.startFrame = L5_2
  L5_2 = L23_1
  if L5_2 then
    L5_2 = math
    L5_2 = L5_2.floor
    L6_2 = L23_1
    L6_2 = L6_2 * L1_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      goto lbl_157
    end
  end
  L5_2 = nil
  ::lbl_157::
  L4_2.endFrame = L5_2
  L5_2 = math
  L5_2 = L5_2.floor
  L6_2 = L24_1
  L6_2 = L6_2 * L1_2
  L5_2 = L5_2(L6_2)
  L4_2.trimInFrame = L5_2
  L4_2.entities = L2_2
  L3_2(L4_2)
end
spawnVehicleRecording = L66_1
function L66_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L17_1
  L1_2 = L1_2[A0_2]
  if L1_2 then
    return
  end
  L1_2 = L17_1
  L1_2[A0_2] = true
  L1_2 = L14_1
  L1_2 = L1_2[A0_2]
  L2_2 = L1_2.vehicleModel
  L3_2 = RequestModel
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    while true do
      L0_3 = HasModelLoaded
      L1_3 = L2_2
      L0_3 = L0_3(L1_3)
      if L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 50
      L0_3(L1_3)
    end
    L1_3 = A0_2
    L0_3 = L17_1
    L0_3 = L0_3[L1_3]
    if not L0_3 then
      L0_3 = SetModelAsNoLongerNeeded
      L1_3 = L2_2
      L0_3(L1_3)
      return
    end
    L0_3 = L1_2.frames
    L0_3 = L0_3[1]
    L1_3 = CreateVehicle
    L2_3 = L2_2
    L3_3 = L0_3.px
    L4_3 = L0_3.py
    L5_3 = L0_3.pz
    L6_3 = L0_3.rz
    L7_3 = false
    L8_3 = false
    L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
    L2_3 = SetEntityRotation
    L3_3 = L1_3
    L4_3 = L0_3.rx
    L5_3 = L0_3.ry
    L6_3 = L0_3.rz
    L7_3 = 2
    L8_3 = true
    L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
    L2_3 = SetEntityInvincible
    L3_3 = L1_3
    L4_3 = true
    L2_3(L3_3, L4_3)
    L2_3 = FreezeEntityPosition
    L3_3 = L1_3
    L4_3 = true
    L2_3(L3_3, L4_3)
    L2_3 = SetVehicleEngineOn
    L3_3 = L1_3
    L4_3 = true
    L5_3 = true
    L6_3 = false
    L2_3(L3_3, L4_3, L5_3, L6_3)
    L2_3 = SetVehicleLights
    L3_3 = L1_3
    L4_3 = 2
    L2_3(L3_3, L4_3)
    L2_3 = L1_2.plate
    if L2_3 then
      L2_3 = L1_2.plate
      if "" ~= L2_3 then
        L2_3 = SetVehicleNumberPlateText
        L3_3 = L1_3
        L4_3 = L1_2.plate
        L2_3(L3_3, L4_3)
      end
    end
    L2_3 = L1_2.props
    if L2_3 then
      L2_3 = applyVehicleProps
      L3_3 = L1_3
      L4_3 = L1_2.props
      L2_3(L3_3, L4_3)
    end
    L2_3 = SetEntityMotionBlur
    L3_3 = L1_3
    L4_3 = L19_1
    L2_3(L3_3, L4_3)
    L2_3 = SetModelAsNoLongerNeeded
    L3_3 = L2_2
    L2_3(L3_3)
    L3_3 = A0_2
    L2_3 = L16_1
    L2_3[L3_3] = L1_3
    L3_3 = A0_2
    L2_3 = L17_1
    L2_3[L3_3] = false
  end
  L3_2(L4_2)
end
spawnSingleVehicle = L66_1
function L66_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2
  L1_2 = L14_1
  L1_2 = #L1_2
  if 0 == L1_2 then
    return
  end
  L1_2 = Config
  L1_2 = L1_2.DefaultFPS
  L2_2 = A0_2 / L1_2
  L3_2 = 1
  L4_2 = L14_1
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L14_1
    L7_2 = L7_2[L6_2]
    L8_2 = L7_2.frames
    L9_2 = #L8_2
    if L9_2 < 2 then
    else
      L10_2 = L23_1
      if not L10_2 then
        L10_2 = L22_1
        L11_2 = L7_2.duration
        L10_2 = L10_2 + L11_2
        L11_2 = L24_1
        L10_2 = L10_2 - L11_2
      end
      L11_2 = L22_1
      if L2_2 < L11_2 or L2_2 > L10_2 then
        L11_2 = L16_1
        L11_2 = L11_2[L6_2]
        if L11_2 then
          L12_2 = DoesEntityExist
          L13_2 = L11_2
          L12_2 = L12_2(L13_2)
          if L12_2 then
            L12_2 = DeleteEntity
            L13_2 = L11_2
            L12_2(L13_2)
            L12_2 = L16_1
            L12_2[L6_2] = nil
            L12_2 = L17_1
            L12_2[L6_2] = false
          end
        end
      else
        L11_2 = L22_1
        L11_2 = L2_2 - L11_2
        L12_2 = L24_1
        L11_2 = L11_2 + L12_2
        L12_2 = L7_2.duration
        if not (L11_2 > L12_2) then
          L12_2 = L8_2[1]
          L12_2 = L12_2.t
          if not (L11_2 < L12_2) then
            goto lbl_84
          end
        end
        L12_2 = L16_1
        L12_2 = L12_2[L6_2]
        if L12_2 then
          L13_2 = DoesEntityExist
          L14_2 = L12_2
          L13_2 = L13_2(L14_2)
          if L13_2 then
            L13_2 = DeleteEntity
            L14_2 = L12_2
            L13_2(L14_2)
            L13_2 = L16_1
            L13_2[L6_2] = nil
            L13_2 = L17_1
            L13_2[L6_2] = false
            goto lbl_237
            ::lbl_84::
            L12_2 = L16_1
            L12_2 = L12_2[L6_2]
            if L12_2 then
              L12_2 = DoesEntityExist
              L13_2 = L16_1
              L13_2 = L13_2[L6_2]
              L12_2 = L12_2(L13_2)
              if L12_2 then
                goto lbl_98
              end
            end
            L12_2 = spawnSingleVehicle
            L13_2 = L6_2
            L12_2(L13_2)
            goto lbl_237
            ::lbl_98::
            L12_2 = L16_1
            L12_2 = L12_2[L6_2]
            L13_2 = 1
            while true do
              L14_2 = L9_2 - 1
              if not (L13_2 < L14_2) then
                break
              end
              L14_2 = L13_2 + 1
              L14_2 = L8_2[L14_2]
              L14_2 = L14_2.t
              if not (L11_2 >= L14_2) then
                break
              end
              L13_2 = L13_2 + 1
            end
            L14_2 = L8_2[L13_2]
            L15_2 = math
            L15_2 = L15_2.min
            L16_2 = L13_2 + 1
            L17_2 = L9_2
            L15_2 = L15_2(L16_2, L17_2)
            L15_2 = L8_2[L15_2]
            L16_2 = L15_2.t
            L17_2 = L14_2.t
            L16_2 = L16_2 - L17_2
            L17_2 = 0.001
            if L16_2 > L17_2 then
              L17_2 = math
              L17_2 = L17_2.max
              L18_2 = 0.0
              L19_2 = math
              L19_2 = L19_2.min
              L20_2 = 1.0
              L21_2 = L14_2.t
              L21_2 = L11_2 - L21_2
              L21_2 = L21_2 / L16_2
              L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L19_2(L20_2, L21_2)
              L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
              if L17_2 then
                goto lbl_145
              end
            end
            L17_2 = 0.0
            ::lbl_145::
            L18_2 = L14_2.px
            L19_2 = L15_2.px
            L20_2 = L14_2.px
            L19_2 = L19_2 - L20_2
            L19_2 = L19_2 * L17_2
            L18_2 = L18_2 + L19_2
            L19_2 = L14_2.py
            L20_2 = L15_2.py
            L21_2 = L14_2.py
            L20_2 = L20_2 - L21_2
            L20_2 = L20_2 * L17_2
            L19_2 = L19_2 + L20_2
            L20_2 = L14_2.pz
            L21_2 = L15_2.pz
            L22_2 = L14_2.pz
            L21_2 = L21_2 - L22_2
            L21_2 = L21_2 * L17_2
            L20_2 = L20_2 + L21_2
            L21_2 = L7_2.suspensionDelta
            if not L21_2 then
              L21_2 = 0.0
            end
            L20_2 = L20_2 + L21_2
            L21_2 = lerpAngle
            L22_2 = L14_2.rx
            L23_2 = L15_2.rx
            L24_2 = L17_2
            L21_2 = L21_2(L22_2, L23_2, L24_2)
            L22_2 = lerpAngle
            L23_2 = L14_2.ry
            L24_2 = L15_2.ry
            L25_2 = L17_2
            L22_2 = L22_2(L23_2, L24_2, L25_2)
            L23_2 = lerpAngle
            L24_2 = L14_2.rz
            L25_2 = L15_2.rz
            L26_2 = L17_2
            L23_2 = L23_2(L24_2, L25_2, L26_2)
            L24_2 = L14_2.steer
            L25_2 = L15_2.steer
            L26_2 = L14_2.steer
            L25_2 = L25_2 - L26_2
            L25_2 = L25_2 * L17_2
            L24_2 = L24_2 + L25_2
            L25_2 = FreezeEntityPosition
            L26_2 = L12_2
            L27_2 = false
            L25_2(L26_2, L27_2)
            L25_2 = SetEntityCoordsNoOffset
            L26_2 = L12_2
            L27_2 = L18_2
            L28_2 = L19_2
            L29_2 = L20_2
            L30_2 = false
            L31_2 = false
            L32_2 = false
            L25_2(L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
            L25_2 = SetEntityRotation
            L26_2 = L12_2
            L27_2 = L21_2
            L28_2 = L22_2
            L29_2 = L23_2
            L30_2 = 2
            L31_2 = true
            L25_2(L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
            L25_2 = SetVehicleSteeringAngle
            L26_2 = L12_2
            L27_2 = L24_2
            L25_2(L26_2, L27_2)
            L25_2 = SetEntityVelocity
            L26_2 = L12_2
            L27_2 = 0.0
            L28_2 = 0.0
            L29_2 = 0.0
            L25_2(L26_2, L27_2, L28_2, L29_2)
            L25_2 = FreezeEntityPosition
            L26_2 = L12_2
            L27_2 = true
            L25_2(L26_2, L27_2)
          end
        end
      end
    end
    ::lbl_237::
  end
end
previewVehicleAtFrame = L66_1
function L66_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = L26_1
  L0_2 = #L0_2
  if 0 == L0_2 then
    return
  end
  L0_2 = pairs
  L1_2 = L27_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = DoesEntityExist
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = DeleteEntity
      L7_2 = L5_2
      L6_2(L7_2)
    end
  end
  L0_2 = {}
  L27_1 = L0_2
  L0_2 = {}
  L28_1 = L0_2
  L0_2 = {}
  L29_1 = L0_2
  L0_2 = {}
  L30_1 = L0_2
  L0_2 = {}
  L31_1 = L0_2
  L0_2 = {}
  L32_1 = L0_2
  L0_2 = {}
  L33_1 = L0_2
  L0_2 = {}
  L34_1 = L0_2
  L0_2 = {}
  L35_1 = L0_2
  L0_2 = {}
  L36_1 = L0_2
  L0_2 = {}
  L37_1 = L0_2
  L0_2 = {}
  L38_1 = L0_2
  L0_2 = 1
  L1_2 = L26_1
  L1_2 = #L1_2
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = L29_1
    L4_2[L3_2] = 1
  end
end
initPedRecording = L66_1
function L66_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L28_1
  L1_2 = L1_2[A0_2]
  if L1_2 then
    return
  end
  L1_2 = L28_1
  L1_2[A0_2] = true
  L1_2 = L26_1
  L1_2 = L1_2[A0_2]
  L2_2 = L1_2.pedModel
  L3_2 = RequestModel
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    while true do
      L0_3 = HasModelLoaded
      L1_3 = L2_2
      L0_3 = L0_3(L1_3)
      if L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 50
      L0_3(L1_3)
    end
    L1_3 = A0_2
    L0_3 = L28_1
    L0_3 = L0_3[L1_3]
    if not L0_3 then
      L0_3 = SetModelAsNoLongerNeeded
      L1_3 = L2_2
      L0_3(L1_3)
      return
    end
    L0_3 = nil
    L1_3 = ipairs
    L2_3 = L1_2.frames
    L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
    for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
      L7_3 = L6_3.inVehicle
      if not L7_3 then
        L0_3 = L6_3
        break
      end
    end
    if not L0_3 then
      L1_3 = {}
      L1_3.px = 0.0
      L1_3.py = 0.0
      L1_3.pz = 0.0
      L1_3.rz = 0.0
      L0_3 = L1_3
    end
    L1_3 = CreatePed
    L2_3 = 4
    L3_3 = L2_2
    L4_3 = L0_3.px
    L5_3 = L0_3.py
    L6_3 = L0_3.pz
    L7_3 = L0_3.rz
    L8_3 = false
    L9_3 = false
    L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
    L2_3 = L1_2.appearance
    if L2_3 then
      L2_3 = applyPedAppearance
      L3_3 = L1_3
      L4_3 = L1_2.appearance
      L2_3(L3_3, L4_3)
    end
    L2_3 = SetEntityInvincible
    L3_3 = L1_3
    L4_3 = true
    L2_3(L3_3, L4_3)
    L2_3 = FreezeEntityPosition
    L3_3 = L1_3
    L4_3 = true
    L2_3(L3_3, L4_3)
    L2_3 = SetBlockingOfNonTemporaryEvents
    L3_3 = L1_3
    L4_3 = true
    L2_3(L3_3, L4_3)
    L2_3 = SetPedCanRagdoll
    L3_3 = L1_3
    L4_3 = false
    L2_3(L3_3, L4_3)
    L2_3 = SetEntityMotionBlur
    L3_3 = L1_3
    L4_3 = L19_1
    L2_3(L3_3, L4_3)
    L2_3 = SetModelAsNoLongerNeeded
    L3_3 = L2_2
    L2_3(L3_3)
    L3_3 = A0_2
    L2_3 = L27_1
    L2_3[L3_3] = L1_3
    L3_3 = A0_2
    L2_3 = L28_1
    L2_3[L3_3] = false
  end
  L3_2(L4_2)
end
spawnSinglePed = L66_1
function L66_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2
  L1_2 = L26_1
  L1_2 = #L1_2
  if 0 == L1_2 then
    return
  end
  L1_2 = Config
  L1_2 = L1_2.DefaultFPS
  L2_2 = A0_2 / L1_2
  L3_2 = 1
  L4_2 = L26_1
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L26_1
    L7_2 = L7_2[L6_2]
    L8_2 = L7_2.frames
    L9_2 = #L8_2
    if L9_2 < 2 then
    else
      L10_2 = L23_1
      if not L10_2 then
        L10_2 = L22_1
        L11_2 = L7_2.duration
        L10_2 = L10_2 + L11_2
        L11_2 = L24_1
        L10_2 = L10_2 - L11_2
      end
      L11_2 = L22_1
      if L2_2 < L11_2 or L2_2 > L10_2 then
        L11_2 = L27_1
        L11_2 = L11_2[L6_2]
        if L11_2 then
          L12_2 = DoesEntityExist
          L13_2 = L11_2
          L12_2 = L12_2(L13_2)
          if L12_2 then
            L12_2 = DeleteEntity
            L13_2 = L11_2
            L12_2(L13_2)
            L12_2 = L27_1
            L12_2[L6_2] = nil
            L12_2 = L28_1
            L12_2[L6_2] = false
          end
        end
      else
        L11_2 = L22_1
        L11_2 = L2_2 - L11_2
        L12_2 = L24_1
        L11_2 = L11_2 + L12_2
        L12_2 = L7_2.duration
        if not (L11_2 > L12_2) then
          L12_2 = L8_2[1]
          L12_2 = L12_2.t
          if not (L11_2 < L12_2) then
            goto lbl_84
          end
        end
        L12_2 = L27_1
        L12_2 = L12_2[L6_2]
        if L12_2 then
          L13_2 = DoesEntityExist
          L14_2 = L12_2
          L13_2 = L13_2(L14_2)
          if L13_2 then
            L13_2 = DeleteEntity
            L14_2 = L12_2
            L13_2(L14_2)
            L13_2 = L27_1
            L13_2[L6_2] = nil
            L13_2 = L28_1
            L13_2[L6_2] = false
            goto lbl_259
            ::lbl_84::
            L12_2 = L27_1
            L12_2 = L12_2[L6_2]
            if L12_2 then
              L12_2 = DoesEntityExist
              L13_2 = L27_1
              L13_2 = L13_2[L6_2]
              L12_2 = L12_2(L13_2)
              if L12_2 then
                goto lbl_98
              end
            end
            L12_2 = spawnSinglePed
            L13_2 = L6_2
            L12_2(L13_2)
            goto lbl_259
            ::lbl_98::
            L12_2 = L27_1
            L12_2 = L12_2[L6_2]
            L13_2 = 1
            while true do
              L14_2 = L9_2 - 1
              if not (L13_2 < L14_2) then
                break
              end
              L14_2 = L13_2 + 1
              L14_2 = L8_2[L14_2]
              L14_2 = L14_2.t
              if not (L11_2 >= L14_2) then
                break
              end
              L13_2 = L13_2 + 1
            end
            L14_2 = L8_2[L13_2]
            L15_2 = math
            L15_2 = L15_2.min
            L16_2 = L13_2 + 1
            L17_2 = L9_2
            L15_2 = L15_2(L16_2, L17_2)
            L15_2 = L8_2[L15_2]
            L16_2 = L14_2.inVehicle
            if L16_2 then
              L17_2 = L14_2.vehRecIdx
              L16_2 = L16_1
              L16_2 = L16_2[L17_2]
              if L16_2 then
                L17_2 = DoesEntityExist
                L18_2 = L16_2
                L17_2 = L17_2(L18_2)
                if L17_2 then
                  L17_2 = SetPedIntoVehicle
                  L18_2 = L12_2
                  L19_2 = L16_2
                  L20_2 = L14_2.seat
                  L17_2(L18_2, L19_2, L20_2)
                end
              end
            else
              L16_2 = L15_2.t
              L17_2 = L14_2.t
              L16_2 = L16_2 - L17_2
              L17_2 = 0.001
              if L16_2 > L17_2 then
                L17_2 = math
                L17_2 = L17_2.max
                L18_2 = 0.0
                L19_2 = math
                L19_2 = L19_2.min
                L20_2 = 1.0
                L21_2 = L14_2.t
                L21_2 = L11_2 - L21_2
                L21_2 = L21_2 / L16_2
                L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2 = L19_2(L20_2, L21_2)
                L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2)
                if L17_2 then
                  goto lbl_164
                end
              end
              L17_2 = 0.0
              ::lbl_164::
              L18_2 = L15_2.inVehicle
              if not L18_2 then
                L18_2 = L15_2.px
                if L18_2 then
                  goto lbl_171
                end
              end
              L18_2 = L14_2.px
              ::lbl_171::
              L19_2 = L15_2.inVehicle
              if not L19_2 then
                L19_2 = L15_2.py
                if L19_2 then
                  goto lbl_178
                end
              end
              L19_2 = L14_2.py
              ::lbl_178::
              L20_2 = L15_2.inVehicle
              if not L20_2 then
                L20_2 = L15_2.pz
                if L20_2 then
                  goto lbl_185
                end
              end
              L20_2 = L14_2.pz
              ::lbl_185::
              L21_2 = L15_2.inVehicle
              if not L21_2 then
                L21_2 = L15_2.rz
                if L21_2 then
                  goto lbl_192
                end
              end
              L21_2 = L14_2.rz
              ::lbl_192::
              L22_2 = L14_2.px
              L23_2 = L14_2.px
              L23_2 = L18_2 - L23_2
              L23_2 = L23_2 * L17_2
              L22_2 = L22_2 + L23_2
              L23_2 = L14_2.py
              L24_2 = L14_2.py
              L24_2 = L19_2 - L24_2
              L24_2 = L24_2 * L17_2
              L23_2 = L23_2 + L24_2
              L24_2 = L14_2.pz
              L25_2 = L14_2.pz
              L25_2 = L20_2 - L25_2
              L25_2 = L25_2 * L17_2
              L24_2 = L24_2 + L25_2
              L25_2 = lerpAngle
              L26_2 = L14_2.rz
              L27_2 = L21_2
              L28_2 = L17_2
              L25_2 = L25_2(L26_2, L27_2, L28_2)
              L26_2 = FreezeEntityPosition
              L27_2 = L12_2
              L28_2 = false
              L26_2(L27_2, L28_2)
              L26_2 = SetEntityCoordsNoOffset
              L27_2 = L12_2
              L28_2 = L22_2
              L29_2 = L23_2
              L30_2 = L24_2
              L31_2 = false
              L32_2 = false
              L33_2 = false
              L26_2(L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2)
              L26_2 = SetEntityHeading
              L27_2 = L12_2
              L28_2 = L25_2
              L26_2(L27_2, L28_2)
              L26_2 = SetEntityVelocity
              L27_2 = L12_2
              L28_2 = 0.0
              L29_2 = 0.0
              L30_2 = 0.0
              L26_2(L27_2, L28_2, L29_2, L30_2)
              L26_2 = FreezeEntityPosition
              L27_2 = L12_2
              L28_2 = true
              L26_2(L27_2, L28_2)
              L26_2 = L14_2.weapon
              if L26_2 then
                L26_2 = L14_2.weapon
                if 0 ~= L26_2 then
                  L26_2 = SetCurrentPedWeapon
                  L27_2 = L12_2
                  L28_2 = L14_2.weapon
                  L29_2 = true
                  L26_2(L27_2, L28_2, L29_2)
                end
              end
            end
          end
        end
      end
    end
    ::lbl_259::
  end
end
previewPedAtFrame = L66_1
function L66_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2
  L5_2 = math
  L5_2 = L5_2.rad
  L6_2 = A2_2.heading
  if not L6_2 then
    L6_2 = 0.0
  end
  L5_2 = L5_2(L6_2)
  L6_2 = vector3
  L7_2 = math
  L7_2 = L7_2.cos
  L8_2 = L5_2
  L7_2 = L7_2(L8_2)
  L7_2 = -L7_2
  L8_2 = math
  L8_2 = L8_2.sin
  L9_2 = L5_2
  L8_2 = L8_2(L9_2)
  L9_2 = 0.0
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = vector3
  L8_2 = A2_2.x
  L9_2 = A2_2.y
  L10_2 = A2_2.z
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L8_2 = A3_2 / 2.0
  L9_2 = A4_2 / 2.0
  L10_2 = -L8_2
  L10_2 = L6_2 * L10_2
  L10_2 = L7_2 + L10_2
  L11_2 = vector3
  L12_2 = 0.0
  L13_2 = 0.0
  L14_2 = L9_2
  L11_2 = L11_2(L12_2, L13_2, L14_2)
  L10_2 = L10_2 + L11_2
  L11_2 = L6_2 * L8_2
  L11_2 = L7_2 + L11_2
  L12_2 = vector3
  L13_2 = 0.0
  L14_2 = 0.0
  L15_2 = L9_2
  L12_2 = L12_2(L13_2, L14_2, L15_2)
  L11_2 = L11_2 + L12_2
  L12_2 = -L8_2
  L12_2 = L6_2 * L12_2
  L12_2 = L7_2 + L12_2
  L13_2 = vector3
  L14_2 = 0.0
  L15_2 = 0.0
  L16_2 = L9_2
  L13_2 = L13_2(L14_2, L15_2, L16_2)
  L12_2 = L12_2 - L13_2
  L13_2 = L6_2 * L8_2
  L13_2 = L7_2 + L13_2
  L14_2 = vector3
  L15_2 = 0.0
  L16_2 = 0.0
  L17_2 = L9_2
  L14_2 = L14_2(L15_2, L16_2, L17_2)
  L13_2 = L13_2 - L14_2
  L14_2 = DrawSpritePoly
  L15_2 = L13_2.x
  L16_2 = L13_2.y
  L17_2 = L13_2.z
  L18_2 = L11_2.x
  L19_2 = L11_2.y
  L20_2 = L11_2.z
  L21_2 = L10_2.x
  L22_2 = L10_2.y
  L23_2 = L10_2.z
  L24_2 = 255
  L25_2 = 255
  L26_2 = 255
  L27_2 = 255
  L28_2 = A0_2
  L29_2 = A1_2
  L30_2 = 1.0
  L31_2 = 1.0
  L32_2 = 1.0
  L33_2 = 1.0
  L34_2 = 0.0
  L35_2 = 1.0
  L36_2 = 0.0
  L37_2 = 0.0
  L38_2 = 1.0
  L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2)
  L14_2 = DrawSpritePoly
  L15_2 = L10_2.x
  L16_2 = L10_2.y
  L17_2 = L10_2.z
  L18_2 = L12_2.x
  L19_2 = L12_2.y
  L20_2 = L12_2.z
  L21_2 = L13_2.x
  L22_2 = L13_2.y
  L23_2 = L13_2.z
  L24_2 = 255
  L25_2 = 255
  L26_2 = 255
  L27_2 = 255
  L28_2 = A0_2
  L29_2 = A1_2
  L30_2 = 0.0
  L31_2 = 0.0
  L32_2 = 1.0
  L33_2 = 0.0
  L34_2 = 1.0
  L35_2 = 1.0
  L36_2 = 1.0
  L37_2 = 1.0
  L38_2 = 1.0
  L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2)
end
function L67_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = A0_2.text
  if not L1_2 then
    L1_2 = "Text"
  end
  L1_2 = #L1_2
  L2_2 = A0_2.size
  if not L2_2 then
    L2_2 = 4.0
  end
  L3_2 = math
  L3_2 = L3_2.max
  L4_2 = 0.5
  L5_2 = L1_2 * 0.22
  L5_2 = L5_2 + 1.5
  L5_2 = L5_2 * L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2 * 0.125
  L5_2 = "https://cfx-nui-core_cinematics/html/textdui/text.html"
  L6_2 = CreateDui
  L7_2 = L5_2
  L8_2 = 2048
  L9_2 = 256
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = GetDuiHandle
  L8_2 = L6_2
  L7_2 = L7_2(L8_2)
  L8_2 = "cc_text_txd_"
  L9_2 = A0_2.id
  L8_2 = L8_2 .. L9_2
  L9_2 = "cc_text_txn_"
  L10_2 = A0_2.id
  L9_2 = L9_2 .. L10_2
  L10_2 = CreateRuntimeTxd
  L11_2 = L8_2
  L10_2 = L10_2(L11_2)
  L11_2 = CreateRuntimeTextureFromDuiHandle
  L12_2 = L10_2
  L13_2 = L9_2
  L14_2 = L7_2
  L11_2(L12_2, L13_2, L14_2)
  L11_2 = {}
  L11_2.dui = L6_2
  L11_2.txdName = L8_2
  L11_2.txnName = L9_2
  L11_2.worldWidth = L3_2
  L11_2.worldHeight = L4_2
  L11_2.visible = false
  L13_2 = A0_2.id
  L12_2 = L46_1
  L12_2[L13_2] = L11_2
  L12_2 = Citizen
  L12_2 = L12_2.CreateThread
  function L13_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = 0
    while true do
      L1_3 = IsDuiAvailable
      L2_3 = L6_2
      L1_3 = L1_3(L2_3)
      if not (not L1_3 and L0_3 < 100) then
        break
      end
      L1_3 = Citizen
      L1_3 = L1_3.Wait
      L2_3 = 100
      L1_3(L2_3)
      L0_3 = L0_3 + 1
    end
    L1_3 = Citizen
    L1_3 = L1_3.Wait
    L2_3 = 300
    L1_3(L2_3)
    L2_3 = A0_2.id
    L1_3 = L46_1
    L1_3 = L1_3[L2_3]
    if L1_3 then
      L2_3 = A0_2.id
      L1_3 = L46_1
      L1_3 = L1_3[L2_3]
      L1_3 = L1_3.dui
      L2_3 = L6_2
      if L1_3 == L2_3 then
        L1_3 = SendDuiMessage
        L2_3 = L6_2
        L3_3 = json
        L3_3 = L3_3.encode
        L4_3 = {}
        L4_3.action = "init"
        L5_3 = A0_2.text
        L4_3.text = L5_3
        L5_3 = A0_2.font
        if not L5_3 then
          L5_3 = "Arial"
        end
        L4_3.font = L5_3
        L5_3 = A0_2.font
        if not L5_3 then
          L5_3 = "Arial"
        end
        L6_3 = L63_1
        L5_3 = L6_3[L5_3]
        if not L5_3 then
          L5_3 = ""
        end
        L4_3.fontUrl = L5_3
        L5_3 = A0_2.color
        if not L5_3 then
          L5_3 = "#ffffff"
        end
        L4_3.color = L5_3
        L5_3 = A0_2.shadow
        if not L5_3 then
          L5_3 = false
        end
        L4_3.shadow = L5_3
        L5_3 = A0_2.glow
        if not L5_3 then
          L5_3 = false
        end
        L4_3.glow = L5_3
        L5_3 = A0_2.outline
        if not L5_3 then
          L5_3 = false
        end
        L4_3.outline = L5_3
        L5_3 = A0_2.outlineColor
        if not L5_3 then
          L5_3 = "#000000"
        end
        L4_3.outlineColor = L5_3
        L5_3 = A0_2.outlineWidth
        if not L5_3 then
          L5_3 = 2
        end
        L4_3.outlineWidth = L5_3
        L3_3, L4_3, L5_3, L6_3 = L3_3(L4_3)
        L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
      end
    end
  end
  L12_2(L13_2)
end
function L68_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = pairs
  L1_2 = L46_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L5_2.dui
    if L6_2 then
      L6_2 = DestroyDui
      L7_2 = L5_2.dui
      L6_2(L7_2)
    end
  end
  L0_2 = {}
  L46_1 = L0_2
end
function L69_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = ipairs
  L2_2 = L45_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L8_2 = L6_2.textId
    L7_2 = L46_1
    L7_2 = L7_2[L8_2]
    if not L7_2 then
    else
      L9_2 = L6_2.textId
      L8_2 = L44_1
      L8_2 = L8_2[L9_2]
      if not L8_2 then
      else
        L9_2 = L6_2.startFrame
        if A0_2 >= L9_2 then
          L9_2 = L6_2.endFrame
          if A0_2 <= L9_2 then
            L7_2.visible = true
            L9_2 = math
            L9_2 = L9_2.max
            L10_2 = 1
            L11_2 = L6_2.endFrame
            L12_2 = L6_2.startFrame
            L11_2 = L11_2 - L12_2
            L9_2 = L9_2(L10_2, L11_2)
            L10_2 = L6_2.startFrame
            L10_2 = A0_2 - L10_2
            L11_2 = SendDuiMessage
            L12_2 = L7_2.dui
            L13_2 = json
            L13_2 = L13_2.encode
            L14_2 = {}
            L14_2.action = "processText"
            L15_2 = L8_2.text
            L14_2.text = L15_2
            L15_2 = L8_2.font
            if not L15_2 then
              L15_2 = "Arial"
            end
            L14_2.font = L15_2
            L15_2 = L8_2.font
            if not L15_2 then
              L15_2 = "Arial"
            end
            L16_2 = L63_1
            L15_2 = L16_2[L15_2]
            if not L15_2 then
              L15_2 = ""
            end
            L14_2.fontUrl = L15_2
            L15_2 = L8_2.color
            if not L15_2 then
              L15_2 = "#ffffff"
            end
            L14_2.color = L15_2
            L15_2 = L8_2.shadow
            if not L15_2 then
              L15_2 = false
            end
            L14_2.shadow = L15_2
            L15_2 = L8_2.glow
            if not L15_2 then
              L15_2 = false
            end
            L14_2.glow = L15_2
            L15_2 = L8_2.outline
            if not L15_2 then
              L15_2 = false
            end
            L14_2.outline = L15_2
            L15_2 = L8_2.outlineColor
            if not L15_2 then
              L15_2 = "#000000"
            end
            L14_2.outlineColor = L15_2
            L15_2 = L8_2.outlineWidth
            if not L15_2 then
              L15_2 = 2
            end
            L14_2.outlineWidth = L15_2
            L15_2 = L8_2.colorShift
            if not L15_2 then
              L15_2 = false
            end
            L14_2.colorShift = L15_2
            L15_2 = L8_2.colorShiftColors
            if not L15_2 then
              L15_2 = ""
            end
            L14_2.colorShiftColors = L15_2
            L15_2 = L8_2.colorShiftSpeed
            if not L15_2 then
              L15_2 = 60
            end
            L14_2.colorShiftSpeed = L15_2
            L15_2 = L8_2.animation
            if not L15_2 then
              L15_2 = "fadeSlide"
            end
            L14_2.animation = L15_2
            L14_2.relFrame = L10_2
            L14_2.totalFrames = L9_2
            L15_2 = L8_2.animIn
            if not L15_2 then
              L15_2 = 15
            end
            L14_2.animIn = L15_2
            L15_2 = L8_2.animOut
            if not L15_2 then
              L15_2 = 15
            end
            L14_2.animOut = L15_2
            L13_2, L14_2, L15_2, L16_2 = L13_2(L14_2)
            L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
        end
        else
          L9_2 = L7_2.visible
          if L9_2 then
            L7_2.visible = false
            L9_2 = SendDuiMessage
            L10_2 = L7_2.dui
            L11_2 = json
            L11_2 = L11_2.encode
            L12_2 = {}
            L12_2.action = "hide"
            L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L11_2(L12_2)
            L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
          end
        end
      end
    end
  end
end
L70_1 = Citizen
L70_1 = L70_1.CreateThread
function L71_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  while true do
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 0
    L0_2(L1_2)
    L0_2 = L0_1
    if not L0_2 then
      L0_2 = Citizen
      L0_2 = L0_2.Wait
      L1_2 = 200
      L0_2(L1_2)
    else
      L0_2 = pairs
      L1_2 = L46_1
      L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
      for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
        L6_2 = L5_2.visible
        if L6_2 then
          L6_2 = L44_1
          L6_2 = L6_2[L4_2]
          if L6_2 then
            L7_2 = L6_2.coords
            if L7_2 then
              L7_2 = L66_1
              L8_2 = L5_2.txdName
              L9_2 = L5_2.txnName
              L10_2 = L6_2.coords
              L11_2 = L5_2.worldWidth
              L12_2 = L5_2.worldHeight
              L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
            end
          end
        end
      end
      L0_2 = L1_1
      if not L0_2 then
        L0_2 = L69_1
        L1_2 = L5_1
        L0_2(L1_2)
      end
    end
  end
end
L70_1(L71_1)
function L70_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L50_1
  if L2_2 then
    L2_2 = DoesEntityExist
    L3_2 = L50_1
    L2_2 = L2_2(L3_2)
    if L2_2 then
      return
    end
  end
  L2_2 = GetHashKey
  L3_2 = "prop_pap_camera_01"
  L2_2 = L2_2(L3_2)
  L3_2 = RequestModel
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    while true do
      L0_3 = HasModelLoaded
      L1_3 = L2_2
      L0_3 = L0_3(L1_3)
      if L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 50
      L0_3(L1_3)
    end
    L0_3 = CreateObject
    L1_3 = L2_2
    L2_3 = A0_2.x
    L3_3 = A0_2.y
    L4_3 = A0_2.z
    L5_3 = false
    L6_3 = false
    L7_3 = false
    L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
    L50_1 = L0_3
    L0_3 = FreezeEntityPosition
    L1_3 = L50_1
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = SetEntityInvincible
    L1_3 = L50_1
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = SetEntityCollision
    L1_3 = L50_1
    L2_3 = false
    L3_3 = false
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = SetModelAsNoLongerNeeded
    L1_3 = L2_2
    L0_3(L1_3)
    L0_3 = true
    L51_1 = L0_3
  end
  L3_2(L4_2)
end
spawnCameraProp = L70_1
function L70_1()
  local L0_2, L1_2
  L0_2 = false
  L51_1 = L0_2
  L0_2 = L50_1
  if L0_2 then
    L0_2 = DoesEntityExist
    L1_2 = L50_1
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = DeleteEntity
      L1_2 = L50_1
      L0_2(L1_2)
    end
  end
  L0_2 = nil
  L50_1 = L0_2
end
despawnCameraProp = L70_1
function L70_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = L51_1
  if L0_2 then
    L0_2 = L50_1
    if L0_2 then
      L0_2 = DoesEntityExist
      L1_2 = L50_1
      L0_2 = L0_2(L1_2)
      if L0_2 then
        goto lbl_13
      end
    end
  end
  do return end
  ::lbl_13::
  L0_2 = L3_1
  if L0_2 then
    L0_2 = DoesCamExist
    L1_2 = L3_1
    L0_2 = L0_2(L1_2)
    if L0_2 then
      goto lbl_22
    end
  end
  do return end
  ::lbl_22::
  L0_2 = GetCamCoord
  L1_2 = L3_1
  L0_2 = L0_2(L1_2)
  L1_2 = GetCamRot
  L2_2 = L3_1
  L3_2 = 2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = math
  L2_2 = L2_2.rad
  L3_2 = L1_2.x
  L3_2 = -L3_2
  L2_2 = L2_2(L3_2)
  L3_2 = math
  L3_2 = L3_2.rad
  L4_2 = L1_2.z
  L4_2 = L4_2 + 180.0
  L3_2 = L3_2(L4_2)
  L4_2 = L53_1
  L5_2 = vector3
  L6_2 = math
  L6_2 = L6_2.sin
  L7_2 = L3_2
  L6_2 = L6_2(L7_2)
  L6_2 = -L6_2
  L7_2 = math
  L7_2 = L7_2.cos
  L8_2 = L2_2
  L7_2 = L7_2(L8_2)
  L6_2 = L6_2 * L7_2
  L6_2 = L6_2 * L4_2
  L7_2 = math
  L7_2 = L7_2.cos
  L8_2 = L3_2
  L7_2 = L7_2(L8_2)
  L8_2 = math
  L8_2 = L8_2.cos
  L9_2 = L2_2
  L8_2 = L8_2(L9_2)
  L7_2 = L7_2 * L8_2
  L7_2 = L7_2 * L4_2
  L8_2 = math
  L8_2 = L8_2.sin
  L9_2 = L2_2
  L8_2 = L8_2(L9_2)
  L8_2 = L8_2 * L4_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = vector3
  L7_2 = math
  L7_2 = L7_2.cos
  L8_2 = L3_2
  L7_2 = L7_2(L8_2)
  L7_2 = L7_2 * L4_2
  L8_2 = math
  L8_2 = L8_2.sin
  L9_2 = L3_2
  L8_2 = L8_2(L9_2)
  L8_2 = L8_2 * L4_2
  L9_2 = 0.0
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = vector3
  L8_2 = math
  L8_2 = L8_2.sin
  L9_2 = L3_2
  L8_2 = L8_2(L9_2)
  L9_2 = math
  L9_2 = L9_2.sin
  L10_2 = L2_2
  L9_2 = L9_2(L10_2)
  L8_2 = L8_2 * L9_2
  L8_2 = L8_2 * L4_2
  L9_2 = math
  L9_2 = L9_2.cos
  L10_2 = L3_2
  L9_2 = L9_2(L10_2)
  L9_2 = -L9_2
  L10_2 = math
  L10_2 = L10_2.sin
  L11_2 = L2_2
  L10_2 = L10_2(L11_2)
  L9_2 = L9_2 * L10_2
  L9_2 = L9_2 * L4_2
  L10_2 = math
  L10_2 = L10_2.cos
  L11_2 = L2_2
  L10_2 = L10_2(L11_2)
  L10_2 = L10_2 * L4_2
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L8_2 = SetEntityMatrix
  L9_2 = L50_1
  L10_2 = L5_2
  L11_2 = L6_2
  L12_2 = L7_2
  L13_2 = L0_2
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  L8_2 = L20_1
  if not L8_2 then
    L8_2 = L56_1
    if L8_2 then
      goto lbl_136
    end
  end
  do return end
  ::lbl_136::
  L8_2 = GetGameTimer
  L8_2 = L8_2()
  L9_2 = L55_1
  if L9_2 then
    L9_2 = L55_1
    L9_2 = L8_2 - L9_2
    if not (L9_2 > 100) then
      goto lbl_176
    end
  end
  L55_1 = L8_2
  L9_2 = TriggerServerEvent
  L10_2 = "core_cinematics:syncCameraPropPos"
  L11_2 = {}
  L12_2 = L5_2.x
  L11_2.fx = L12_2
  L12_2 = L5_2.y
  L11_2.fy = L12_2
  L12_2 = L5_2.z
  L11_2.fz = L12_2
  L12_2 = L6_2.x
  L11_2.rx = L12_2
  L12_2 = L6_2.y
  L11_2.ry = L12_2
  L12_2 = L6_2.z
  L11_2.rz = L12_2
  L12_2 = L7_2.x
  L11_2.ux = L12_2
  L12_2 = L7_2.y
  L11_2.uy = L12_2
  L12_2 = L7_2.z
  L11_2.uz = L12_2
  L12_2 = L0_2.x
  L11_2.px = L12_2
  L12_2 = L0_2.y
  L11_2.py = L12_2
  L12_2 = L0_2.z
  L11_2.pz = L12_2
  L9_2(L10_2, L11_2)
  ::lbl_176::
end
updateCameraProp = L70_1
function L70_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2
  L0_2 = L4_1
  L0_2 = #L0_2
  if L0_2 < 2 then
    return
  end
  L0_2 = Config
  L0_2 = L0_2.PathDrawDistance
  if not L0_2 then
    L0_2 = 150.0
  end
  L1_2 = L0_2 * L0_2
  L2_2 = GetEntityCoords
  L3_2 = PlayerPedId
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2 = L3_2()
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2)
  L3_2 = 1
  L4_2 = L4_1
  L4_2 = #L4_2
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L4_1
    L7_2 = L7_2[L6_2]
    L9_2 = L6_2 + 1
    L8_2 = L4_1
    L8_2 = L8_2[L9_2]
    L9_2 = L7_2.pos
    if L9_2 then
      L9_2 = L8_2.pos
      if L9_2 then
        L9_2 = L7_2.pos
        L9_2 = L9_2.x
        L10_2 = L2_2.x
        L9_2 = L9_2 - L10_2
        L10_2 = L7_2.pos
        L10_2 = L10_2.y
        L11_2 = L2_2.y
        L10_2 = L10_2 - L11_2
        L11_2 = L7_2.pos
        L11_2 = L11_2.z
        L12_2 = L2_2.z
        L11_2 = L11_2 - L12_2
        L12_2 = L8_2.pos
        L12_2 = L12_2.x
        L13_2 = L2_2.x
        L12_2 = L12_2 - L13_2
        L13_2 = L8_2.pos
        L13_2 = L13_2.y
        L14_2 = L2_2.y
        L13_2 = L13_2 - L14_2
        L14_2 = L8_2.pos
        L14_2 = L14_2.z
        L15_2 = L2_2.z
        L14_2 = L14_2 - L15_2
        L15_2 = L9_2 * L9_2
        L16_2 = L10_2 * L10_2
        L15_2 = L15_2 + L16_2
        L16_2 = L11_2 * L11_2
        L15_2 = L15_2 + L16_2
        if not (L1_2 >= L15_2) then
          L15_2 = L12_2 * L12_2
          L16_2 = L13_2 * L13_2
          L15_2 = L15_2 + L16_2
          L16_2 = L14_2 * L14_2
          L15_2 = L15_2 + L16_2
          if not (L1_2 >= L15_2) then
            goto lbl_108
          end
        end
        L15_2 = DrawLine
        L16_2 = L7_2.pos
        L16_2 = L16_2.x
        L17_2 = L7_2.pos
        L17_2 = L17_2.y
        L18_2 = L7_2.pos
        L18_2 = L18_2.z
        L19_2 = L8_2.pos
        L19_2 = L19_2.x
        L20_2 = L8_2.pos
        L20_2 = L20_2.y
        L21_2 = L8_2.pos
        L21_2 = L21_2.z
        L22_2 = 220
        L23_2 = 50
        L24_2 = 50
        L25_2 = 200
        L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
      end
    end
    ::lbl_108::
  end
  L3_2 = ipairs
  L4_2 = L4_1
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.pos
    if L9_2 then
      L9_2 = L8_2.pos
      L9_2 = L9_2.x
      L10_2 = L2_2.x
      L9_2 = L9_2 - L10_2
      L10_2 = L8_2.pos
      L10_2 = L10_2.y
      L11_2 = L2_2.y
      L10_2 = L10_2 - L11_2
      L11_2 = L8_2.pos
      L11_2 = L11_2.z
      L12_2 = L2_2.z
      L11_2 = L11_2 - L12_2
      L12_2 = L9_2 * L9_2
      L13_2 = L10_2 * L10_2
      L12_2 = L12_2 + L13_2
      L13_2 = L11_2 * L11_2
      L12_2 = L12_2 + L13_2
      if L1_2 >= L12_2 then
        L12_2 = DrawMarker
        L13_2 = 28
        L14_2 = L8_2.pos
        L14_2 = L14_2.x
        L15_2 = L8_2.pos
        L15_2 = L15_2.y
        L16_2 = L8_2.pos
        L16_2 = L16_2.z
        L17_2 = 0
        L18_2 = 0
        L19_2 = 0
        L20_2 = 0
        L21_2 = 0
        L22_2 = 0
        L23_2 = 0.15
        L24_2 = 0.15
        L25_2 = 0.15
        L26_2 = 245
        L27_2 = 200
        L28_2 = 60
        L29_2 = 200
        L30_2 = false
        L31_2 = true
        L32_2 = 2
        L33_2 = false
        L34_2 = nil
        L35_2 = nil
        L36_2 = false
        L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2)
      end
    end
  end
end
drawKeyframePath = L70_1
function L70_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = L20_1
  if not L0_2 then
    L0_2 = L56_1
    if L0_2 then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L0_2 = {}
  L1_2 = ipairs
  L2_2 = L4_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.pos
    if L7_2 then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = L0_2
      L9_2 = {}
      L10_2 = L6_2.pos
      L10_2 = L10_2.x
      L9_2.x = L10_2
      L10_2 = L6_2.pos
      L10_2 = L10_2.y
      L9_2.y = L10_2
      L10_2 = L6_2.pos
      L10_2 = L10_2.z
      L9_2.z = L10_2
      L7_2(L8_2, L9_2)
    end
  end
  L1_2 = TriggerServerEvent
  L2_2 = "core_cinematics:syncCameraPath"
  L3_2 = L0_2
  L1_2(L2_2, L3_2)
end
syncCameraPathToServer = L70_1
L70_1 = RegisterNetEvent
L71_1 = "core_cinematics:cameraPathUpdated"
function L72_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = GetPlayerServerId
  L3_2 = PlayerId
  L3_2 = L3_2()
  L2_2 = L2_2(L3_2)
  if A0_2 == L2_2 then
    return
  end
  L2_2 = L54_1
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    L2_2 = L54_1
    L3_2 = {}
    L2_2[A0_2] = L3_2
  end
  L2_2 = L54_1
  L2_2 = L2_2[A0_2]
  L3_2 = A1_2 or L3_2
  if not A1_2 then
    L3_2 = {}
  end
  L2_2.path = L3_2
end
L70_1(L71_1, L72_1)
L70_1 = RegisterNetEvent
L71_1 = "core_cinematics:cameraPathCleared"
function L72_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = GetPlayerServerId
  L2_2 = PlayerId
  L2_2, L3_2 = L2_2()
  L1_2 = L1_2(L2_2, L3_2)
  if A0_2 == L1_2 then
    return
  end
  L1_2 = L54_1
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L2_2 = L1_2.prop
    if L2_2 then
      L2_2 = DoesEntityExist
      L3_2 = L1_2.prop
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L2_2 = DeleteEntity
        L3_2 = L1_2.prop
        L2_2(L3_2)
      end
    end
    L2_2 = L54_1
    L2_2[A0_2] = nil
  end
end
L70_1(L71_1, L72_1)
L70_1 = RegisterNetEvent
L71_1 = "core_cinematics:cameraPropMoved"
function L72_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = GetPlayerServerId
  L3_2 = PlayerId
  L3_2, L4_2, L5_2 = L3_2()
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  if A0_2 == L2_2 then
    return
  end
  L2_2 = L54_1
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    L2_2 = L54_1
    L3_2 = {}
    L2_2[A0_2] = L3_2
  end
  L2_2 = L54_1
  L2_2 = L2_2[A0_2]
  L3_2 = L2_2.prop
  if L3_2 then
    L3_2 = DoesEntityExist
    L4_2 = L2_2.prop
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_36
    end
  end
  L3_2 = GetHashKey
  L4_2 = "prop_pap_camera_01"
  L3_2 = L3_2(L4_2)
  L4_2 = RequestModel
  L5_2 = L3_2
  L4_2(L5_2)
  L4_2 = CreateThread
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    while true do
      L0_3 = HasModelLoaded
      L1_3 = L3_2
      L0_3 = L0_3(L1_3)
      if L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 50
      L0_3(L1_3)
    end
    L0_3 = CreateObject
    L1_3 = L3_2
    L2_3 = A1_2.px
    L3_3 = A1_2.py
    L4_3 = A1_2.pz
    L5_3 = false
    L6_3 = false
    L7_3 = false
    L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
    L1_3 = FreezeEntityPosition
    L2_3 = L0_3
    L3_3 = true
    L1_3(L2_3, L3_3)
    L1_3 = SetEntityInvincible
    L2_3 = L0_3
    L3_3 = true
    L1_3(L2_3, L3_3)
    L1_3 = SetEntityCollision
    L2_3 = L0_3
    L3_3 = false
    L4_3 = false
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = SetModelAsNoLongerNeeded
    L2_3 = L3_2
    L1_3(L2_3)
    L2_2.prop = L0_3
  end
  L4_2(L5_2)
  ::lbl_36::
  L2_2.matrix = A1_2
end
L70_1(L71_1, L72_1)
function L70_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L0_2 = Config
  L0_2 = L0_2.WeatherConflictPatterns
  if not L0_2 then
    L0_2 = {}
  end
  L1_2 = {}
  L2_2 = GetNumResources
  L2_2 = L2_2()
  L3_2 = 0
  L4_2 = L2_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = GetResourceByFindIndex
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L8_2 = GetResourceState
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      if "started" == L8_2 then
        L9_2 = L7_2
        L8_2 = L7_2.lower
        L8_2 = L8_2(L9_2)
        L9_2 = ipairs
        L10_2 = L0_2
        L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
        for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
          L16_2 = L8_2
          L15_2 = L8_2.find
          L17_2 = L14_2
          L15_2 = L15_2(L16_2, L17_2)
          if L15_2 then
            L15_2 = #L1_2
            L15_2 = L15_2 + 1
            L1_2[L15_2] = L7_2
            break
          end
        end
      end
    end
  end
  return L1_2
end
detectWeatherConflicts = L70_1
function L70_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = L0_1
  if L0_2 then
    return
  end
  L0_2 = true
  L0_1 = L0_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  L3_2 = L1_2.x
  L2_2.x = L3_2
  L3_2 = L1_2.y
  L2_2.y = L3_2
  L3_2 = L1_2.z
  L2_2.z = L3_2
  L61_1 = L2_2
  L2_2 = GetEntityHeading
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  L62_1 = L2_2
  L0_2 = GetGameplayCamCoord
  L0_2 = L0_2()
  L1_2 = GetGameplayCamRot
  L2_2 = 2
  L1_2 = L1_2(L2_2)
  L2_2 = GetGameplayCamFov
  L2_2 = L2_2()
  L3_2 = CreateCam
  L4_2 = "DEFAULT_SCRIPTED_CAMERA"
  L5_2 = true
  L3_2 = L3_2(L4_2, L5_2)
  L3_1 = L3_2
  L3_2 = SetCamCoord
  L4_2 = L3_1
  L5_2 = L0_2.x
  L6_2 = L0_2.y
  L7_2 = L0_2.z
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = SetCamRot
  L4_2 = L3_1
  L5_2 = L1_2.x
  L6_2 = L1_2.y
  L7_2 = L1_2.z
  L8_2 = 2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = SetCamFov
  L4_2 = L3_1
  L5_2 = fv
  L6_2 = L2_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = RenderScriptCams
  L4_2 = true
  L5_2 = false
  L6_2 = 0
  L7_2 = true
  L8_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = SetNuiFocus
  L4_2 = true
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = SendNUIMessage
  L4_2 = {}
  L4_2.type = "show"
  L5_2 = Config
  L5_2 = L5_2.DefaultFPS
  L4_2.fps = L5_2
  L5_2 = Config
  L5_2 = L5_2.ShakeTypes
  L4_2.shakes = L5_2
  L5_2 = Config
  L5_2 = L5_2.ColorFilters
  L4_2.filters = L5_2
  L5_2 = Config
  L5_2 = L5_2.Fonts
  L4_2.fonts = L5_2
  L5_2 = Config
  L5_2 = L5_2.FovMin
  L4_2.fovMin = L5_2
  L5_2 = Config
  L5_2 = L5_2.FovMax
  L4_2.fovMax = L5_2
  L5_2 = Config
  L5_2 = L5_2.DefaultFov
  L4_2.defaultFov = L5_2
  L5_2 = L7_1
  L4_2.totalFrames = L5_2
  L5_2 = Config
  L5_2 = L5_2.PredefinedAnimations
  if not L5_2 then
    L5_2 = {}
  end
  L4_2.predefinedAnims = L5_2
  L5_2 = Config
  L5_2 = L5_2.CommonWeapons
  if not L5_2 then
    L5_2 = {}
  end
  L4_2.commonWeapons = L5_2
  L5_2 = Config
  L5_2 = L5_2.DisableTutorialByDefault
  L5_2 = true ~= L5_2
  L4_2.tutorialDefault = L5_2
  L5_2 = detectWeatherConflicts
  L5_2 = L5_2()
  L4_2.weatherConflicts = L5_2
  L5_2 = Config
  L5_2 = L5_2.AutosaveInterval
  if not L5_2 then
    L5_2 = 30000
  end
  L4_2.autosaveInterval = L5_2
  L5_2 = Config
  L5_2 = L5_2.DefaultInterpolationMode
  if not L5_2 then
    L5_2 = "eased"
  end
  L4_2.defaultInterp = L5_2
  L5_2 = Config
  L5_2 = L5_2.DefaultKeyframeEasing
  if not L5_2 then
    L5_2 = "ease"
  end
  L4_2.defaultEasing = L5_2
  L5_2 = GetLocaleData
  L5_2 = L5_2()
  L4_2.locale = L5_2
  L3_2(L4_2)
  L3_2 = sendCoordsUpdate
  L3_2()
  L3_2 = L21_1
  if not L3_2 then
    L3_2 = L14_1
    L3_2 = #L3_2
    if not (L3_2 > 0) then
      L3_2 = L26_1
      L3_2 = #L3_2
      if not (L3_2 > 0) then
        L3_2 = L40_1
        L3_2 = #L3_2
        if not (L3_2 > 0) then
          goto lbl_165
        end
      end
    end
    L3_2 = TriggerServerEvent
    L4_2 = "core_cinematics:enterBucket"
    L3_2(L4_2)
    L3_2 = true
    L20_1 = L3_2
    L3_2 = TriggerServerEvent
    L4_2 = "core_cinematics:clearCameraPath"
    L3_2(L4_2)
  end
  ::lbl_165::
  L3_2 = L20_1
  if not L3_2 then
    L3_2 = spawnCameraProp
    L4_2 = L0_2
    L5_2 = L1_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = spawnVehicleRecording
  L3_2()
  L3_2 = initPedRecording
  L3_2()
  L3_2 = L40_1
  L3_2 = #L3_2
  if L3_2 > 0 then
    L3_2 = sendOverlayLayersToJS
    L3_2()
    L3_2 = 1
    L4_2 = L40_1
    L4_2 = #L4_2
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = spawnOverlayVehicle
      L8_2 = L6_2
      L7_2(L8_2)
    end
  end
  L3_2 = syncCameraPathToServer
  L3_2()
end
openUI = L70_1
function L70_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = L0_1
  if not L0_2 then
    return
  end
  L0_2 = false
  L0_1 = L0_2
  L0_2 = false
  L2_1 = L0_2
  L0_2 = L1_1
  if L0_2 then
    L0_2 = false
    L1_1 = L0_2
    L0_2 = ipairs
    L1_2 = L8_1
    L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
    for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
      if L5_2 then
        L6_2 = DoesCamExist
        L7_2 = L5_2
        L6_2 = L6_2(L7_2)
        if L6_2 then
          L6_2 = DestroyCam
          L7_2 = L5_2
          L8_2 = false
          L6_2(L7_2, L8_2)
        end
      end
    end
    L0_2 = {}
    L8_1 = L0_2
    L0_2 = 1
    L10_1 = L0_2
  end
  L0_2 = SetNuiFocus
  L1_2 = false
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.type = "hide"
  L0_2(L1_2)
  L0_2 = SetTimeScale
  L1_2 = 1.0
  L0_2(L1_2)
  L0_2 = ClearOverrideWeather
  L0_2()
  L0_2 = SetRainLevel
  L1_2 = 0.0
  L0_2(L1_2)
  hiDofActive = false
  L0_2 = L61_1
  if L0_2 then
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = SetEntityCoordsNoOffset
    L2_2 = L0_2
    L3_2 = L61_1.x
    L4_2 = L61_1.y
    L5_2 = L61_1.z
    L6_2 = false
    L7_2 = false
    L8_2 = false
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    L1_2 = SetEntityHeading
    L2_2 = L0_2
    L3_2 = L62_1
    if not L3_2 then
      L3_2 = 0.0
    end
    L1_2(L2_2, L3_2)
    L1_2 = nil
    L61_1 = L1_2
    L1_2 = nil
    L62_1 = L1_2
  end
  L0_2 = RenderScriptCams
  L1_2 = false
  L2_2 = false
  L3_2 = 0
  L4_2 = true
  L5_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
  L0_2 = L3_1
  if L0_2 then
    L0_2 = DoesCamExist
    L1_2 = L3_1
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = DestroyCam
      L1_2 = L3_1
      L2_2 = false
      L0_2(L1_2, L2_2)
      L0_2 = nil
      L3_1 = L0_2
    end
  end
  L0_2 = L20_1
  if L0_2 then
    L0_2 = TriggerServerEvent
    L1_2 = "core_cinematics:leaveBucket"
    L0_2(L1_2)
    L0_2 = false
    L20_1 = L0_2
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = SetEntityVisible
    L2_2 = L0_2
    L3_2 = true
    L4_2 = false
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = ResetEntityAlpha
    L2_2 = L0_2
    L1_2(L2_2)
    L1_2 = SetEntityCollision
    L2_2 = L0_2
    L3_2 = true
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = SetEntityLocallyInvisible
    L2_2 = L0_2
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = SetLocalPlayerVisibleLocally
    L2_2 = true
    L1_2(L2_2)
  end
  L0_2 = pairs
  L1_2 = L16_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = DoesEntityExist
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = DeleteEntity
      L7_2 = L5_2
      L6_2(L7_2)
    end
  end
  L0_2 = {}
  L16_1 = L0_2
  L0_2 = {}
  L17_1 = L0_2
  L0_2 = {}
  L18_1 = L0_2
  L0_2 = pairs
  L1_2 = L27_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = DoesEntityExist
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = DeleteEntity
      L7_2 = L5_2
      L6_2(L7_2)
    end
  end
  L0_2 = {}
  L27_1 = L0_2
  L0_2 = {}
  L28_1 = L0_2
  L0_2 = {}
  L29_1 = L0_2
  L0_2 = {}
  L30_1 = L0_2
  L0_2 = {}
  L31_1 = L0_2
  L0_2 = {}
  L32_1 = L0_2
  L0_2 = {}
  L33_1 = L0_2
  L0_2 = {}
  L34_1 = L0_2
  L0_2 = {}
  L35_1 = L0_2
  L0_2 = {}
  L36_1 = L0_2
  L0_2 = {}
  L37_1 = L0_2
  L0_2 = {}
  L38_1 = L0_2
  L0_2 = cleanupOverlaySpawns
  L0_2()
  L0_2 = SetEntityLocallyInvisible
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = pairs
  L1_2 = L46_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L5_2.visible
    if L6_2 then
      L5_2.visible = false
      L6_2 = SendDuiMessage
      L7_2 = L5_2.dui
      L8_2 = json
      L8_2 = L8_2.encode
      L9_2 = {}
      L9_2.action = "hide"
      L8_2, L9_2 = L8_2(L9_2)
      L6_2(L7_2, L8_2, L9_2)
    end
  end
  L0_2 = nil
  L49_1 = L0_2
  L0_2 = TriggerServerEvent
  L1_2 = "core_cinematics:clearCameraPath"
  L0_2(L1_2)
  L0_2 = DisplayHud
  L1_2 = true
  L0_2(L1_2)
  L0_2 = DisplayRadar
  L1_2 = true
  L0_2(L1_2)
  L0_2 = ClearTimecycleModifier
  L0_2()
  L0_2 = SetArtificialLightsState
  L1_2 = false
  L0_2(L1_2)
end
closeUI = L70_1
L70_1 = RegisterNUICallback
L71_1 = "close"
function L72_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = closeUI
  L2_2()
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L70_1(L71_1, L72_1)
L70_1 = RegisterNUICallback
L71_1 = "listProjects"
function L72_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = TriggerServerEvent
  L3_2 = "core_cinematics:listProjects"
  L2_2(L3_2)
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L70_1(L71_1, L72_1)
L70_1 = RegisterNUICallback
L71_1 = "loadProject"
function L72_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerServerEvent
  L3_2 = "core_cinematics:loadProject"
  L4_2 = A0_2.slug
  L2_2(L3_2, L4_2)
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L70_1(L71_1, L72_1)
L70_1 = RegisterNUICallback
L71_1 = "saveProject"
function L72_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerServerEvent
  L3_2 = "core_cinematics:saveProject"
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L70_1(L71_1, L72_1)
L70_1 = RegisterNUICallback
L71_1 = "saveProjectMetadata"
function L72_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = L22_1
  A0_2.vehicleRecStartSec = L2_2
  L2_2 = L23_1
  A0_2.vehicleRecEndSec = L2_2
  L2_2 = L24_1
  A0_2.vehicleRecTrimInSec = L2_2
  L2_2 = L14_1
  L2_2 = #L2_2
  L2_2 = L2_2 > 0
  A0_2.hasRecording = L2_2
  L2_2 = {}
  L3_2 = ipairs
  L4_2 = L40_1
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = {}
    L10_2 = L8_2.id
    L9_2.id = L10_2
    L10_2 = L8_2.name
    L9_2.name = L10_2
    L10_2 = L8_2.startSec
    if not L10_2 then
      L10_2 = 0.0
    end
    L9_2.startSec = L10_2
    L10_2 = L8_2.endSec
    L9_2.endSec = L10_2
    L10_2 = L8_2.trimInSec
    if not L10_2 then
      L10_2 = 0.0
    end
    L9_2.trimInSec = L10_2
    L2_2[L7_2] = L9_2
  end
  A0_2.overlayLayerTimings = L2_2
  L3_2 = TriggerServerEvent
  L4_2 = "core_cinematics:saveProject"
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
end
L70_1(L71_1, L72_1)
function L70_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = {}
  L1_2 = ipairs
  L2_2 = L40_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = {}
    L8_2 = L6_2.id
    L7_2.id = L8_2
    L8_2 = L6_2.name
    L7_2.name = L8_2
    L8_2 = L6_2.vehicleRec
    L7_2.vehicleRec = L8_2
    L8_2 = L6_2.startSec
    L7_2.startSec = L8_2
    L8_2 = L6_2.endSec
    L7_2.endSec = L8_2
    L8_2 = L6_2.trimInSec
    L7_2.trimInSec = L8_2
    L0_2[L5_2] = L7_2
  end
  return L0_2
end
L71_1 = RegisterNUICallback
L72_1 = "saveProjectWithRecordings"
function L73_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = L22_1
  A0_2.vehicleRecStartSec = L2_2
  L2_2 = L23_1
  A0_2.vehicleRecEndSec = L2_2
  L2_2 = L24_1
  A0_2.vehicleRecTrimInSec = L2_2
  L2_2 = TriggerServerEvent
  L3_2 = "core_cinematics:saveProject"
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  L2_2 = L14_1
  L2_2 = #L2_2
  if not (L2_2 > 0) then
    L2_2 = L26_1
    L2_2 = #L2_2
    if not (L2_2 > 0) then
      L2_2 = L40_1
      L2_2 = #L2_2
      if not (L2_2 > 0) then
        goto lbl_41
      end
    end
  end
  L2_2 = json
  L2_2 = L2_2.encode
  L3_2 = {}
  L4_2 = L14_1
  L3_2.vehicleRecordings = L4_2
  L4_2 = L26_1
  L3_2.pedRecordings = L4_2
  L4_2 = L70_1
  L4_2 = L4_2()
  L3_2.overlayLayers = L4_2
  L2_2 = L2_2(L3_2)
  L3_2 = TriggerLatentServerEvent
  L4_2 = "core_cinematics:saveRecording"
  L5_2 = 500000
  L6_2 = A0_2.slug
  L7_2 = L2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
  ::lbl_41::
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L71_1(L72_1, L73_1)
L71_1 = RegisterNUICallback
L72_1 = "deleteProject"
function L73_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerServerEvent
  L3_2 = "core_cinematics:deleteProject"
  L4_2 = A0_2.slug
  L2_2(L3_2, L4_2)
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L71_1(L72_1, L73_1)
L71_1 = RegisterNetEvent
L72_1 = "core_cinematics:projectList"
function L73_1(A0_2)
  local L1_2, L2_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.type = "projectList"
  L2_2.projects = A0_2
  L1_2(L2_2)
end
L71_1(L72_1, L73_1)
L71_1 = RegisterNetEvent
L72_1 = "core_cinematics:projectLoaded"
function L73_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = L16_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = DoesEntityExist
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = DeleteEntity
      L8_2 = L6_2
      L7_2(L8_2)
    end
  end
  L1_2 = {}
  L16_1 = L1_2
  L1_2 = {}
  L17_1 = L1_2
  L1_2 = {}
  L18_1 = L1_2
  L1_2 = pairs
  L2_2 = L27_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = DoesEntityExist
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = DeleteEntity
      L8_2 = L6_2
      L7_2(L8_2)
    end
  end
  L1_2 = {}
  L27_1 = L1_2
  L1_2 = {}
  L28_1 = L1_2
  L1_2 = {}
  L29_1 = L1_2
  L1_2 = cleanupOverlaySpawns
  L1_2()
  L1_2 = {}
  L40_1 = L1_2
  L1_2 = pcall
  L2_2 = json
  L2_2 = L2_2.decode
  L3_2 = A0_2
  L1_2, L2_2 = L1_2(L2_2, L3_2)
  if L1_2 and L2_2 then
    L3_2 = {}
    L14_1 = L3_2
    L3_2 = {}
    L26_1 = L3_2
    L3_2 = L2_2.vehicleRecStartSec
    if not L3_2 then
      L3_2 = 0.0
    end
    L22_1 = L3_2
    L3_2 = L2_2.vehicleRecEndSec
    if not L3_2 then
      L3_2 = nil
    end
    L23_1 = L3_2
    L3_2 = L2_2.vehicleRecTrimInSec
    if not L3_2 then
      L3_2 = 0.0
    end
    L24_1 = L3_2
    L3_2 = L2_2.overlayLayerTimings
    L41_1 = L3_2
    L3_2 = L2_2.hasRecording
    if L3_2 then
      L3_2 = SendNUIMessage
      L4_2 = {}
      L4_2.type = "recLoading"
      L3_2(L4_2)
      L3_2 = L21_1
      if not L3_2 then
        L3_2 = L0_1
        if L3_2 then
          L3_2 = L20_1
          if not L3_2 then
            L3_2 = TriggerServerEvent
            L4_2 = "core_cinematics:enterBucket"
            L3_2(L4_2)
            L3_2 = true
            L20_1 = L3_2
            L3_2 = TriggerServerEvent
            L4_2 = "core_cinematics:clearCameraPath"
            L3_2(L4_2)
          end
        end
      end
    else
      L3_2 = L20_1
      if L3_2 then
        L3_2 = TriggerServerEvent
        L4_2 = "core_cinematics:leaveBucket"
        L3_2(L4_2)
        L3_2 = false
        L20_1 = L3_2
      end
    end
    L2_2.vehicleRecordings = nil
    L2_2.pedRecordings = nil
    L2_2.vehicleRecStartSec = nil
    L2_2.vehicleRecEndSec = nil
    L2_2.vehicleRecTrimInSec = nil
  end
  L3_2 = SendNUIMessage
  L4_2 = {}
  L4_2.type = "projectLoaded"
  if L1_2 then
    L5_2 = json
    L5_2 = L5_2.encode
    L6_2 = L2_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      goto lbl_138
    end
  end
  L5_2 = A0_2
  ::lbl_138::
  L4_2.data = L5_2
  L3_2(L4_2)
end
L71_1(L72_1, L73_1)
L71_1 = RegisterNetEvent
L72_1 = "core_cinematics:loadRecording"
function L73_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.type = "recLoaded"
  L1_2(L2_2)
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "string" == L1_2 then
    L1_2 = #A0_2
    if 0 ~= L1_2 then
      goto lbl_15
    end
  end
  do return end
  ::lbl_15::
  L1_2 = pcall
  L2_2 = json
  L2_2 = L2_2.decode
  L3_2 = A0_2
  L1_2, L2_2 = L1_2(L2_2, L3_2)
  if not L1_2 or not L2_2 then
    L3_2 = print
    L4_2 = "[Cinematics] Failed to decode recording data"
    L3_2(L4_2)
    return
  end
  L3_2 = L2_2.vehicleRecordings
  if L3_2 then
    L3_2 = L2_2.vehicleRecordings
    L3_2 = #L3_2
    if L3_2 > 0 then
      L3_2 = L2_2.vehicleRecordings
      L14_1 = L3_2
    end
  end
  L3_2 = L2_2.pedRecordings
  if L3_2 then
    L3_2 = L2_2.pedRecordings
    L3_2 = #L3_2
    if L3_2 > 0 then
      L3_2 = L2_2.pedRecordings
      L26_1 = L3_2
    end
  end
  L3_2 = L2_2.overlayLayers
  if L3_2 then
    L3_2 = L2_2.overlayLayers
    L3_2 = #L3_2
    if L3_2 > 0 then
      L3_2 = {}
      L40_1 = L3_2
      L3_2 = ipairs
      L4_2 = L2_2.overlayLayers
      L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
      for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
        L9_2 = L40_1
        L10_2 = {}
        L11_2 = L8_2.id
        L10_2.id = L11_2
        L11_2 = L8_2.name
        L10_2.name = L11_2
        L11_2 = L8_2.vehicleRec
        L10_2.vehicleRec = L11_2
        L11_2 = L8_2.startSec
        if not L11_2 then
          L11_2 = 0.0
        end
        L10_2.startSec = L11_2
        L11_2 = L8_2.endSec
        L10_2.endSec = L11_2
        L11_2 = L8_2.trimInSec
        if not L11_2 then
          L11_2 = 0.0
        end
        L10_2.trimInSec = L11_2
        L10_2.vehicleSpawn = nil
        L10_2.vehicleSpawning = false
        L10_2.vehicleFrameIdx = 1
        L9_2[L7_2] = L10_2
      end
      L3_2 = L41_1
      if L3_2 then
        L3_2 = ipairs
        L4_2 = L41_1
        L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
        for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
          L9_2 = ipairs
          L10_2 = L40_1
          L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
          for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
            L15_2 = L14_2.id
            L16_2 = L8_2.id
            if L15_2 == L16_2 then
              L15_2 = L8_2.startSec
              if not L15_2 then
                L15_2 = L14_2.startSec
              end
              L14_2.startSec = L15_2
              L15_2 = L8_2.endSec
              L14_2.endSec = L15_2
              L15_2 = L8_2.trimInSec
              if not L15_2 then
                L15_2 = L14_2.trimInSec
              end
              L14_2.trimInSec = L15_2
              break
            end
          end
        end
        L3_2 = nil
        L41_1 = L3_2
      end
    end
  end
  L3_2 = L14_1
  L3_2 = #L3_2
  if not (L3_2 > 0) then
    L3_2 = L26_1
    L3_2 = #L3_2
    if not (L3_2 > 0) then
      L3_2 = L40_1
      L3_2 = #L3_2
      if not (L3_2 > 0) then
        goto lbl_180
      end
    end
  end
  L3_2 = L21_1
  if not L3_2 then
    L3_2 = L0_1
    if L3_2 then
      L3_2 = L20_1
      if not L3_2 then
        L3_2 = TriggerServerEvent
        L4_2 = "core_cinematics:enterBucket"
        L3_2(L4_2)
        L3_2 = true
        L20_1 = L3_2
        L3_2 = TriggerServerEvent
        L4_2 = "core_cinematics:clearCameraPath"
        L3_2(L4_2)
      end
    end
  end
  L3_2 = L14_1
  L3_2 = #L3_2
  if L3_2 > 0 then
    L3_2 = spawnVehicleRecording
    L3_2()
  end
  L3_2 = L26_1
  L3_2 = #L3_2
  if L3_2 > 0 then
    L3_2 = initPedRecording
    L3_2()
  end
  L3_2 = L40_1
  L3_2 = #L3_2
  if L3_2 > 0 then
    L3_2 = sendOverlayLayersToJS
    L3_2()
    L3_2 = 1
    L4_2 = L40_1
    L4_2 = #L4_2
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = spawnOverlayVehicle
      L8_2 = L6_2
      L7_2(L8_2)
    end
  end
  ::lbl_180::
end
L71_1(L72_1, L73_1)
L71_1 = RegisterNetEvent
L72_1 = "core_cinematics:projectLoadError"
function L73_1(A0_2)
  local L1_2, L2_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.type = "projectLoadError"
  L2_2.msg = A0_2
  L1_2(L2_2)
end
L71_1(L72_1, L73_1)
L71_1 = RegisterNetEvent
L72_1 = "core_cinematics:projectSaved"
function L73_1(A0_2)
  local L1_2, L2_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.type = "projectSaved"
  L2_2.slug = A0_2
  L1_2(L2_2)
end
L71_1(L72_1, L73_1)
L71_1 = RegisterNetEvent
L72_1 = "core_cinematics:projectDeleted"
function L73_1(A0_2)
  local L1_2, L2_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.type = "projectDeleted"
  L2_2.slug = A0_2
  L1_2(L2_2)
end
L71_1(L72_1, L73_1)
L71_1 = RegisterNUICallback
L72_1 = "startPositionMode"
function L73_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = true
  L2_1 = L2_2
  L2_2 = SetNuiFocus
  L3_2 = false
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.type = "positionModeOn"
  L2_2(L3_2)
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L71_1(L72_1, L73_1)
L71_1 = RegisterNUICallback
L72_1 = "exitPositionMode"
function L73_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = false
  L2_1 = L2_2
  L2_2 = SetNuiFocus
  L3_2 = true
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.type = "positionCancelled"
  L2_2(L3_2)
  L2_2 = sendCoordsUpdate
  L2_2()
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L71_1(L72_1, L73_1)
L71_1 = RegisterNUICallback
L72_1 = "startPlayback"
function L73_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = startPlayback
  L3_2 = A0_2.fromFrame
  if not L3_2 then
    L3_2 = 0
  end
  L4_2 = A0_2.totalFrames
  if not L4_2 then
    L4_2 = L7_1
  end
  L2_2(L3_2, L4_2)
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L71_1(L72_1, L73_1)
L71_1 = RegisterNUICallback
L72_1 = "stopPlayback"
function L73_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = stopPlayback
  L2_2()
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L71_1(L72_1, L73_1)
L71_1 = RegisterNUICallback
L72_1 = "jumpToFrame"
function L73_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = jumpToFrame
  L3_2 = A0_2.frame
  if not L3_2 then
    L3_2 = 0
  end
  L2_2(L3_2)
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L71_1(L72_1, L73_1)
L71_1 = RegisterNUICallback
L72_1 = "setPathSharing"
function L73_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.enabled
  L2_2 = true == L2_2
  L56_1 = L2_2
  L2_2 = L56_1
  if not L2_2 then
    L2_2 = TriggerServerEvent
    L3_2 = "core_cinematics:clearCameraPath"
    L2_2(L3_2)
  else
    L2_2 = syncCameraPathToServer
    L2_2()
  end
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L71_1(L72_1, L73_1)
L71_1 = RegisterNUICallback
L72_1 = "setKeyframes"
function L73_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.keyframes
  if not L2_2 then
    L2_2 = {}
  end
  L4_1 = L2_2
  L2_2 = A0_2.totalFrames
  if not L2_2 then
    L2_2 = L7_1
  end
  L7_1 = L2_2
  L2_2 = syncCameraPathToServer
  L2_2()
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L71_1(L72_1, L73_1)
L71_1 = nil
L72_1 = RegisterNUICallback
L73_1 = "tutorialSpawnAdder"
function L74_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L0_3 = -1216765807
    L1_3 = RequestModel
    L2_3 = L0_3
    L1_3(L2_3)
    L1_3 = 0
    while true do
      L2_3 = HasModelLoaded
      L3_3 = L0_3
      L2_3 = L2_3(L3_3)
      if L2_3 then
        break
      end
      L2_3 = 250
      if not (L1_3 < L2_3) then
        break
      end
      L2_3 = Wait
      L3_3 = 20
      L2_3(L3_3)
      L1_3 = L1_3 + 1
    end
    L2_3 = HasModelLoaded
    L3_3 = L0_3
    L2_3 = L2_3(L3_3)
    if not L2_3 then
      L2_3 = A1_2
      L3_3 = "fail"
      L2_3(L3_3)
      return
    end
    L2_3 = PlayerPedId
    L2_3 = L2_3()
    L3_3 = GetEntityCoords
    L4_3 = L2_3
    L3_3 = L3_3(L4_3)
    L4_3 = GetEntityHeading
    L5_3 = L2_3
    L4_3 = L4_3(L5_3)
    L5_3 = L71_1
    if L5_3 then
      L5_3 = DoesEntityExist
      L6_3 = L71_1
      L5_3 = L5_3(L6_3)
      if L5_3 then
        L5_3 = DeleteEntity
        L6_3 = L71_1
        L5_3(L6_3)
      end
    end
    L5_3 = CreateVehicle
    L6_3 = L0_3
    L7_3 = L3_3.x
    L8_3 = L3_3.y
    L9_3 = L3_3.z
    L10_3 = L4_3
    L11_3 = true
    L12_3 = false
    L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
    L71_1 = L5_3
    L5_3 = SetEntityAsMissionEntity
    L6_3 = L71_1
    L7_3 = true
    L8_3 = true
    L5_3(L6_3, L7_3, L8_3)
    L5_3 = SetVehicleOnGroundProperly
    L6_3 = L71_1
    L5_3(L6_3)
    L5_3 = TaskWarpPedIntoVehicle
    L6_3 = L2_3
    L7_3 = L71_1
    L8_3 = -1
    L5_3(L6_3, L7_3, L8_3)
    L5_3 = SetModelAsNoLongerNeeded
    L6_3 = L0_3
    L5_3(L6_3)
    L5_3 = Wait
    L6_3 = 300
    L5_3(L6_3)
    L5_3 = A1_2
    L6_3 = "ok"
    L5_3(L6_3)
  end
  L2_2(L3_2)
end
L72_1(L73_1, L74_1)
L72_1 = RegisterNUICallback
L73_1 = "tutorialDespawnAdder"
function L74_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L71_1
  if L2_2 then
    L2_2 = DoesEntityExist
    L3_2 = L71_1
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = GetEntityCoords
      L3_2 = L71_1
      L2_2 = L2_2(L3_2)
      L3_2 = SendNUIMessage
      L4_2 = {}
      L4_2.type = "tutorialAdderPos"
      L5_2 = {}
      L6_2 = L2_2.x
      L5_2.x = L6_2
      L6_2 = L2_2.y
      L5_2.y = L6_2
      L6_2 = L2_2.z
      L5_2.z = L6_2
      L4_2.pos = L5_2
      L3_2(L4_2)
      L3_2 = DeleteEntity
      L4_2 = L71_1
      L3_2(L4_2)
    end
  end
  L2_2 = nil
  L71_1 = L2_2
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L72_1(L73_1, L74_1)
L72_1 = RegisterNUICallback
L73_1 = "tutorialReopenUI"
function L74_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L0_1
  if not L2_2 then
    L2_2 = openUI
    L2_2()
  end
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L72_1(L73_1, L74_1)
L72_1 = RegisterNUICallback
L73_1 = "tutorialCarPosAtFrame"
function L74_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L2_2 = tonumber
  L3_2 = A0_2.frame
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = 0
  end
  L3_2 = L14_1
  L3_2 = L3_2[1]
  if L3_2 then
    L4_2 = L3_2.frames
    if L4_2 then
      L4_2 = L3_2.frames
      L4_2 = #L4_2
      if 0 ~= L4_2 then
        goto lbl_24
      end
    end
  end
  L4_2 = A1_2
  L5_2 = {}
  L5_2.ok = false
  L4_2(L5_2)
  do return end
  ::lbl_24::
  L4_2 = Config
  L4_2 = L4_2.DefaultFPS
  if not L4_2 then
    L4_2 = 30
  end
  L5_2 = L2_2 / L4_2
  L6_2 = L22_1
  if not L6_2 then
    L6_2 = 0.0
  end
  L5_2 = L5_2 - L6_2
  L6_2 = L24_1
  if not L6_2 then
    L6_2 = 0.0
  end
  L5_2 = L5_2 + L6_2
  if L5_2 < 0 then
    L5_2 = 0
  end
  L6_2 = L3_2.frames
  L7_2 = L3_2.frames
  L7_2 = #L7_2
  L6_2 = L6_2[L7_2]
  L6_2 = L6_2.t
  if L5_2 > L6_2 then
    L6_2 = L3_2.frames
    L7_2 = L3_2.frames
    L7_2 = #L7_2
    L6_2 = L6_2[L7_2]
    L7_2 = A1_2
    L8_2 = {}
    L8_2.ok = true
    L9_2 = L6_2.px
    L8_2.x = L9_2
    L9_2 = L6_2.py
    L8_2.y = L9_2
    L9_2 = L6_2.pz
    L8_2.z = L9_2
    L7_2(L8_2)
    return
  end
  L6_2 = 1
  L7_2 = L3_2.frames
  L7_2 = #L7_2
  L7_2 = L7_2 - 1
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = L3_2.frames
    L10_2 = L10_2[L9_2]
    L11_2 = L3_2.frames
    L12_2 = L9_2 + 1
    L11_2 = L11_2[L12_2]
    L12_2 = L10_2.t
    if L5_2 >= L12_2 then
      L12_2 = L11_2.t
      if L5_2 <= L12_2 then
        L12_2 = L11_2.t
        L13_2 = L10_2.t
        L12_2 = L12_2 - L13_2
        if L12_2 > 0 then
          L13_2 = L10_2.t
          L13_2 = L5_2 - L13_2
          L13_2 = L13_2 / L12_2
          if L13_2 then
            goto lbl_102
          end
        end
        L13_2 = 0
        ::lbl_102::
        L14_2 = A1_2
        L15_2 = {}
        L15_2.ok = true
        L16_2 = L10_2.px
        L17_2 = L11_2.px
        L18_2 = L10_2.px
        L17_2 = L17_2 - L18_2
        L17_2 = L17_2 * L13_2
        L16_2 = L16_2 + L17_2
        L15_2.x = L16_2
        L16_2 = L10_2.py
        L17_2 = L11_2.py
        L18_2 = L10_2.py
        L17_2 = L17_2 - L18_2
        L17_2 = L17_2 * L13_2
        L16_2 = L16_2 + L17_2
        L15_2.y = L16_2
        L16_2 = L10_2.pz
        L17_2 = L11_2.pz
        L18_2 = L10_2.pz
        L17_2 = L17_2 - L18_2
        L17_2 = L17_2 * L13_2
        L16_2 = L16_2 + L17_2
        L15_2.z = L16_2
        L14_2(L15_2)
        return
      end
    end
  end
  L6_2 = L3_2.frames
  L6_2 = L6_2[1]
  L7_2 = A1_2
  L8_2 = {}
  L8_2.ok = true
  L9_2 = L6_2.px
  L8_2.x = L9_2
  L9_2 = L6_2.py
  L8_2.y = L9_2
  L9_2 = L6_2.pz
  L8_2.z = L9_2
  L7_2(L8_2)
end
L72_1(L73_1, L74_1)
L72_1 = RegisterNUICallback
L73_1 = "setInterpSettings"
function L74_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.mode
  if not L2_2 then
    L2_2 = "native"
  end
  L13_1.mode = L2_2
  L2_2 = tonumber
  L3_2 = A0_2.tension
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = 0.0
  end
  L13_1.tension = L2_2
  L2_2 = tonumber
  L3_2 = A0_2.spring
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = 0.0
  end
  L13_1.spring = L2_2
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L72_1(L73_1, L74_1)
L72_1 = RegisterNUICallback
L73_1 = "setWorldSettings"
function L74_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = tonumber
  L3_2 = A0_2.time
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = L64_1.time
  end
  L64_1.time = L2_2
  L2_2 = A0_2.freezeTime
  if not L2_2 then
    L2_2 = false
  end
  L64_1.freezeTime = L2_2
  L2_2 = A0_2.weather
  if not L2_2 then
    L2_2 = L64_1.weather
  end
  L64_1.weather = L2_2
  L2_2 = A0_2.weatherOverride
  L2_2 = false ~= L2_2
  L64_1.weatherOverride = L2_2
  L2_2 = A0_2.rainEnabled
  L2_2 = true == L2_2
  L64_1.rainEnabled = L2_2
  L2_2 = tonumber
  L3_2 = A0_2.rainLevel
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = 0.0
  end
  L64_1.rainLevel = L2_2
  L2_2 = tonumber
  L3_2 = A0_2.windSpeed
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = L64_1.windSpeed
  end
  L64_1.windSpeed = L2_2
  L2_2 = A0_2.cityLights
  if not L2_2 then
    L2_2 = false
  end
  L64_1.cityLights = L2_2
  L2_2 = L64_1.weatherOverride
  if L2_2 then
    L2_2 = SetOverrideWeather
    L3_2 = L64_1.weather
    L2_2(L3_2)
  else
    L2_2 = ClearOverrideWeather
    L2_2()
  end
  L2_2 = SetRainLevel
  L3_2 = L64_1.rainEnabled
  if L3_2 then
    L3_2 = L64_1.rainLevel
    if L3_2 then
      goto lbl_66
    end
  end
  L3_2 = 0.0
  ::lbl_66::
  L2_2(L3_2)
  L2_2 = SetWindSpeed
  L3_2 = L64_1.windSpeed
  L2_2(L3_2)
  L2_2 = SetArtificialLightsState
  L3_2 = L64_1.cityLights
  L2_2(L3_2)
  L2_2 = applyGameTime
  L3_2 = L64_1.time
  L2_2(L3_2)
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L72_1(L73_1, L74_1)
L72_1 = RegisterNUICallback
L73_1 = "previewKeyframe"
function L74_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2.keyframe
  if not L2_2 then
    L3_2 = A1_2
    L4_2 = "ok"
    L3_2(L4_2)
    return
  end
  L3_2 = L3_1
  if L3_2 then
    L3_2 = DoesCamExist
    L4_2 = L3_1
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_47
    end
  end
  L3_2 = GetGameplayCamCoord
  L3_2 = L3_2()
  L4_2 = GetGameplayCamRot
  L5_2 = 2
  L4_2 = L4_2(L5_2)
  L5_2 = GetGameplayCamFov
  L5_2 = L5_2()
  L6_2 = CreateCam
  L7_2 = "DEFAULT_SCRIPTED_CAMERA"
  L8_2 = true
  L6_2 = L6_2(L7_2, L8_2)
  L3_1 = L6_2
  L6_2 = SetCamCoord
  L7_2 = L3_1
  L8_2 = L3_2.x
  L9_2 = L3_2.y
  L10_2 = L3_2.z
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = SetCamRot
  L7_2 = L3_1
  L8_2 = L4_2.x
  L9_2 = L4_2.y
  L10_2 = L4_2.z
  L11_2 = 2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L6_2 = SetCamFov
  L7_2 = L3_1
  L8_2 = fv
  L9_2 = L5_2
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  ::lbl_47::
  L3_2 = RenderScriptCams
  L4_2 = true
  L5_2 = false
  L6_2 = 0
  L7_2 = true
  L8_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = SetCamActive
  L4_2 = L3_1
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = SetCamCoord
  L4_2 = L3_1
  L5_2 = L2_2.pos
  L5_2 = L5_2.x
  L6_2 = L2_2.pos
  L6_2 = L6_2.y
  L7_2 = L2_2.pos
  L7_2 = L7_2.z
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = SetCamRot
  L4_2 = L3_1
  L5_2 = L2_2.rot
  L5_2 = L5_2.x
  L6_2 = L2_2.rot
  L6_2 = L6_2.y
  L7_2 = L2_2.rot
  L7_2 = L7_2.z
  L8_2 = 2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = SetCamFov
  L4_2 = L3_1
  L5_2 = fv
  L6_2 = L2_2.fov
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L3_2 = applyEffects
  L4_2 = L2_2.effects
  if not L4_2 then
    L4_2 = {}
  end
  L3_2(L4_2)
  L3_2 = L2_2.time
  if L3_2 then
    L4_2 = L3_2.enabled
    if L4_2 then
      L4_2 = L3_2.value
      if L4_2 then
        L4_2 = applyGameTime
        L5_2 = L3_2.value
        L4_2(L5_2)
    end
  end
  else
    L4_2 = L64_1.freezeTime
    if L4_2 then
      L4_2 = applyGameTime
      L5_2 = L64_1.time
      L4_2(L5_2)
    end
  end
  L4_2 = sendCoordsUpdate
  L4_2()
  L4_2 = A1_2
  L5_2 = "ok"
  L4_2(L5_2)
end
L72_1(L73_1, L74_1)
L72_1 = true
L73_1 = true
L74_1 = RegisterNUICallback
L75_1 = "startVehicleRecord"
function L76_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.vehicles
  L2_2 = false ~= L2_2
  L72_1 = L2_2
  L2_2 = A0_2.peds
  L2_2 = false ~= L2_2
  L73_1 = L2_2
  L2_2 = nil
  L61_1 = L2_2
  L2_2 = nil
  L62_1 = L2_2
  L2_2 = closeUI
  L2_2()
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.type = "recordingCountdown"
  L2_2(L3_2)
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L74_1(L75_1, L76_1)
L74_1 = RegisterNUICallback
L75_1 = "recordingCountdownDone"
function L76_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L65_1
  if L2_2 then
    L2_2 = beginSoloRecording
    L2_2()
  else
    L2_2 = startVehicleRecording
    L3_2 = L72_1
    L4_2 = L73_1
    L2_2(L3_2, L4_2)
    L2_2 = SendNUIMessage
    L3_2 = {}
    L3_2.type = "recordingStarted"
    L2_2(L3_2)
  end
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L74_1(L75_1, L76_1)
L74_1 = RegisterNUICallback
L75_1 = "setVehicleMotionBlur"
function L76_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2.enabled
  L2_2 = true == L2_2
  L19_1 = L2_2
  L2_2 = pairs
  L3_2 = L16_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    if L7_2 then
      L8_2 = DoesEntityExist
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      if L8_2 then
        L8_2 = SetEntityMotionBlur
        L9_2 = L7_2
        L10_2 = L19_1
        L8_2(L9_2, L10_2)
      end
    end
  end
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L74_1(L75_1, L76_1)
L74_1 = RegisterNUICallback
L75_1 = "setTextData"
function L76_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = {}
  L44_1 = L2_2
  L2_2 = A0_2.textObjects
  if L2_2 then
    L2_2 = ipairs
    L3_2 = A0_2.textObjects
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L9_2 = L7_2.id
      L8_2 = L44_1
      L8_2[L9_2] = L7_2
    end
  end
  L2_2 = A0_2.textClips
  if not L2_2 then
    L2_2 = {}
  end
  L45_1 = L2_2
  L2_2 = L68_1
  L2_2()
  L2_2 = pairs
  L3_2 = L44_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L67_1
    L9_2 = L7_2
    L8_2(L9_2)
  end
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L74_1(L75_1, L76_1)
L74_1 = RegisterNUICallback
L75_1 = "startTextPlacement"
function L76_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = SetNuiFocus
  L3_2 = false
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
  L2_2 = TextPlacement
  L2_2 = L2_2.Start
  L3_2 = A0_2
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = SetNuiFocus
    L2_3 = true
    L3_3 = true
    L1_3(L2_3, L3_3)
    L1_3 = L3_1
    if L1_3 then
      L1_3 = DoesCamExist
      L2_3 = L3_1
      L1_3 = L1_3(L2_3)
      if L1_3 then
        L1_3 = SetCamActive
        L2_3 = L3_1
        L3_3 = true
        L1_3(L2_3, L3_3)
        L1_3 = RenderScriptCams
        L2_3 = true
        L3_3 = false
        L4_3 = 0
        L5_3 = true
        L6_3 = false
        L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
      end
    end
    if A0_3 then
      L1_3 = SendNUIMessage
      L2_3 = {}
      L2_3.type = "textPlacementDone"
      L2_3.coords = A0_3
      L1_3(L2_3)
    else
      L1_3 = SendNUIMessage
      L2_3 = {}
      L2_3.type = "textPlacementActive"
      L2_3.active = false
      L1_3(L2_3)
    end
  end
  L2_2(L3_2, L4_2)
end
L74_1(L75_1, L76_1)
L74_1 = RegisterNUICallback
L75_1 = "spawnScenePed"
function L76_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2.id
  L3_2 = A0_2.model
  L4_2 = A0_2.pos
  L5_2 = A0_2.heading
  if not L5_2 then
    L5_2 = 0.0
  end
  L6_2 = GetHashKey
  L7_2 = L3_2
  L6_2 = L6_2(L7_2)
  L7_2 = RequestModel
  L8_2 = L6_2
  L7_2(L8_2)
  L7_2 = CreateThread
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L0_3 = 0
    while true do
      L1_3 = HasModelLoaded
      L2_3 = L6_2
      L1_3 = L1_3(L2_3)
      if not (not L1_3 and L0_3 < 100) then
        break
      end
      L1_3 = Wait
      L2_3 = 50
      L1_3(L2_3)
      L0_3 = L0_3 + 1
    end
    L1_3 = HasModelLoaded
    L2_3 = L6_2
    L1_3 = L1_3(L2_3)
    if not L1_3 then
      L1_3 = SendNUIMessage
      L2_3 = {}
      L2_3.type = "sceneSpawnError"
      L3_3 = L2_2
      L2_3.id = L3_3
      L3_3 = _L
      L4_3 = "lua.errors.model_not_found"
      L5_3 = {}
      L6_3 = L3_2
      L5_3.model = L6_3
      L3_3 = L3_3(L4_3, L5_3)
      L2_3.msg = L3_3
      L1_3(L2_3)
      return
    end
    L1_3 = L4_2.z
    L2_3 = GetGroundZFor_3dCoord
    L3_3 = L4_2.x
    L4_3 = L4_2.y
    L5_3 = L4_2.z
    L5_3 = L5_3 + 5.0
    L6_3 = false
    L2_3, L3_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
    if L2_3 then
      L1_3 = L3_3 + 0.1
    end
    L4_3 = CreatePed
    L5_3 = 4
    L6_3 = L6_2
    L7_3 = L4_2.x
    L8_3 = L4_2.y
    L9_3 = L1_3
    L10_3 = L5_2
    L11_3 = false
    L12_3 = false
    L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
    L5_3 = SetEntityInvincible
    L6_3 = L4_3
    L7_3 = true
    L5_3(L6_3, L7_3)
    L5_3 = SetBlockingOfNonTemporaryEvents
    L6_3 = L4_3
    L7_3 = true
    L5_3(L6_3, L7_3)
    L5_3 = FreezeEntityPosition
    L6_3 = L4_3
    L7_3 = true
    L5_3(L6_3, L7_3)
    L5_3 = PlaceObjectOnGroundProperly
    L6_3 = L4_3
    L5_3(L6_3)
    L5_3 = SetModelAsNoLongerNeeded
    L6_3 = L6_2
    L5_3(L6_3)
    L6_3 = L2_2
    L5_3 = L47_1
    L7_3 = {}
    L8_3 = L2_2
    L7_3.id = L8_3
    L7_3.type = "ped"
    L8_3 = L3_2
    L7_3.model = L8_3
    L7_3.entityHandle = L4_3
    L8_3 = {}
    L9_3 = L4_2.x
    L8_3.x = L9_3
    L9_3 = L4_2.y
    L8_3.y = L9_3
    L8_3.z = L1_3
    L7_3.pos = L8_3
    L8_3 = L5_2
    L7_3.heading = L8_3
    L5_3[L6_3] = L7_3
    L5_3 = GetEntityCoords
    L6_3 = L4_3
    L5_3 = L5_3(L6_3)
    L6_3 = SendNUIMessage
    L7_3 = {}
    L7_3.type = "sceneEntitySpawned"
    L8_3 = L2_2
    L7_3.id = L8_3
    L8_3 = {}
    L9_3 = L5_3.x
    L8_3.x = L9_3
    L9_3 = L5_3.y
    L8_3.y = L9_3
    L9_3 = L5_3.z
    L8_3.z = L9_3
    L7_3.pos = L8_3
    L6_3(L7_3)
  end
  L7_2(L8_2)
  L7_2 = A1_2
  L8_2 = "ok"
  L7_2(L8_2)
end
L74_1(L75_1, L76_1)
L74_1 = RegisterNUICallback
L75_1 = "spawnSceneVehicle"
function L76_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2.id
  L3_2 = A0_2.model
  L4_2 = A0_2.pos
  L5_2 = A0_2.heading
  if not L5_2 then
    L5_2 = 0.0
  end
  L6_2 = GetHashKey
  L7_2 = L3_2
  L6_2 = L6_2(L7_2)
  L7_2 = RequestModel
  L8_2 = L6_2
  L7_2(L8_2)
  L7_2 = CreateThread
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L0_3 = 0
    while true do
      L1_3 = HasModelLoaded
      L2_3 = L6_2
      L1_3 = L1_3(L2_3)
      if not (not L1_3 and L0_3 < 100) then
        break
      end
      L1_3 = Wait
      L2_3 = 50
      L1_3(L2_3)
      L0_3 = L0_3 + 1
    end
    L1_3 = HasModelLoaded
    L2_3 = L6_2
    L1_3 = L1_3(L2_3)
    if not L1_3 then
      L1_3 = SendNUIMessage
      L2_3 = {}
      L2_3.type = "sceneSpawnError"
      L3_3 = L2_2
      L2_3.id = L3_3
      L3_3 = _L
      L4_3 = "lua.errors.model_not_found"
      L5_3 = {}
      L6_3 = L3_2
      L5_3.model = L6_3
      L3_3 = L3_3(L4_3, L5_3)
      L2_3.msg = L3_3
      L1_3(L2_3)
      return
    end
    L1_3 = L4_2.z
    L2_3 = GetGroundZFor_3dCoord
    L3_3 = L4_2.x
    L4_3 = L4_2.y
    L5_3 = L4_2.z
    L5_3 = L5_3 + 5.0
    L6_3 = false
    L2_3, L3_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
    if L2_3 then
      L1_3 = L3_3 + 0.5
    end
    L4_3 = CreateVehicle
    L5_3 = L6_2
    L6_3 = L4_2.x
    L7_3 = L4_2.y
    L8_3 = L1_3
    L9_3 = L5_2
    L10_3 = false
    L11_3 = false
    L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
    L5_3 = SetEntityInvincible
    L6_3 = L4_3
    L7_3 = true
    L5_3(L6_3, L7_3)
    L5_3 = FreezeEntityPosition
    L6_3 = L4_3
    L7_3 = true
    L5_3(L6_3, L7_3)
    L5_3 = SetVehicleOnGroundProperly
    L6_3 = L4_3
    L5_3(L6_3)
    L5_3 = SetModelAsNoLongerNeeded
    L6_3 = L6_2
    L5_3(L6_3)
    L6_3 = L2_2
    L5_3 = L47_1
    L7_3 = {}
    L8_3 = L2_2
    L7_3.id = L8_3
    L7_3.type = "vehicle"
    L8_3 = L3_2
    L7_3.model = L8_3
    L7_3.entityHandle = L4_3
    L8_3 = {}
    L9_3 = L4_2.x
    L8_3.x = L9_3
    L9_3 = L4_2.y
    L8_3.y = L9_3
    L8_3.z = L1_3
    L7_3.pos = L8_3
    L8_3 = L5_2
    L7_3.heading = L8_3
    L5_3[L6_3] = L7_3
    L5_3 = GetEntityCoords
    L6_3 = L4_3
    L5_3 = L5_3(L6_3)
    L6_3 = SendNUIMessage
    L7_3 = {}
    L7_3.type = "sceneEntitySpawned"
    L8_3 = L2_2
    L7_3.id = L8_3
    L8_3 = {}
    L9_3 = L5_3.x
    L8_3.x = L9_3
    L9_3 = L5_3.y
    L8_3.y = L9_3
    L9_3 = L5_3.z
    L8_3.z = L9_3
    L7_3.pos = L8_3
    L6_3(L7_3)
  end
  L7_2(L8_2)
  L7_2 = A1_2
  L8_2 = "ok"
  L7_2(L8_2)
end
L74_1(L75_1, L76_1)
L74_1 = RegisterNUICallback
L75_1 = "deleteSceneEntity"
function L76_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.entityId
  L3_2 = L47_1
  L3_2 = L3_2[L2_2]
  if L3_2 then
    L4_2 = L3_2.followGen
    if not L4_2 then
      L4_2 = 0
    end
    L4_2 = L4_2 + 1
    L3_2.followGen = L4_2
    L4_2 = L48_1
    L4_2[L2_2] = nil
    L4_2 = L3_2.driverPed
    if L4_2 then
      L4_2 = DoesEntityExist
      L5_2 = L3_2.driverPed
      L4_2 = L4_2(L5_2)
      if L4_2 then
        L4_2 = DeleteEntity
        L5_2 = L3_2.driverPed
        L4_2(L5_2)
      end
    end
    L4_2 = L3_2.entityHandle
    if L4_2 then
      L4_2 = DoesEntityExist
      L5_2 = L3_2.entityHandle
      L4_2 = L4_2(L5_2)
      if L4_2 then
        L4_2 = DeleteEntity
        L5_2 = L3_2.entityHandle
        L4_2(L5_2)
      end
    end
    L4_2 = L47_1
    L4_2[L2_2] = nil
  end
  L4_2 = A1_2
  L5_2 = "ok"
  L4_2(L5_2)
end
L74_1(L75_1, L76_1)
L74_1 = RegisterNUICallback
L75_1 = "scenePlayAnim"
function L76_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2.entityId
  L2_2 = L47_1
  L2_2 = L2_2[L3_2]
  if L2_2 then
    L3_2 = L2_2.entityHandle
    if L3_2 then
      L3_2 = DoesEntityExist
      L4_2 = L2_2.entityHandle
      L3_2 = L3_2(L4_2)
      if L3_2 then
        goto lbl_18
      end
    end
  end
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
  do return end
  ::lbl_18::
  L3_2 = A0_2.dict
  L4_2 = A0_2.name
  L5_2 = A0_2.loop
  L6_2 = RequestAnimDict
  L7_2 = L3_2
  L6_2(L7_2)
  L6_2 = CreateThread
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L0_3 = 0
    while true do
      L1_3 = HasAnimDictLoaded
      L2_3 = L3_2
      L1_3 = L1_3(L2_3)
      if not (not L1_3 and L0_3 < 100) then
        break
      end
      L1_3 = Wait
      L2_3 = 50
      L1_3(L2_3)
      L0_3 = L0_3 + 1
    end
    L1_3 = HasAnimDictLoaded
    L2_3 = L3_2
    L1_3 = L1_3(L2_3)
    if not L1_3 then
      L1_3 = SendNUIMessage
      L2_3 = {}
      L2_3.type = "sceneSpawnError"
      L3_3 = _L
      L4_3 = "lua.errors.anim_dict_not_found"
      L5_3 = {}
      L6_3 = L3_2
      L5_3.dict = L6_3
      L3_3 = L3_3(L4_3, L5_3)
      L2_3.msg = L3_3
      L1_3(L2_3)
      return
    end
    L1_3 = FreezeEntityPosition
    L2_3 = L2_2.entityHandle
    L3_3 = false
    L1_3(L2_3, L3_3)
    L1_3 = L5_2
    if L1_3 then
      L1_3 = 1
      if L1_3 then
        goto lbl_45
      end
    end
    L1_3 = 0
    ::lbl_45::
    L2_3 = TaskPlayAnim
    L3_3 = L2_2.entityHandle
    L4_3 = L3_2
    L5_3 = L4_2
    L6_3 = 8.0
    L7_3 = -8.0
    L8_3 = -1
    L9_3 = L1_3
    L10_3 = 0
    L11_3 = false
    L12_3 = false
    L13_3 = false
    L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
  end
  L6_2(L7_2)
  L6_2 = A1_2
  L7_2 = "ok"
  L6_2(L7_2)
end
L74_1(L75_1, L76_1)
L74_1 = RegisterNUICallback
L75_1 = "sceneGiveWeapon"
function L76_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2.entityId
  L2_2 = L47_1
  L2_2 = L2_2[L3_2]
  if L2_2 then
    L3_2 = L2_2.type
    if "ped" == L3_2 then
      L3_2 = L2_2.entityHandle
      if L3_2 then
        L3_2 = DoesEntityExist
        L4_2 = L2_2.entityHandle
        L3_2 = L3_2(L4_2)
        if L3_2 then
          goto lbl_21
        end
      end
    end
  end
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
  do return end
  ::lbl_21::
  L3_2 = A0_2.weaponHash
  L4_2 = GiveWeaponToPed
  L5_2 = L2_2.entityHandle
  L6_2 = L3_2
  L7_2 = 999
  L8_2 = false
  L9_2 = true
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = SetCurrentPedWeapon
  L5_2 = L2_2.entityHandle
  L6_2 = L3_2
  L7_2 = true
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A1_2
  L5_2 = "ok"
  L4_2(L5_2)
end
L74_1(L75_1, L76_1)
L74_1 = RegisterNUICallback
L75_1 = "sceneSetFollow"
function L76_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2.entityId
  L3_2 = L47_1
  L3_2 = L3_2[L2_2]
  if L3_2 then
    L4_2 = L3_2.entityHandle
    if L4_2 then
      L4_2 = DoesEntityExist
      L5_2 = L3_2.entityHandle
      L4_2 = L4_2(L5_2)
      if L4_2 then
        goto lbl_18
      end
    end
  end
  L4_2 = A1_2
  L5_2 = "ok"
  L4_2(L5_2)
  do return end
  ::lbl_18::
  L4_2 = A0_2.dist
  if not L4_2 then
    L4_2 = L3_2.followDist
    if not L4_2 then
      L4_2 = 5.0
    end
  end
  L3_2.followDist = L4_2
  L4_2 = A0_2.speed
  if not L4_2 then
    L4_2 = L3_2.followSpeed
    if not L4_2 then
      L4_2 = 1.0
    end
  end
  L3_2.followSpeed = L4_2
  L4_2 = A0_2.follow
  if L4_2 then
    L4_2 = FreezeEntityPosition
    L5_2 = L3_2.entityHandle
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = SetBlockingOfNonTemporaryEvents
    L5_2 = L3_2.entityHandle
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = SetPedFleeAttributes
    L5_2 = L3_2.entityHandle
    L6_2 = 0
    L7_2 = false
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = SetPedCombatAttributes
    L5_2 = L3_2.entityHandle
    L6_2 = 46
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = SetPedKeepTask
    L5_2 = L3_2.entityHandle
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = L48_1
    L4_2 = L4_2[L2_2]
    if L4_2 then
      L4_2 = A1_2
      L5_2 = "ok"
      L4_2(L5_2)
      return
    end
    L4_2 = L48_1
    L4_2[L2_2] = true
    L4_2 = CreateThread
    function L5_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
      L0_3 = nil
      while true do
        L2_3 = L2_2
        L1_3 = L48_1
        L1_3 = L1_3[L2_3]
        if not L1_3 then
          break
        end
        L1_3 = L3_2.entityHandle
        if not L1_3 then
          break
        end
        L1_3 = DoesEntityExist
        L2_3 = L3_2.entityHandle
        L1_3 = L1_3(L2_3)
        if not L1_3 then
          break
        end
        L1_3 = PlayerPedId
        L1_3 = L1_3()
        L2_3 = L3_2.followSpeed
        if not L2_3 then
          L2_3 = 1.0
        end
        L3_3 = L3_2.followDist
        if not L3_3 then
          L3_3 = 5.0
        end
        if L0_3 ~= L2_3 then
          L4_3 = ClearPedTasks
          L5_3 = L3_2.entityHandle
          L4_3(L5_3)
          L4_3 = TaskGoToEntity
          L5_3 = L3_2.entityHandle
          L6_3 = L1_3
          L7_3 = -1
          L8_3 = L3_3
          L9_3 = L2_3 + 0.0
          L10_3 = 1.073741824E9
          L11_3 = 0
          L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
          L0_3 = L2_3
        end
        L4_3 = Wait
        L5_3 = 1000
        L4_3(L5_3)
      end
    end
    L4_2(L5_2)
  else
    L4_2 = L48_1
    L4_2[L2_2] = nil
    L4_2 = ClearPedTasksImmediately
    L5_2 = L3_2.entityHandle
    L4_2(L5_2)
    L4_2 = FreezeEntityPosition
    L5_2 = L3_2.entityHandle
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = SetBlockingOfNonTemporaryEvents
    L5_2 = L3_2.entityHandle
    L6_2 = true
    L4_2(L5_2, L6_2)
  end
  L4_2 = A1_2
  L5_2 = "ok"
  L4_2(L5_2)
end
L74_1(L75_1, L76_1)
L74_1 = RegisterNUICallback
L75_1 = "sceneUpdatePedFollowSettings"
function L76_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2.entityId
  L2_2 = L47_1
  L2_2 = L2_2[L3_2]
  if not L2_2 then
    L3_2 = A1_2
    L4_2 = "ok"
    L3_2(L4_2)
    return
  end
  L3_2 = A0_2.dist
  if not L3_2 then
    L3_2 = L2_2.followDist
  end
  L2_2.followDist = L3_2
  L3_2 = A0_2.speed
  if not L3_2 then
    L3_2 = L2_2.followSpeed
  end
  L2_2.followSpeed = L3_2
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
end
L74_1(L75_1, L76_1)
L74_1 = RegisterNUICallback
L75_1 = "sceneSetVehicleFollow"
function L76_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2.entityId
  L3_2 = L47_1
  L3_2 = L3_2[L2_2]
  if L3_2 then
    L4_2 = L3_2.type
    if "vehicle" == L4_2 then
      L4_2 = L3_2.entityHandle
      if L4_2 then
        L4_2 = DoesEntityExist
        L5_2 = L3_2.entityHandle
        L4_2 = L4_2(L5_2)
        if L4_2 then
          goto lbl_21
        end
      end
    end
  end
  L4_2 = A1_2
  L5_2 = "ok"
  L4_2(L5_2)
  do return end
  ::lbl_21::
  L4_2 = A0_2.speed
  if not L4_2 then
    L4_2 = L3_2.followSpeed
    if not L4_2 then
      L4_2 = 25.0
    end
  end
  L3_2.followSpeed = L4_2
  L4_2 = A0_2.dist
  if not L4_2 then
    L4_2 = L3_2.followDist
    if not L4_2 then
      L4_2 = 10.0
    end
  end
  L3_2.followDist = L4_2
  L4_2 = A0_2.driveStyle
  if not L4_2 then
    L4_2 = L3_2.driveStyle
    if not L4_2 then
      L4_2 = 786603
    end
  end
  L3_2.driveStyle = L4_2
  L4_2 = L3_2.followGen
  if not L4_2 then
    L4_2 = 0
  end
  L4_2 = L4_2 + 1
  L3_2.followGen = L4_2
  L4_2 = L3_2.followGen
  L5_2 = L3_2.driverPed
  if L5_2 then
    L5_2 = DoesEntityExist
    L6_2 = L3_2.driverPed
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L5_2 = DeleteEntity
      L6_2 = L3_2.driverPed
      L5_2(L6_2)
    end
    L3_2.driverPed = nil
  end
  L5_2 = A0_2.follow
  if L5_2 then
    L5_2 = L48_1
    L5_2[L2_2] = true
    L5_2 = FreezeEntityPosition
    L6_2 = L3_2.entityHandle
    L7_2 = false
    L5_2(L6_2, L7_2)
    L5_2 = SetVehicleDoorsLocked
    L6_2 = L3_2.entityHandle
    L7_2 = 0
    L5_2(L6_2, L7_2)
    L5_2 = SetVehicleEngineOn
    L6_2 = L3_2.entityHandle
    L7_2 = true
    L8_2 = true
    L9_2 = false
    L5_2(L6_2, L7_2, L8_2, L9_2)
    L5_2 = GetHashKey
    L6_2 = "s_m_y_cop_01"
    L5_2 = L5_2(L6_2)
    L6_2 = RequestModel
    L7_2 = L5_2
    L6_2(L7_2)
    L6_2 = CreateThread
    function L7_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
      L0_3 = 0
      while true do
        L1_3 = HasModelLoaded
        L2_3 = L5_2
        L1_3 = L1_3(L2_3)
        if not (not L1_3 and L0_3 < 100) then
          break
        end
        L1_3 = Wait
        L2_3 = 50
        L1_3(L2_3)
        L0_3 = L0_3 + 1
      end
      L1_3 = HasModelLoaded
      L2_3 = L5_2
      L1_3 = L1_3(L2_3)
      if L1_3 then
        L1_3 = L3_2.followGen
        L2_3 = L4_2
        if L1_3 == L2_3 then
          L1_3 = DoesEntityExist
          L2_3 = L3_2.entityHandle
          L1_3 = L1_3(L2_3)
          if L1_3 then
            goto lbl_33
          end
        end
      end
      L1_3 = SetModelAsNoLongerNeeded
      L2_3 = L5_2
      L1_3(L2_3)
      do return end
      ::lbl_33::
      L1_3 = CreatePedInsideVehicle
      L2_3 = L3_2.entityHandle
      L3_3 = 4
      L4_3 = L5_2
      L5_3 = -1
      L6_3 = false
      L7_3 = false
      L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
      if not L1_3 or 0 == L1_3 then
        L2_3 = Wait
        L3_3 = 500
        L2_3(L3_3)
        L2_3 = L3_2.followGen
        L3_3 = L4_2
        if L2_3 == L3_3 then
          L2_3 = DoesEntityExist
          L3_3 = L3_2.entityHandle
          L2_3 = L2_3(L3_3)
          if L2_3 then
            goto lbl_61
          end
        end
        L2_3 = SetModelAsNoLongerNeeded
        L3_3 = L5_2
        L2_3(L3_3)
        do return end
        ::lbl_61::
        L2_3 = CreatePedInsideVehicle
        L3_3 = L3_2.entityHandle
        L4_3 = 4
        L5_3 = L5_2
        L6_3 = -1
        L7_3 = false
        L8_3 = false
        L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
        L1_3 = L2_3
      end
      L2_3 = SetModelAsNoLongerNeeded
      L3_3 = L5_2
      L2_3(L3_3)
      if not L1_3 or 0 == L1_3 then
        return
      end
      L2_3 = L3_2.followGen
      L3_3 = L4_2
      if L2_3 ~= L3_3 then
        L2_3 = DeleteEntity
        L3_3 = L1_3
        L2_3(L3_3)
        return
      end
      L2_3 = SetEntityInvincible
      L3_3 = L1_3
      L4_3 = true
      L2_3(L3_3, L4_3)
      L2_3 = SetEntityVisible
      L3_3 = L1_3
      L4_3 = false
      L5_3 = false
      L2_3(L3_3, L4_3, L5_3)
      L2_3 = SetBlockingOfNonTemporaryEvents
      L3_3 = L1_3
      L4_3 = true
      L2_3(L3_3, L4_3)
      L2_3 = SetPedKeepTask
      L3_3 = L1_3
      L4_3 = true
      L2_3(L3_3, L4_3)
      L3_2.driverPed = L1_3
      L2_3 = Wait
      L3_3 = 200
      L2_3(L3_3)
      L2_3 = nil
      L3_3 = nil
      while true do
        L4_3 = L3_2.followGen
        L5_3 = L4_2
        if L4_3 ~= L5_3 then
          break
        end
        L5_3 = L2_2
        L4_3 = L48_1
        L4_3 = L4_3[L5_3]
        if not L4_3 then
          break
        end
        L4_3 = DoesEntityExist
        L5_3 = L3_2.entityHandle
        L4_3 = L4_3(L5_3)
        if not L4_3 then
          break
        end
        L4_3 = DoesEntityExist
        L5_3 = L1_3
        L4_3 = L4_3(L5_3)
        if not L4_3 then
          break
        end
        L4_3 = L3_2.followSpeed
        if L2_3 == L4_3 then
          L4_3 = L3_2.driveStyle
          if L3_3 == L4_3 then
            goto lbl_169
          end
        end
        L4_3 = ClearPedTasks
        L5_3 = L1_3
        L4_3(L5_3)
        L4_3 = SetDriverAbility
        L5_3 = L1_3
        L6_3 = 1.0
        L4_3(L5_3, L6_3)
        L4_3 = SetDriverAggressiveness
        L5_3 = L1_3
        L6_3 = 1.0
        L4_3(L5_3, L6_3)
        L4_3 = TaskVehicleChase
        L5_3 = L1_3
        L6_3 = PlayerPedId
        L6_3, L7_3, L8_3 = L6_3()
        L4_3(L5_3, L6_3, L7_3, L8_3)
        L4_3 = SetTaskVehicleChaseBehaviorFlag
        L5_3 = L1_3
        L6_3 = 1
        L7_3 = true
        L4_3(L5_3, L6_3, L7_3)
        L4_3 = SetTaskVehicleChaseIdealPursuitDistance
        L5_3 = L1_3
        L6_3 = L3_2.followDist
        if not L6_3 then
          L6_3 = 10.0
        end
        L4_3(L5_3, L6_3)
        L4_3 = ModifyVehicleTopSpeed
        L5_3 = L3_2.entityHandle
        L6_3 = L3_2.followSpeed
        L6_3 = L6_3 / 25.0
        L4_3(L5_3, L6_3)
        L2_3 = L3_2.followSpeed
        L3_3 = L3_2.driveStyle
        ::lbl_169::
        L4_3 = Wait
        L5_3 = 1000
        L4_3(L5_3)
      end
      L4_3 = L3_2.followGen
      L5_3 = L4_2
      if L4_3 ~= L5_3 then
        L4_3 = DoesEntityExist
        L5_3 = L1_3
        L4_3 = L4_3(L5_3)
        if L4_3 then
          L4_3 = DeleteEntity
          L5_3 = L1_3
          L4_3(L5_3)
        end
      end
      L4_3 = L3_2.driverPed
      if L4_3 == L1_3 then
        L3_2.driverPed = nil
      end
    end
    L6_2(L7_2)
  else
    L5_2 = L48_1
    L5_2[L2_2] = nil
    L5_2 = DoesEntityExist
    L6_2 = L3_2.entityHandle
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L5_2 = FreezeEntityPosition
      L6_2 = L3_2.entityHandle
      L7_2 = true
      L5_2(L6_2, L7_2)
      L5_2 = SetVehicleDoorsLocked
      L6_2 = L3_2.entityHandle
      L7_2 = 2
      L5_2(L6_2, L7_2)
    end
  end
  L5_2 = A1_2
  L6_2 = "ok"
  L5_2(L6_2)
end
L74_1(L75_1, L76_1)
L74_1 = RegisterNUICallback
L75_1 = "sceneUpdateVehicleFollowSettings"
function L76_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2.entityId
  L2_2 = L47_1
  L2_2 = L2_2[L3_2]
  if not L2_2 then
    L3_2 = A1_2
    L4_2 = "ok"
    L3_2(L4_2)
    return
  end
  L3_2 = A0_2.speed
  if not L3_2 then
    L3_2 = L2_2.followSpeed
  end
  L2_2.followSpeed = L3_2
  L3_2 = A0_2.dist
  if not L3_2 then
    L3_2 = L2_2.followDist
  end
  L2_2.followDist = L3_2
  L3_2 = A0_2.driveStyle
  if not L3_2 then
    L3_2 = L2_2.driveStyle
  end
  L2_2.driveStyle = L3_2
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
end
L74_1(L75_1, L76_1)
L74_1 = RegisterNUICallback
L75_1 = "spawnSceneProp"
function L76_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2.id
  L3_2 = A0_2.model
  L4_2 = A0_2.pos
  L5_2 = A0_2.heading
  if not L5_2 then
    L5_2 = 0.0
  end
  L6_2 = GetHashKey
  L7_2 = L3_2
  L6_2 = L6_2(L7_2)
  L7_2 = RequestModel
  L8_2 = L6_2
  L7_2(L8_2)
  L7_2 = CreateThread
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L0_3 = 0
    while true do
      L1_3 = HasModelLoaded
      L2_3 = L6_2
      L1_3 = L1_3(L2_3)
      if not (not L1_3 and L0_3 < 100) then
        break
      end
      L1_3 = Wait
      L2_3 = 50
      L1_3(L2_3)
      L0_3 = L0_3 + 1
    end
    L1_3 = HasModelLoaded
    L2_3 = L6_2
    L1_3 = L1_3(L2_3)
    if not L1_3 then
      L1_3 = SendNUIMessage
      L2_3 = {}
      L2_3.type = "sceneSpawnError"
      L3_3 = L2_2
      L2_3.id = L3_3
      L3_3 = _L
      L4_3 = "lua.errors.model_not_found"
      L5_3 = {}
      L6_3 = L3_2
      L5_3.model = L6_3
      L3_3 = L3_3(L4_3, L5_3)
      L2_3.msg = L3_3
      L1_3(L2_3)
      return
    end
    L1_3 = CreateObject
    L2_3 = L6_2
    L3_3 = L4_2.x
    L4_3 = L4_2.y
    L5_3 = L4_2.z
    L6_3 = false
    L7_3 = false
    L8_3 = false
    L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
    L2_3 = FreezeEntityPosition
    L3_3 = L1_3
    L4_3 = true
    L2_3(L3_3, L4_3)
    L2_3 = SetEntityInvincible
    L3_3 = L1_3
    L4_3 = true
    L2_3(L3_3, L4_3)
    L2_3 = PlaceObjectOnGroundProperly
    L3_3 = L1_3
    L2_3(L3_3)
    L2_3 = SetModelAsNoLongerNeeded
    L3_3 = L6_2
    L2_3(L3_3)
    L3_3 = L2_2
    L2_3 = L47_1
    L4_3 = {}
    L5_3 = L2_2
    L4_3.id = L5_3
    L4_3.type = "prop"
    L5_3 = L3_2
    L4_3.model = L5_3
    L4_3.entityHandle = L1_3
    L5_3 = L4_2
    L4_3.pos = L5_3
    L5_3 = L5_2
    L4_3.heading = L5_3
    L2_3[L3_3] = L4_3
    L2_3 = GetEntityCoords
    L3_3 = L1_3
    L2_3 = L2_3(L3_3)
    L3_3 = SendNUIMessage
    L4_3 = {}
    L4_3.type = "sceneEntitySpawned"
    L5_3 = L2_2
    L4_3.id = L5_3
    L5_3 = {}
    L6_3 = L2_3.x
    L5_3.x = L6_3
    L6_3 = L2_3.y
    L5_3.y = L6_3
    L6_3 = L2_3.z
    L5_3.z = L6_3
    L4_3.pos = L5_3
    L3_3(L4_3)
  end
  L7_2(L8_2)
  L7_2 = A1_2
  L8_2 = "ok"
  L7_2(L8_2)
end
L74_1(L75_1, L76_1)
L74_1 = RegisterNUICallback
L75_1 = "scenePropSetting"
function L76_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2.entityId
  L2_2 = L47_1
  L2_2 = L2_2[L3_2]
  if L2_2 then
    L3_2 = L2_2.entityHandle
    if L3_2 then
      L3_2 = DoesEntityExist
      L4_2 = L2_2.entityHandle
      L3_2 = L3_2(L4_2)
      if L3_2 then
        goto lbl_18
      end
    end
  end
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
  do return end
  ::lbl_18::
  L3_2 = A0_2.key
  L4_2 = A0_2.value
  if "frozen" == L3_2 then
    L5_2 = FreezeEntityPosition
    L6_2 = L2_2.entityHandle
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  elseif "visible" == L3_2 then
    L5_2 = SetEntityVisible
    L6_2 = L2_2.entityHandle
    L7_2 = L4_2
    L8_2 = false
    L5_2(L6_2, L7_2, L8_2)
  elseif "onFire" == L3_2 then
    if L4_2 then
      L5_2 = StartEntityFire
      L6_2 = L2_2.entityHandle
      L5_2(L6_2)
    else
      L5_2 = StopEntityFire
      L6_2 = L2_2.entityHandle
      L5_2(L6_2)
    end
  end
  L5_2 = A1_2
  L6_2 = "ok"
  L5_2(L6_2)
end
L74_1(L75_1, L76_1)
L74_1 = RegisterNUICallback
L75_1 = "sceneVehEngine"
function L76_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2.entityId
  L2_2 = L47_1
  L2_2 = L2_2[L3_2]
  if L2_2 then
    L3_2 = L2_2.entityHandle
    if L3_2 then
      goto lbl_13
    end
  end
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
  do return end
  ::lbl_13::
  L3_2 = SetVehicleEngineOn
  L4_2 = L2_2.entityHandle
  L5_2 = A0_2.on
  L6_2 = true
  L7_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
end
L74_1(L75_1, L76_1)
L74_1 = RegisterNUICallback
L75_1 = "sceneVehSiren"
function L76_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2.entityId
  L2_2 = L47_1
  L2_2 = L2_2[L3_2]
  if L2_2 then
    L3_2 = L2_2.entityHandle
    if L3_2 then
      goto lbl_13
    end
  end
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
  do return end
  ::lbl_13::
  L3_2 = SetVehicleSiren
  L4_2 = L2_2.entityHandle
  L5_2 = A0_2.on
  L3_2(L4_2, L5_2)
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
end
L74_1(L75_1, L76_1)
L74_1 = RegisterNUICallback
L75_1 = "sceneVehLights"
function L76_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2.entityId
  L2_2 = L47_1
  L2_2 = L2_2[L3_2]
  if L2_2 then
    L3_2 = L2_2.entityHandle
    if L3_2 then
      goto lbl_13
    end
  end
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
  do return end
  ::lbl_13::
  L3_2 = L2_2.entityHandle
  L4_2 = A0_2.mode
  L5_2 = SetVehicleInteriorlight
  L6_2 = L3_2
  L7_2 = false
  L5_2(L6_2, L7_2)
  if 0 ~= L4_2 then
    L5_2 = SetVehicleEngineOn
    L6_2 = L3_2
    L7_2 = true
    L8_2 = true
    L9_2 = false
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
  if 0 == L4_2 then
    L5_2 = SetVehicleLights
    L6_2 = L3_2
    L7_2 = 1
    L5_2(L6_2, L7_2)
    L5_2 = SetVehicleFullbeam
    L6_2 = L3_2
    L7_2 = false
    L5_2(L6_2, L7_2)
  elseif 1 == L4_2 then
    L5_2 = SetVehicleLights
    L6_2 = L3_2
    L7_2 = 2
    L5_2(L6_2, L7_2)
    L5_2 = SetVehicleFullbeam
    L6_2 = L3_2
    L7_2 = false
    L5_2(L6_2, L7_2)
  elseif 2 == L4_2 then
    L5_2 = SetVehicleLights
    L6_2 = L3_2
    L7_2 = 2
    L5_2(L6_2, L7_2)
    L5_2 = SetVehicleFullbeam
    L6_2 = L3_2
    L7_2 = true
    L5_2(L6_2, L7_2)
  elseif 3 == L4_2 then
    L5_2 = SetVehicleLights
    L6_2 = L3_2
    L7_2 = 1
    L5_2(L6_2, L7_2)
    L5_2 = SetVehicleInteriorlight
    L6_2 = L3_2
    L7_2 = true
    L5_2(L6_2, L7_2)
  end
  L5_2 = A1_2
  L6_2 = "ok"
  L5_2(L6_2)
end
L74_1(L75_1, L76_1)
L74_1 = RegisterNUICallback
L75_1 = "sceneVehDoor"
function L76_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2.entityId
  L2_2 = L47_1
  L2_2 = L2_2[L3_2]
  if L2_2 then
    L3_2 = L2_2.entityHandle
    if L3_2 then
      goto lbl_13
    end
  end
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
  do return end
  ::lbl_13::
  L3_2 = A0_2.open
  if L3_2 then
    L3_2 = SetVehicleDoorOpen
    L4_2 = L2_2.entityHandle
    L5_2 = A0_2.door
    L6_2 = false
    L7_2 = false
    L3_2(L4_2, L5_2, L6_2, L7_2)
  else
    L3_2 = SetVehicleDoorShut
    L4_2 = L2_2.entityHandle
    L5_2 = A0_2.door
    L6_2 = false
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
end
L74_1(L75_1, L76_1)
L74_1 = RegisterNUICallback
L75_1 = "sceneVehWindow"
function L76_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2.entityId
  L2_2 = L47_1
  L2_2 = L2_2[L3_2]
  if L2_2 then
    L3_2 = L2_2.entityHandle
    if L3_2 then
      goto lbl_13
    end
  end
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
  do return end
  ::lbl_13::
  L3_2 = SmashVehicleWindow
  L4_2 = L2_2.entityHandle
  L5_2 = A0_2.window
  L3_2(L4_2, L5_2)
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
end
L74_1(L75_1, L76_1)
L74_1 = RegisterNUICallback
L75_1 = "sceneVehIndicator"
function L76_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2.entityId
  L2_2 = L47_1
  L2_2 = L2_2[L3_2]
  if L2_2 then
    L3_2 = L2_2.entityHandle
    if L3_2 then
      goto lbl_13
    end
  end
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
  do return end
  ::lbl_13::
  L3_2 = SetVehicleIndicatorLights
  L4_2 = L2_2.entityHandle
  L5_2 = 1
  L6_2 = A0_2.left
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = SetVehicleIndicatorLights
  L4_2 = L2_2.entityHandle
  L5_2 = 0
  L6_2 = A0_2.right
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
end
L74_1(L75_1, L76_1)
L74_1 = RegisterNUICallback
L75_1 = "sceneVehColor"
function L76_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2.entityId
  L2_2 = L47_1
  L2_2 = L2_2[L3_2]
  if L2_2 then
    L3_2 = L2_2.entityHandle
    if L3_2 then
      goto lbl_13
    end
  end
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
  do return end
  ::lbl_13::
  L3_2 = SetVehicleCustomPrimaryColour
  L4_2 = L2_2.entityHandle
  L5_2 = A0_2.r1
  L6_2 = A0_2.g1
  L7_2 = A0_2.b1
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = SetVehicleCustomSecondaryColour
  L4_2 = L2_2.entityHandle
  L5_2 = A0_2.r2
  L6_2 = A0_2.g2
  L7_2 = A0_2.b2
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
end
L74_1(L75_1, L76_1)
L74_1 = RegisterNUICallback
L75_1 = "sceneVehDirt"
function L76_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2.entityId
  L2_2 = L47_1
  L2_2 = L2_2[L3_2]
  if L2_2 then
    L3_2 = L2_2.entityHandle
    if L3_2 then
      goto lbl_13
    end
  end
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
  do return end
  ::lbl_13::
  L3_2 = SetVehicleDirtLevel
  L4_2 = L2_2.entityHandle
  L5_2 = A0_2.level
  L5_2 = L5_2 + 0.0
  L3_2(L4_2, L5_2)
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
end
L74_1(L75_1, L76_1)
L74_1 = RegisterNUICallback
L75_1 = "sceneVehPlate"
function L76_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2.entityId
  L2_2 = L47_1
  L2_2 = L2_2[L3_2]
  if L2_2 then
    L3_2 = L2_2.entityHandle
    if L3_2 then
      goto lbl_13
    end
  end
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
  do return end
  ::lbl_13::
  L3_2 = SetVehicleNumberPlateText
  L4_2 = L2_2.entityHandle
  L5_2 = A0_2.text
  if not L5_2 then
    L5_2 = ""
  end
  L3_2(L4_2, L5_2)
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
end
L74_1(L75_1, L76_1)
L74_1 = RegisterNUICallback
L75_1 = "sceneVehNeon"
function L76_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2.entityId
  L2_2 = L47_1
  L2_2 = L2_2[L3_2]
  if L2_2 then
    L3_2 = L2_2.entityHandle
    if L3_2 then
      goto lbl_13
    end
  end
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
  do return end
  ::lbl_13::
  L3_2 = 0
  L4_2 = 3
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = SetVehicleNeonLightEnabled
    L8_2 = L2_2.entityHandle
    L9_2 = L6_2
    L10_2 = A0_2.on
    L7_2(L8_2, L9_2, L10_2)
  end
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
end
L74_1(L75_1, L76_1)
L74_1 = RegisterNUICallback
L75_1 = "sceneVehNeonColor"
function L76_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2.entityId
  L2_2 = L47_1
  L2_2 = L2_2[L3_2]
  if L2_2 then
    L3_2 = L2_2.entityHandle
    if L3_2 then
      goto lbl_13
    end
  end
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
  do return end
  ::lbl_13::
  L3_2 = SetVehicleNeonLightsColour
  L4_2 = L2_2.entityHandle
  L5_2 = A0_2.r
  L6_2 = A0_2.g
  L7_2 = A0_2.b
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
end
L74_1(L75_1, L76_1)
L74_1 = {}
L75_1 = {}
L75_1.neutral = 3
L75_1.friendly = 1
L75_1.hostile = 5
sceneCombatActive = false
function L76_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  sceneCombatActive = true
  L0_2 = {}
  L1_2 = pairs
  L2_2 = L47_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.type
    if "ped" == L7_2 then
      L7_2 = L6_2.entityHandle
      if L7_2 then
        L7_2 = DoesEntityExist
        L8_2 = L6_2.entityHandle
        L7_2 = L7_2(L8_2)
        if L7_2 then
          L7_2 = IsEntityDead
          L8_2 = L6_2.entityHandle
          L7_2 = L7_2(L8_2)
          if not L7_2 then
            L7_2 = L6_2.entityHandle
            L8_2 = FreezeEntityPosition
            L9_2 = L7_2
            L10_2 = false
            L8_2(L9_2, L10_2)
            L8_2 = SetBlockingOfNonTemporaryEvents
            L9_2 = L7_2
            L10_2 = false
            L8_2(L9_2, L10_2)
            L8_2 = SetPedFleeAttributes
            L9_2 = L7_2
            L10_2 = 0
            L11_2 = false
            L8_2(L9_2, L10_2, L11_2)
            L8_2 = SetPedCanRagdoll
            L9_2 = L7_2
            L10_2 = true
            L8_2(L9_2, L10_2)
            L8_2 = SetPedCombatAttributes
            L9_2 = L7_2
            L10_2 = 46
            L11_2 = true
            L8_2(L9_2, L10_2, L11_2)
            L8_2 = SetPedCombatAttributes
            L9_2 = L7_2
            L10_2 = 5
            L11_2 = true
            L8_2(L9_2, L10_2, L11_2)
            L8_2 = SetPedCombatAttributes
            L9_2 = L7_2
            L10_2 = 0
            L11_2 = true
            L8_2(L9_2, L10_2, L11_2)
            L8_2 = SetPedCombatAttributes
            L9_2 = L7_2
            L10_2 = 1
            L11_2 = true
            L8_2(L9_2, L10_2, L11_2)
            L8_2 = L6_2.group
            if L8_2 then
              L8_2 = L6_2.group
              if "" ~= L8_2 then
                L9_2 = L6_2.group
                L8_2 = L74_1
                L8_2 = L8_2[L9_2]
                if L8_2 then
                  L8_2 = SetPedRelationshipGroupHash
                  L9_2 = L7_2
                  L11_2 = L6_2.group
                  L10_2 = L74_1
                  L10_2 = L10_2[L11_2]
                  L8_2(L9_2, L10_2)
                end
              end
            end
            L8_2 = L6_2.weapon
            if L8_2 then
              L8_2 = GiveWeaponToPed
              L9_2 = L7_2
              L10_2 = L6_2.weapon
              L11_2 = 999
              L12_2 = false
              L13_2 = true
              L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
              L8_2 = SetCurrentPedWeapon
              L9_2 = L7_2
              L10_2 = L6_2.weapon
              L11_2 = true
              L8_2(L9_2, L10_2, L11_2)
            end
            L8_2 = ClearPedTasks
            L9_2 = L7_2
            L8_2(L9_2)
            L8_2 = table
            L8_2 = L8_2.insert
            L9_2 = L0_2
            L10_2 = L6_2
            L8_2(L9_2, L10_2)
          end
        end
      end
    end
  end
  L1_2 = Wait
  L2_2 = 0
  L1_2(L2_2)
  L1_2 = ipairs
  L2_2 = L0_2
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.entityHandle
    L8_2 = DoesEntityExist
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L8_2 = IsEntityDead
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      if not L8_2 then
        L8_2 = L6_2.group
        if L8_2 then
          L9_2 = L6_2.group
          L8_2 = L74_1
          L8_2 = L8_2[L9_2]
        end
        L9_2 = nil
        if L8_2 then
          L10_2 = GetRelationshipBetweenGroups
          L11_2 = L8_2
          L12_2 = L74_1.Director
          if not L12_2 then
            L12_2 = 1862763509
          end
          L10_2 = L10_2(L11_2, L12_2)
          if 5 == L10_2 then
            L10_2 = PlayerPedId
            L10_2 = L10_2()
            L9_2 = L10_2
          else
            L10_2 = pairs
            L11_2 = L47_1
            L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
            for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
              L16_2 = L15_2.id
              L17_2 = L6_2.id
              if L16_2 ~= L17_2 then
                L16_2 = L15_2.type
                if "ped" == L16_2 then
                  L16_2 = L15_2.group
                  if L16_2 then
                    L16_2 = L15_2.group
                    L17_2 = L6_2.group
                    if L16_2 ~= L17_2 then
                      L17_2 = L15_2.group
                      L16_2 = L74_1
                      L16_2 = L16_2[L17_2]
                      if L16_2 then
                        L16_2 = L15_2.entityHandle
                        if L16_2 then
                          L16_2 = DoesEntityExist
                          L17_2 = L15_2.entityHandle
                          L16_2 = L16_2(L17_2)
                          if L16_2 then
                            L16_2 = IsEntityDead
                            L17_2 = L15_2.entityHandle
                            L16_2 = L16_2(L17_2)
                            if not L16_2 then
                              L16_2 = GetRelationshipBetweenGroups
                              L17_2 = L8_2
                              L19_2 = L15_2.group
                              L18_2 = L74_1
                              L18_2 = L18_2[L19_2]
                              L16_2 = L16_2(L17_2, L18_2)
                              if 5 == L16_2 then
                                L9_2 = L15_2.entityHandle
                                break
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
        if L9_2 then
          L10_2 = TaskCombatPed
          L11_2 = L7_2
          L12_2 = L9_2
          L13_2 = 0
          L14_2 = 16
          L10_2(L11_2, L12_2, L13_2, L14_2)
          L10_2 = SetPedKeepTask
          L11_2 = L7_2
          L12_2 = true
          L10_2(L11_2, L12_2)
        end
      end
    end
  end
end
enforceSceneCombat = L76_1
function L76_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  sceneCombatActive = false
  L0_2 = pairs
  L1_2 = L47_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L5_2.type
    if "ped" == L6_2 then
      L6_2 = L5_2.entityHandle
      if L6_2 then
        L6_2 = DoesEntityExist
        L7_2 = L5_2.entityHandle
        L6_2 = L6_2(L7_2)
        if L6_2 then
          L6_2 = L5_2.entityHandle
          L7_2 = IsEntityDead
          L8_2 = L6_2
          L7_2 = L7_2(L8_2)
          if L7_2 then
            L7_2 = ResurrectPed
            L8_2 = L6_2
            L7_2(L8_2)
          end
          L7_2 = SetPedKeepTask
          L8_2 = L6_2
          L9_2 = false
          L7_2(L8_2, L9_2)
          L7_2 = SetPedRelationshipGroupHash
          L8_2 = L6_2
          L9_2 = 1862763509
          L7_2(L8_2, L9_2)
          L7_2 = ClearPedTasksImmediately
          L8_2 = L6_2
          L7_2(L8_2)
          L7_2 = SetBlockingOfNonTemporaryEvents
          L8_2 = L6_2
          L9_2 = true
          L7_2(L8_2, L9_2)
          L7_2 = L5_2.pos
          if L7_2 then
            L7_2 = SetEntityCoordsNoOffset
            L8_2 = L6_2
            L9_2 = L5_2.pos
            L9_2 = L9_2.x
            L10_2 = L5_2.pos
            L10_2 = L10_2.y
            L11_2 = L5_2.pos
            L11_2 = L11_2.z
            L12_2 = false
            L13_2 = false
            L14_2 = false
            L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
            L7_2 = SetEntityHeading
            L8_2 = L6_2
            L9_2 = L5_2.heading
            if not L9_2 then
              L9_2 = 0.0
            end
            L7_2(L8_2, L9_2)
          end
          L7_2 = FreezeEntityPosition
          L8_2 = L6_2
          L9_2 = true
          L7_2(L8_2, L9_2)
        end
      end
    end
  end
end
pauseSceneCombat = L76_1
function L76_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = A0_2.type
  if "ped" == L2_2 then
    L2_2 = A1_2
    L3_2 = A0_2.weapon
    if L3_2 then
      L3_2 = GiveWeaponToPed
      L4_2 = L2_2
      L5_2 = A0_2.weapon
      L6_2 = 999
      L7_2 = false
      L8_2 = true
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
      L3_2 = SetCurrentPedWeapon
      L4_2 = L2_2
      L5_2 = A0_2.weapon
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
    end
    L3_2 = A0_2.anim
    if L3_2 then
      L3_2 = A0_2.anim
      L3_2 = L3_2.dict
      if L3_2 then
        L3_2 = A0_2.anim
        L3_2 = L3_2.name
        if L3_2 then
          L3_2 = RequestAnimDict
          L4_2 = A0_2.anim
          L4_2 = L4_2.dict
          L3_2(L4_2)
          L3_2 = 0
          while true do
            L4_2 = HasAnimDictLoaded
            L5_2 = A0_2.anim
            L5_2 = L5_2.dict
            L4_2 = L4_2(L5_2)
            if not (not L4_2 and L3_2 < 50) then
              break
            end
            L4_2 = Wait
            L5_2 = 50
            L4_2(L5_2)
            L3_2 = L3_2 + 1
          end
          L4_2 = HasAnimDictLoaded
          L5_2 = A0_2.anim
          L5_2 = L5_2.dict
          L4_2 = L4_2(L5_2)
          if L4_2 then
            L4_2 = FreezeEntityPosition
            L5_2 = L2_2
            L6_2 = false
            L4_2(L5_2, L6_2)
            L4_2 = TaskPlayAnim
            L5_2 = L2_2
            L6_2 = A0_2.anim
            L6_2 = L6_2.dict
            L7_2 = A0_2.anim
            L7_2 = L7_2.name
            L8_2 = 8.0
            L9_2 = -8.0
            L10_2 = -1
            L11_2 = A0_2.anim
            L11_2 = L11_2.loop
            if L11_2 then
              L11_2 = 1
              if L11_2 then
                goto lbl_77
              end
            end
            L11_2 = 0
            ::lbl_77::
            L12_2 = 0
            L13_2 = false
            L14_2 = false
            L15_2 = false
            L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
          end
        end
      end
    end
    L3_2 = A0_2.combatAbility
    if L3_2 then
      L3_2 = SetPedCombatAbility
      L4_2 = L2_2
      L5_2 = A0_2.combatAbility
      L3_2(L4_2, L5_2)
    end
    L3_2 = A0_2.combatMovement
    if L3_2 then
      L3_2 = SetPedCombatMovement
      L4_2 = L2_2
      L5_2 = A0_2.combatMovement
      L3_2(L4_2, L5_2)
    end
    L3_2 = A0_2.combatRange
    if L3_2 then
      L3_2 = SetPedCombatRange
      L4_2 = L2_2
      L5_2 = A0_2.combatRange
      L3_2(L4_2, L5_2)
    end
    L3_2 = A0_2.accuracy
    if L3_2 then
      L3_2 = SetPedAccuracy
      L4_2 = L2_2
      L5_2 = A0_2.accuracy
      L3_2(L4_2, L5_2)
    end
    L3_2 = SetPedCombatAttributes
    L4_2 = L2_2
    L5_2 = 46
    L6_2 = true
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = SetPedCombatAttributes
    L4_2 = L2_2
    L5_2 = 5
    L6_2 = true
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = SetPedCombatAttributes
    L4_2 = L2_2
    L5_2 = 0
    L6_2 = true
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2.health
    if L3_2 then
      L3_2 = SetEntityMaxHealth
      L4_2 = L2_2
      L5_2 = A0_2.health
      L3_2(L4_2, L5_2)
      L3_2 = SetEntityHealth
      L4_2 = L2_2
      L5_2 = A0_2.health
      L3_2(L4_2, L5_2)
    end
    L3_2 = A0_2.armor
    if L3_2 then
      L3_2 = SetPedArmour
      L4_2 = L2_2
      L5_2 = A0_2.armor
      L3_2(L4_2, L5_2)
    end
    L3_2 = A0_2.invincible
    if false == L3_2 then
      L3_2 = SetEntityInvincible
      L4_2 = L2_2
      L5_2 = false
      L3_2(L4_2, L5_2)
    end
    L3_2 = A0_2.ragdoll
    if false == L3_2 then
      L3_2 = SetPedCanRagdoll
      L4_2 = L2_2
      L5_2 = false
      L3_2(L4_2, L5_2)
    end
  else
    L2_2 = A0_2.type
    if "vehicle" == L2_2 then
      L2_2 = A1_2
      L3_2 = A0_2.engine
      if L3_2 then
        L3_2 = SetVehicleEngineOn
        L4_2 = L2_2
        L5_2 = true
        L6_2 = true
        L7_2 = false
        L3_2(L4_2, L5_2, L6_2, L7_2)
      end
      L3_2 = A0_2.lightMode
      if L3_2 then
        L3_2 = A0_2.lightMode
        if 0 ~= L3_2 then
          L3_2 = A0_2.engine
          if not L3_2 then
            L3_2 = SetVehicleEngineOn
            L4_2 = L2_2
            L5_2 = true
            L6_2 = true
            L7_2 = false
            L3_2(L4_2, L5_2, L6_2, L7_2)
          end
        end
      end
      L3_2 = A0_2.lightMode
      if L3_2 then
        L3_2 = A0_2.lightMode
        if 0 == L3_2 then
          L3_2 = SetVehicleLights
          L4_2 = L2_2
          L5_2 = 1
          L3_2(L4_2, L5_2)
          L3_2 = SetVehicleFullbeam
          L4_2 = L2_2
          L5_2 = false
          L3_2(L4_2, L5_2)
          L3_2 = SetVehicleInteriorlight
          L4_2 = L2_2
          L5_2 = false
          L3_2(L4_2, L5_2)
        else
          L3_2 = A0_2.lightMode
          if 1 == L3_2 then
            L3_2 = SetVehicleLights
            L4_2 = L2_2
            L5_2 = 2
            L3_2(L4_2, L5_2)
            L3_2 = SetVehicleFullbeam
            L4_2 = L2_2
            L5_2 = false
            L3_2(L4_2, L5_2)
          else
            L3_2 = A0_2.lightMode
            if 2 == L3_2 then
              L3_2 = SetVehicleLights
              L4_2 = L2_2
              L5_2 = 2
              L3_2(L4_2, L5_2)
              L3_2 = SetVehicleFullbeam
              L4_2 = L2_2
              L5_2 = true
              L3_2(L4_2, L5_2)
            else
              L3_2 = A0_2.lightMode
              if 3 == L3_2 then
                L3_2 = SetVehicleLights
                L4_2 = L2_2
                L5_2 = 1
                L3_2(L4_2, L5_2)
                L3_2 = SetVehicleInteriorlight
                L4_2 = L2_2
                L5_2 = true
                L3_2(L4_2, L5_2)
              end
            end
          end
        end
      end
      L3_2 = A0_2.siren
      if L3_2 then
        L3_2 = SetVehicleSiren
        L4_2 = L2_2
        L5_2 = true
        L3_2(L4_2, L5_2)
      end
      L3_2 = A0_2.doors
      if L3_2 then
        L3_2 = ipairs
        L4_2 = A0_2.doors
        L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
        for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
          if L8_2 then
            L9_2 = SetVehicleDoorOpen
            L10_2 = L2_2
            L11_2 = L7_2 - 1
            L12_2 = false
            L13_2 = false
            L9_2(L10_2, L11_2, L12_2, L13_2)
          end
        end
      end
      L3_2 = A0_2.windows
      if L3_2 then
        L3_2 = ipairs
        L4_2 = A0_2.windows
        L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
        for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
          if L8_2 then
            L9_2 = SmashVehicleWindow
            L10_2 = L2_2
            L11_2 = L7_2 - 1
            L9_2(L10_2, L11_2)
          end
        end
      end
      L3_2 = A0_2.indicators
      if L3_2 then
        L3_2 = A0_2.indicators
        L3_2 = L3_2.left
        if L3_2 then
          L3_2 = SetVehicleIndicatorLights
          L4_2 = L2_2
          L5_2 = 1
          L6_2 = true
          L3_2(L4_2, L5_2, L6_2)
        end
        L3_2 = A0_2.indicators
        L3_2 = L3_2.right
        if L3_2 then
          L3_2 = SetVehicleIndicatorLights
          L4_2 = L2_2
          L5_2 = 0
          L6_2 = true
          L3_2(L4_2, L5_2, L6_2)
        end
      end
      L3_2 = A0_2.color1
      if L3_2 then
        L3_2 = tonumber
        L4_2 = A0_2.color1
        L5_2 = L4_2
        L4_2 = L4_2.sub
        L6_2 = 2
        L7_2 = 3
        L4_2 = L4_2(L5_2, L6_2, L7_2)
        L5_2 = 16
        L3_2 = L3_2(L4_2, L5_2)
        if not L3_2 then
          L3_2 = 0
        end
        L4_2 = tonumber
        L5_2 = A0_2.color1
        L6_2 = L5_2
        L5_2 = L5_2.sub
        L7_2 = 4
        L8_2 = 5
        L5_2 = L5_2(L6_2, L7_2, L8_2)
        L6_2 = 16
        L4_2 = L4_2(L5_2, L6_2)
        if not L4_2 then
          L4_2 = 0
        end
        L5_2 = tonumber
        L6_2 = A0_2.color1
        L7_2 = L6_2
        L6_2 = L6_2.sub
        L8_2 = 6
        L9_2 = 7
        L6_2 = L6_2(L7_2, L8_2, L9_2)
        L7_2 = 16
        L5_2 = L5_2(L6_2, L7_2)
        if not L5_2 then
          L5_2 = 0
        end
        L6_2 = SetVehicleCustomPrimaryColour
        L7_2 = L2_2
        L8_2 = L3_2
        L9_2 = L4_2
        L10_2 = L5_2
        L6_2(L7_2, L8_2, L9_2, L10_2)
      end
      L3_2 = A0_2.color2
      if L3_2 then
        L3_2 = tonumber
        L4_2 = A0_2.color2
        L5_2 = L4_2
        L4_2 = L4_2.sub
        L6_2 = 2
        L7_2 = 3
        L4_2 = L4_2(L5_2, L6_2, L7_2)
        L5_2 = 16
        L3_2 = L3_2(L4_2, L5_2)
        if not L3_2 then
          L3_2 = 0
        end
        L4_2 = tonumber
        L5_2 = A0_2.color2
        L6_2 = L5_2
        L5_2 = L5_2.sub
        L7_2 = 4
        L8_2 = 5
        L5_2 = L5_2(L6_2, L7_2, L8_2)
        L6_2 = 16
        L4_2 = L4_2(L5_2, L6_2)
        if not L4_2 then
          L4_2 = 0
        end
        L5_2 = tonumber
        L6_2 = A0_2.color2
        L7_2 = L6_2
        L6_2 = L6_2.sub
        L8_2 = 6
        L9_2 = 7
        L6_2 = L6_2(L7_2, L8_2, L9_2)
        L7_2 = 16
        L5_2 = L5_2(L6_2, L7_2)
        if not L5_2 then
          L5_2 = 0
        end
        L6_2 = SetVehicleCustomSecondaryColour
        L7_2 = L2_2
        L8_2 = L3_2
        L9_2 = L4_2
        L10_2 = L5_2
        L6_2(L7_2, L8_2, L9_2, L10_2)
      end
      L3_2 = A0_2.dirtLevel
      if L3_2 then
        L3_2 = SetVehicleDirtLevel
        L4_2 = L2_2
        L5_2 = A0_2.dirtLevel
        L5_2 = L5_2 + 0.0
        L3_2(L4_2, L5_2)
      end
      L3_2 = A0_2.plateText
      if L3_2 then
        L3_2 = A0_2.plateText
        if "" ~= L3_2 then
          L3_2 = SetVehicleNumberPlateText
          L4_2 = L2_2
          L5_2 = A0_2.plateText
          L3_2(L4_2, L5_2)
        end
      end
      L3_2 = A0_2.neon
      if L3_2 then
        L3_2 = 0
        L4_2 = 3
        L5_2 = 1
        for L6_2 = L3_2, L4_2, L5_2 do
          L7_2 = SetVehicleNeonLightEnabled
          L8_2 = L2_2
          L9_2 = L6_2
          L10_2 = true
          L7_2(L8_2, L9_2, L10_2)
        end
        L3_2 = A0_2.neonColor
        if L3_2 then
          L3_2 = tonumber
          L4_2 = A0_2.neonColor
          L5_2 = L4_2
          L4_2 = L4_2.sub
          L6_2 = 2
          L7_2 = 3
          L4_2 = L4_2(L5_2, L6_2, L7_2)
          L5_2 = 16
          L3_2 = L3_2(L4_2, L5_2)
          if not L3_2 then
            L3_2 = 0
          end
          L4_2 = tonumber
          L5_2 = A0_2.neonColor
          L6_2 = L5_2
          L5_2 = L5_2.sub
          L7_2 = 4
          L8_2 = 5
          L5_2 = L5_2(L6_2, L7_2, L8_2)
          L6_2 = 16
          L4_2 = L4_2(L5_2, L6_2)
          if not L4_2 then
            L4_2 = 0
          end
          L5_2 = tonumber
          L6_2 = A0_2.neonColor
          L7_2 = L6_2
          L6_2 = L6_2.sub
          L8_2 = 6
          L9_2 = 7
          L6_2 = L6_2(L7_2, L8_2, L9_2)
          L7_2 = 16
          L5_2 = L5_2(L6_2, L7_2)
          if not L5_2 then
            L5_2 = 0
          end
          L6_2 = SetVehicleNeonLightsColour
          L7_2 = L2_2
          L8_2 = L3_2
          L9_2 = L4_2
          L10_2 = L5_2
          L6_2(L7_2, L8_2, L9_2, L10_2)
        end
      end
    else
      L2_2 = A0_2.type
      if "prop" == L2_2 then
        L2_2 = A0_2.frozen
        if false == L2_2 then
          L2_2 = FreezeEntityPosition
          L3_2 = A1_2
          L4_2 = false
          L2_2(L3_2, L4_2)
        end
        L2_2 = A0_2.visible
        if false == L2_2 then
          L2_2 = SetEntityVisible
          L3_2 = A1_2
          L4_2 = false
          L5_2 = false
          L2_2(L3_2, L4_2, L5_2)
        end
        L2_2 = A0_2.onFire
        if L2_2 then
          L2_2 = StartEntityFire
          L3_2 = A1_2
          L2_2(L3_2)
        end
      end
    end
  end
end
applySceneEntitySettings = L76_1
L76_1 = RegisterNUICallback
L77_1 = "sceneSetRelGroups"
function L78_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L2_2 = A0_2.groups
  if not L2_2 then
    L2_2 = {}
  end
  L3_2 = A0_2.matrix
  if not L3_2 then
    L3_2 = {}
  end
  L74_1.Director = 1862763509
  L4_2 = ipairs
  L5_2 = L2_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L9_2.name
    if "Director" ~= L10_2 then
      L11_2 = L9_2.name
      L10_2 = L74_1
      L10_2 = L10_2[L11_2]
      if not L10_2 then
        L10_2 = "SCENE_"
        L11_2 = L9_2.name
        L12_2 = L11_2
        L11_2 = L11_2.upper
        L11_2 = L11_2(L12_2)
        L12_2 = L11_2
        L11_2 = L11_2.gsub
        L13_2 = "%s+"
        L14_2 = "_"
        L11_2 = L11_2(L12_2, L13_2, L14_2)
        L10_2 = L10_2 .. L11_2
        L11_2 = AddRelationshipGroup
        L12_2 = L10_2
        L11_2, L12_2 = L11_2(L12_2)
        L14_2 = L9_2.name
        L13_2 = L74_1
        L13_2[L14_2] = L12_2
      end
    end
  end
  L4_2 = ipairs
  L5_2 = L2_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = ipairs
    L11_2 = L2_2
    L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
    for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
      L16_2 = L9_2.name
      L17_2 = L15_2.name
      if L16_2 ~= L17_2 then
        L17_2 = L9_2.name
        L16_2 = L74_1
        L16_2 = L16_2[L17_2]
        if L16_2 then
          L17_2 = L15_2.name
          L16_2 = L74_1
          L16_2 = L16_2[L17_2]
          if L16_2 then
            L16_2 = SetRelationshipBetweenGroups
            L17_2 = 3
            L19_2 = L9_2.name
            L18_2 = L74_1
            L18_2 = L18_2[L19_2]
            L20_2 = L15_2.name
            L19_2 = L74_1
            L19_2 = L19_2[L20_2]
            L16_2(L17_2, L18_2, L19_2)
          end
        end
      end
    end
  end
  L4_2 = pairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L11_2 = L8_2
    L10_2 = L8_2.match
    L12_2 = "^(.+)%->(.+)$"
    L10_2, L11_2 = L10_2(L11_2, L12_2)
    if L10_2 and L11_2 then
      L12_2 = L74_1
      L12_2 = L12_2[L10_2]
      if L12_2 then
        L12_2 = L74_1
        L12_2 = L12_2[L11_2]
        if L12_2 then
          L12_2 = L75_1
          L12_2 = L12_2[L9_2]
          if not L12_2 then
            L12_2 = 3
          end
          L13_2 = SetRelationshipBetweenGroups
          L14_2 = L12_2
          L15_2 = L74_1
          L15_2 = L15_2[L10_2]
          L16_2 = L74_1
          L16_2 = L16_2[L11_2]
          L13_2(L14_2, L15_2, L16_2)
        end
      end
    end
  end
  L4_2 = sceneCombatActive
  if L4_2 then
    L4_2 = enforceSceneCombat
    L4_2()
  end
  L4_2 = A1_2
  L5_2 = "ok"
  L4_2(L5_2)
end
L76_1(L77_1, L78_1)
L76_1 = RegisterNUICallback
L77_1 = "sceneToggleCombat"
function L78_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = sceneCombatActive
  if L2_2 then
    L2_2 = pauseSceneCombat
    L2_2()
  else
    L2_2 = enforceSceneCombat
    L2_2()
  end
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.type = "sceneCombatState"
  L4_2 = sceneCombatActive
  L3_2.active = L4_2
  L2_2(L3_2)
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L76_1(L77_1, L78_1)
L76_1 = RegisterNUICallback
L77_1 = "sceneResetPositions"
function L78_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    L0_3 = pauseSceneCombat
    L0_3()
    L0_3 = pairs
    L1_3 = L47_1
    L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
    for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
      L6_3 = L5_3.entityHandle
      if L6_3 then
        L7_3 = DoesEntityExist
        L8_3 = L6_3
        L7_3 = L7_3(L8_3)
        if L7_3 then
          L7_3 = L5_3.pos
          if L7_3 then
            L7_3 = L5_3.type
            if "ped" == L7_3 then
              L7_3 = IsEntityDead
              L8_3 = L6_3
              L7_3 = L7_3(L8_3)
              if L7_3 then
                L7_3 = ResurrectPed
                L8_3 = L6_3
                L7_3(L8_3)
              end
              L7_3 = ClearPedTasksImmediately
              L8_3 = L6_3
              L7_3(L8_3)
              L7_3 = FreezeEntityPosition
              L8_3 = L6_3
              L9_3 = true
              L7_3(L8_3, L9_3)
            else
              L7_3 = L5_3.type
              if "vehicle" == L7_3 then
                L7_3 = SetVehicleEngineOn
                L8_3 = L6_3
                L9_3 = false
                L10_3 = true
                L11_3 = true
                L7_3(L8_3, L9_3, L10_3, L11_3)
                L7_3 = SetVehicleFullbeam
                L8_3 = L6_3
                L9_3 = false
                L7_3(L8_3, L9_3)
                L7_3 = SetVehicleLights
                L8_3 = L6_3
                L9_3 = 1
                L7_3(L8_3, L9_3)
                L7_3 = SetVehicleInteriorlight
                L8_3 = L6_3
                L9_3 = false
                L7_3(L8_3, L9_3)
                L7_3 = SetVehicleSiren
                L8_3 = L6_3
                L9_3 = false
                L7_3(L8_3, L9_3)
                L7_3 = 0
                L8_3 = 3
                L9_3 = 1
                for L10_3 = L7_3, L8_3, L9_3 do
                  L11_3 = SetVehicleNeonLightEnabled
                  L12_3 = L6_3
                  L13_3 = L10_3
                  L14_3 = false
                  L11_3(L12_3, L13_3, L14_3)
                end
                L7_3 = SetVehicleIndicatorLights
                L8_3 = L6_3
                L9_3 = 0
                L10_3 = false
                L7_3(L8_3, L9_3, L10_3)
                L7_3 = SetVehicleIndicatorLights
                L8_3 = L6_3
                L9_3 = 1
                L10_3 = false
                L7_3(L8_3, L9_3, L10_3)
                L7_3 = FreezeEntityPosition
                L8_3 = L6_3
                L9_3 = true
                L7_3(L8_3, L9_3)
              end
            end
            L7_3 = SetEntityCoordsNoOffset
            L8_3 = L6_3
            L9_3 = L5_3.pos
            L9_3 = L9_3.x
            L10_3 = L5_3.pos
            L10_3 = L10_3.y
            L11_3 = L5_3.pos
            L11_3 = L11_3.z
            L12_3 = false
            L13_3 = false
            L14_3 = false
            L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
            L7_3 = SetEntityHeading
            L8_3 = L6_3
            L9_3 = L5_3.heading
            if not L9_3 then
              L9_3 = 0.0
            end
            L7_3(L8_3, L9_3)
            L7_3 = applySceneEntitySettings
            L8_3 = L5_3
            L9_3 = L6_3
            L7_3(L8_3, L9_3)
          end
        end
      end
    end
    L0_3 = SendNUIMessage
    L1_3 = {}
    L1_3.type = "sceneCombatState"
    L1_3.active = false
    L0_3(L1_3)
  end
  L2_2(L3_2)
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L76_1(L77_1, L78_1)
L76_1 = RegisterNUICallback
L77_1 = "scenePedCombat"
function L78_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L3_2 = A0_2.entityId
  L2_2 = L47_1
  L2_2 = L2_2[L3_2]
  if L2_2 then
    L3_2 = L2_2.entityHandle
    if L3_2 then
      L3_2 = DoesEntityExist
      L4_2 = L2_2.entityHandle
      L3_2 = L3_2(L4_2)
      if L3_2 then
        goto lbl_18
      end
    end
  end
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
  do return end
  ::lbl_18::
  L3_2 = L2_2.entityHandle
  L4_2 = SetPedCombatAbility
  L5_2 = L3_2
  L6_2 = A0_2.ability
  if not L6_2 then
    L6_2 = 1
  end
  L4_2(L5_2, L6_2)
  L4_2 = SetPedCombatMovement
  L5_2 = L3_2
  L6_2 = A0_2.movement
  if not L6_2 then
    L6_2 = 2
  end
  L4_2(L5_2, L6_2)
  L4_2 = SetPedCombatRange
  L5_2 = L3_2
  L6_2 = A0_2.range
  if not L6_2 then
    L6_2 = 1
  end
  L4_2(L5_2, L6_2)
  L4_2 = SetPedAccuracy
  L5_2 = L3_2
  L6_2 = A0_2.accuracy
  if not L6_2 then
    L6_2 = 50
  end
  L4_2(L5_2, L6_2)
  L4_2 = SetPedCombatAttributes
  L5_2 = L3_2
  L6_2 = 46
  L7_2 = true
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = SetPedCombatAttributes
  L5_2 = L3_2
  L6_2 = 5
  L7_2 = true
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = SetPedCombatAttributes
  L5_2 = L3_2
  L6_2 = 0
  L7_2 = true
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2.group
  if not L4_2 then
    L4_2 = ""
  end
  L2_2.group = L4_2
  if "" ~= L4_2 then
    L5_2 = L74_1
    L5_2 = L5_2[L4_2]
    if L5_2 then
      L5_2 = L74_1
      L5_2 = L5_2[L4_2]
      L6_2 = SetPedRelationshipGroupHash
      L7_2 = L3_2
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
      L6_2 = FreezeEntityPosition
      L7_2 = L3_2
      L8_2 = false
      L6_2(L7_2, L8_2)
      L6_2 = SetBlockingOfNonTemporaryEvents
      L7_2 = L3_2
      L8_2 = false
      L6_2(L7_2, L8_2)
      L6_2 = SetPedKeepTask
      L7_2 = L3_2
      L8_2 = true
      L6_2(L7_2, L8_2)
      L6_2 = SetPedCanRagdoll
      L7_2 = L3_2
      L8_2 = true
      L6_2(L7_2, L8_2)
      L6_2 = GetSelectedPedWeapon
      L7_2 = L3_2
      L6_2 = L6_2(L7_2)
      L7_2 = GetHashKey
      L8_2 = "WEAPON_UNARMED"
      L7_2 = L7_2(L8_2)
      if L6_2 == L7_2 then
      end
      L6_2 = false
      L7_2 = L74_1.Director
      if not L7_2 then
        L7_2 = GetHashKey
        L8_2 = "PLAYER"
        L7_2 = L7_2(L8_2)
      end
      L8_2 = GetRelationshipBetweenGroups
      L9_2 = L5_2
      L10_2 = L7_2
      L8_2 = L8_2(L9_2, L10_2)
      if 5 == L8_2 then
        L8_2 = ClearPedTasks
        L9_2 = L3_2
        L8_2(L9_2)
        L8_2 = Wait
        L9_2 = 0
        L8_2(L9_2)
        L8_2 = TaskCombatPed
        L9_2 = L3_2
        L10_2 = PlayerPedId
        L10_2 = L10_2()
        L11_2 = 0
        L12_2 = 16
        L8_2(L9_2, L10_2, L11_2, L12_2)
        L6_2 = true
      end
      if not L6_2 then
        L8_2 = pairs
        L9_2 = L47_1
        L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
        for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
          L14_2 = L13_2.id
          L15_2 = L2_2.id
          if L14_2 ~= L15_2 then
            L14_2 = L13_2.type
            if "ped" == L14_2 then
              L14_2 = L13_2.group
              if L14_2 then
                L14_2 = L13_2.group
                if L14_2 ~= L4_2 then
                  L15_2 = L13_2.group
                  L14_2 = L74_1
                  L14_2 = L14_2[L15_2]
                  if L14_2 then
                    L14_2 = L13_2.entityHandle
                    if L14_2 then
                      L14_2 = DoesEntityExist
                      L15_2 = L13_2.entityHandle
                      L14_2 = L14_2(L15_2)
                      if L14_2 then
                        L15_2 = L13_2.group
                        L14_2 = L74_1
                        L14_2 = L14_2[L15_2]
                        L15_2 = GetRelationshipBetweenGroups
                        L16_2 = L5_2
                        L17_2 = L14_2
                        L15_2 = L15_2(L16_2, L17_2)
                        if 5 == L15_2 then
                          L15_2 = ClearPedTasks
                          L16_2 = L3_2
                          L15_2(L16_2)
                          L15_2 = Wait
                          L16_2 = 0
                          L15_2(L16_2)
                          L15_2 = TaskCombatPed
                          L16_2 = L3_2
                          L17_2 = L13_2.entityHandle
                          L18_2 = 0
                          L19_2 = 16
                          L15_2(L16_2, L17_2, L18_2, L19_2)
                          L15_2 = ClearPedTasks
                          L16_2 = L13_2.entityHandle
                          L15_2(L16_2)
                          L15_2 = TaskCombatPed
                          L16_2 = L13_2.entityHandle
                          L17_2 = L3_2
                          L18_2 = 0
                          L19_2 = 16
                          L15_2(L16_2, L17_2, L18_2, L19_2)
                          L6_2 = true
                          break
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  L5_2 = A1_2
  L6_2 = "ok"
  L5_2(L6_2)
end
L76_1(L77_1, L78_1)
L76_1 = RegisterNUICallback
L77_1 = "scenePedHealth"
function L78_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = A0_2.entityId
  L2_2 = L47_1
  L2_2 = L2_2[L3_2]
  if L2_2 then
    L3_2 = L2_2.entityHandle
    if L3_2 then
      L3_2 = DoesEntityExist
      L4_2 = L2_2.entityHandle
      L3_2 = L3_2(L4_2)
      if L3_2 then
        goto lbl_18
      end
    end
  end
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
  do return end
  ::lbl_18::
  L3_2 = L2_2.entityHandle
  L4_2 = IsEntityDead
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = ResurrectPed
    L5_2 = L3_2
    L4_2(L5_2)
    L4_2 = ClearPedTasksImmediately
    L5_2 = L3_2
    L4_2(L5_2)
    L4_2 = GetEntityCoords
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    L5_2 = SetEntityCoords
    L6_2 = L3_2
    L7_2 = L4_2.x
    L8_2 = L4_2.y
    L9_2 = L4_2.z
    L10_2 = false
    L11_2 = false
    L12_2 = false
    L13_2 = false
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  end
  L4_2 = SetEntityMaxHealth
  L5_2 = L3_2
  L6_2 = A0_2.health
  if not L6_2 then
    L6_2 = 200
  end
  L4_2(L5_2, L6_2)
  L4_2 = SetEntityHealth
  L5_2 = L3_2
  L6_2 = A0_2.health
  if not L6_2 then
    L6_2 = 200
  end
  L4_2(L5_2, L6_2)
  L4_2 = SetPedArmour
  L5_2 = L3_2
  L6_2 = A0_2.armor
  if not L6_2 then
    L6_2 = 0
  end
  L4_2(L5_2, L6_2)
  L4_2 = SetEntityInvincible
  L5_2 = L3_2
  L6_2 = A0_2.invincible
  L4_2(L5_2, L6_2)
  L4_2 = SetPedCanRagdoll
  L5_2 = L3_2
  L6_2 = A0_2.canRagdoll
  L4_2(L5_2, L6_2)
  L4_2 = SetPedCanRagdollFromPlayerImpact
  L5_2 = L3_2
  L6_2 = A0_2.canRagdoll
  L4_2(L5_2, L6_2)
  L4_2 = A0_2.flee
  if L4_2 then
    L4_2 = SetPedFleeAttributes
    L5_2 = L3_2
    L6_2 = 0
    L7_2 = false
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = SetBlockingOfNonTemporaryEvents
    L5_2 = L3_2
    L6_2 = false
    L4_2(L5_2, L6_2)
  else
    L4_2 = SetPedFleeAttributes
    L5_2 = L3_2
    L6_2 = 0
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
  end
  L4_2 = A1_2
  L5_2 = "ok"
  L4_2(L5_2)
end
L76_1(L77_1, L78_1)
L76_1 = RegisterNUICallback
L77_1 = "scenePedScenario"
function L78_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2.entityId
  L2_2 = L47_1
  L2_2 = L2_2[L3_2]
  if L2_2 then
    L3_2 = L2_2.entityHandle
    if L3_2 then
      L3_2 = DoesEntityExist
      L4_2 = L2_2.entityHandle
      L3_2 = L3_2(L4_2)
      if L3_2 then
        goto lbl_18
      end
    end
  end
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
  do return end
  ::lbl_18::
  L3_2 = ClearPedTasks
  L4_2 = L2_2.entityHandle
  L3_2(L4_2)
  L3_2 = FreezeEntityPosition
  L4_2 = L2_2.entityHandle
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = TaskStartScenarioInPlace
  L4_2 = L2_2.entityHandle
  L5_2 = A0_2.scenario
  L6_2 = 0
  L7_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
end
L76_1(L77_1, L78_1)
L76_1 = RegisterNUICallback
L77_1 = "scenePedStopScenario"
function L78_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2.entityId
  L2_2 = L47_1
  L2_2 = L2_2[L3_2]
  if L2_2 then
    L3_2 = L2_2.entityHandle
    if L3_2 then
      L3_2 = DoesEntityExist
      L4_2 = L2_2.entityHandle
      L3_2 = L3_2(L4_2)
      if L3_2 then
        goto lbl_18
      end
    end
  end
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
  do return end
  ::lbl_18::
  L3_2 = ClearPedTasks
  L4_2 = L2_2.entityHandle
  L3_2(L4_2)
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
end
L76_1(L77_1, L78_1)
L76_1 = RegisterNUICallback
L77_1 = "sceneRestoreAll"
function L78_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
  L2_2 = A0_2.entities
  if not L2_2 then
    L2_2 = {}
  end
  L3_2 = A0_2.relGroups
  if not L3_2 then
    L3_2 = {}
  end
  L4_2 = A0_2.relMatrix
  if not L4_2 then
    L4_2 = {}
  end
  L5_2 = CreateThread
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3
    L0_3 = ipairs
    L1_3 = L2_2
    L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
    for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
      L6_3 = GetHashKey
      L7_3 = L5_3.model
      L6_3 = L6_3(L7_3)
      L7_3 = RequestModel
      L8_3 = L6_3
      L7_3(L8_3)
      L7_3 = 0
      while true do
        L8_3 = HasModelLoaded
        L9_3 = L6_3
        L8_3 = L8_3(L9_3)
        if not (not L8_3 and L7_3 < 100) then
          break
        end
        L8_3 = Wait
        L9_3 = 50
        L8_3(L9_3)
        L7_3 = L7_3 + 1
      end
      L8_3 = HasModelLoaded
      L9_3 = L6_3
      L8_3 = L8_3(L9_3)
      if not L8_3 then
      else
        L8_3 = nil
        L9_3 = L5_3.pos
        if not L9_3 then
          L9_3 = {}
          L9_3.x = 0
          L9_3.y = 0
          L9_3.z = 0
        end
        L10_3 = L5_3.heading
        if not L10_3 then
          L10_3 = 0.0
        end
        L11_3 = L5_3.type
        if "ped" == L11_3 then
          L11_3 = CreatePed
          L12_3 = 4
          L13_3 = L6_3
          L14_3 = L9_3.x
          L15_3 = L9_3.y
          L16_3 = L9_3.z
          L17_3 = L10_3
          L18_3 = false
          L19_3 = false
          L11_3 = L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
          L8_3 = L11_3
          L11_3 = SetEntityInvincible
          L12_3 = L8_3
          L13_3 = true
          L11_3(L12_3, L13_3)
          L11_3 = SetBlockingOfNonTemporaryEvents
          L12_3 = L8_3
          L13_3 = true
          L11_3(L12_3, L13_3)
          L11_3 = FreezeEntityPosition
          L12_3 = L8_3
          L13_3 = true
          L11_3(L12_3, L13_3)
          L11_3 = SetEntityCoordsNoOffset
          L12_3 = L8_3
          L13_3 = L9_3.x
          L14_3 = L9_3.y
          L15_3 = L9_3.z
          L16_3 = false
          L17_3 = false
          L18_3 = false
          L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
        else
          L11_3 = L5_3.type
          if "vehicle" == L11_3 then
            L11_3 = CreateVehicle
            L12_3 = L6_3
            L13_3 = L9_3.x
            L14_3 = L9_3.y
            L15_3 = L9_3.z
            L16_3 = L10_3
            L17_3 = false
            L18_3 = false
            L11_3 = L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
            L8_3 = L11_3
            L11_3 = SetEntityInvincible
            L12_3 = L8_3
            L13_3 = true
            L11_3(L12_3, L13_3)
            L11_3 = FreezeEntityPosition
            L12_3 = L8_3
            L13_3 = true
            L11_3(L12_3, L13_3)
            L11_3 = SetEntityCoordsNoOffset
            L12_3 = L8_3
            L13_3 = L9_3.x
            L14_3 = L9_3.y
            L15_3 = L9_3.z
            L16_3 = false
            L17_3 = false
            L18_3 = false
            L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
          else
            L11_3 = L5_3.type
            if "prop" == L11_3 then
              L11_3 = CreateObject
              L12_3 = L6_3
              L13_3 = L9_3.x
              L14_3 = L9_3.y
              L15_3 = L9_3.z
              L16_3 = false
              L17_3 = false
              L18_3 = false
              L11_3 = L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
              L8_3 = L11_3
              L11_3 = FreezeEntityPosition
              L12_3 = L8_3
              L13_3 = true
              L11_3(L12_3, L13_3)
              L11_3 = SetEntityInvincible
              L12_3 = L8_3
              L13_3 = true
              L11_3(L12_3, L13_3)
              L11_3 = PlaceObjectOnGroundProperly
              L12_3 = L8_3
              L11_3(L12_3)
            end
          end
        end
        L11_3 = SetModelAsNoLongerNeeded
        L12_3 = L6_3
        L11_3(L12_3)
        if not L8_3 then
        else
          L12_3 = L5_3.id
          L11_3 = L47_1
          L13_3 = {}
          L14_3 = L5_3.id
          L13_3.id = L14_3
          L14_3 = L5_3.type
          L13_3.type = L14_3
          L14_3 = L5_3.model
          L13_3.model = L14_3
          L13_3.entityHandle = L8_3
          L13_3.pos = L9_3
          L13_3.heading = L10_3
          L14_3 = L5_3.group
          L13_3.group = L14_3
          L11_3[L12_3] = L13_3
          L11_3 = applySceneEntitySettings
          L12_3 = L5_3
          L13_3 = L8_3
          L11_3(L12_3, L13_3)
        end
      end
    end
    L74_1.Director = 1862763509
    L0_3 = ipairs
    L1_3 = L3_2
    L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
    for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
      L6_3 = L5_3.name
      if "Director" ~= L6_3 then
        L7_3 = L5_3.name
        L6_3 = L74_1
        L6_3 = L6_3[L7_3]
        if not L6_3 then
          L6_3 = AddRelationshipGroup
          L7_3 = "SCENE_"
          L8_3 = L5_3.name
          L9_3 = L8_3
          L8_3 = L8_3.upper
          L8_3 = L8_3(L9_3)
          L9_3 = L8_3
          L8_3 = L8_3.gsub
          L10_3 = "%s+"
          L11_3 = "_"
          L8_3 = L8_3(L9_3, L10_3, L11_3)
          L7_3 = L7_3 .. L8_3
          L6_3, L7_3 = L6_3(L7_3)
          L9_3 = L5_3.name
          L8_3 = L74_1
          L8_3[L9_3] = L7_3
        end
      end
    end
    L0_3 = pairs
    L1_3 = L4_2
    L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
    for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
      L7_3 = L4_3
      L6_3 = L4_3.match
      L8_3 = "^(.+)%->(.+)$"
      L6_3, L7_3 = L6_3(L7_3, L8_3)
      if L6_3 and L7_3 then
        L8_3 = L74_1
        L8_3 = L8_3[L6_3]
        if L8_3 then
          L8_3 = L74_1
          L8_3 = L8_3[L7_3]
          if L8_3 then
            L8_3 = SetRelationshipBetweenGroups
            L9_3 = L75_1
            L9_3 = L9_3[L5_3]
            if not L9_3 then
              L9_3 = 3
            end
            L10_3 = L74_1
            L10_3 = L10_3[L6_3]
            L11_3 = L74_1
            L11_3 = L11_3[L7_3]
            L8_3(L9_3, L10_3, L11_3)
          end
        end
      end
    end
    L0_3 = pauseSceneCombat
    L0_3()
    L0_3 = SendNUIMessage
    L1_3 = {}
    L1_3.type = "sceneCombatState"
    L1_3.active = false
    L0_3(L1_3)
  end
  L5_2(L6_2)
end
L76_1(L77_1, L78_1)
L76_1 = nil
L77_1 = RegisterNUICallback
L78_1 = "focusEntity"
function L79_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L3_2 = A0_2.entityId
  L2_2 = L47_1
  L2_2 = L2_2[L3_2]
  if L2_2 then
    L3_2 = L2_2.entityHandle
    if L3_2 then
      L3_2 = DoesEntityExist
      L4_2 = L2_2.entityHandle
      L3_2 = L3_2(L4_2)
      if L3_2 then
        goto lbl_18
      end
    end
  end
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
  do return end
  ::lbl_18::
  L3_2 = GetEntityCoords
  L4_2 = L2_2.entityHandle
  L3_2 = L3_2(L4_2)
  L4_2 = GetEntityHeading
  L5_2 = L2_2.entityHandle
  L4_2 = L4_2(L5_2)
  L5_2 = math
  L5_2 = L5_2.rad
  L6_2 = L4_2 + 180.0
  L5_2 = L5_2(L6_2)
  L6_2 = A0_2.dist
  if not L6_2 then
    L6_2 = 3.0
  end
  L7_2 = A0_2.zOff
  if not L7_2 then
    L7_2 = 0.8
  end
  L8_2 = L3_2.x
  L9_2 = math
  L9_2 = L9_2.sin
  L10_2 = L5_2
  L9_2 = L9_2(L10_2)
  L9_2 = L9_2 * L6_2
  L8_2 = L8_2 + L9_2
  L9_2 = L3_2.y
  L10_2 = math
  L10_2 = L10_2.cos
  L11_2 = L5_2
  L10_2 = L10_2(L11_2)
  L10_2 = L10_2 * L6_2
  L9_2 = L9_2 - L10_2
  L10_2 = L3_2.z
  L10_2 = L10_2 + L7_2
  L11_2 = L76_1
  if L11_2 then
    L11_2 = DoesCamExist
    L12_2 = L76_1
    L11_2 = L11_2(L12_2)
    if L11_2 then
      L11_2 = DestroyCam
      L12_2 = L76_1
      L13_2 = false
      L11_2(L12_2, L13_2)
    end
  end
  L11_2 = CreateCam
  L12_2 = "DEFAULT_SCRIPTED_CAMERA"
  L13_2 = true
  L11_2 = L11_2(L12_2, L13_2)
  L76_1 = L11_2
  L11_2 = SetCamCoord
  L12_2 = L76_1
  L13_2 = L8_2
  L14_2 = L9_2
  L15_2 = L10_2
  L11_2(L12_2, L13_2, L14_2, L15_2)
  L11_2 = PointCamAtEntity
  L12_2 = L76_1
  L13_2 = L2_2.entityHandle
  L14_2 = 0.0
  L15_2 = 0.0
  L16_2 = 0.0
  L17_2 = true
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L11_2 = SetCamActiveWithInterp
  L12_2 = L76_1
  L13_2 = L3_1
  L14_2 = 500
  L15_2 = 1
  L16_2 = 1
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
  L11_2 = A1_2
  L12_2 = "ok"
  L11_2(L12_2)
end
L77_1(L78_1, L79_1)
L77_1 = RegisterNUICallback
L78_1 = "unfocusEntity"
function L79_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = L76_1
  if L2_2 then
    L2_2 = DoesCamExist
    L3_2 = L76_1
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = L3_1
      if L2_2 then
        L2_2 = DoesCamExist
        L3_2 = L3_1
        L2_2 = L2_2(L3_2)
        if L2_2 then
          L2_2 = SetCamActiveWithInterp
          L3_2 = L3_1
          L4_2 = L76_1
          L5_2 = 500
          L6_2 = 1
          L7_2 = 1
          L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
        end
      end
      L2_2 = CreateThread
      function L3_2()
        local L0_3, L1_3, L2_3
        L0_3 = Wait
        L1_3 = 600
        L0_3(L1_3)
        L0_3 = L76_1
        if L0_3 then
          L0_3 = DoesCamExist
          L1_3 = L76_1
          L0_3 = L0_3(L1_3)
          if L0_3 then
            L0_3 = DestroyCam
            L1_3 = L76_1
            L2_3 = false
            L0_3(L1_3, L2_3)
            L0_3 = nil
            L76_1 = L0_3
          end
        end
      end
      L2_2(L3_2)
    end
  end
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L77_1(L78_1, L79_1)
L77_1 = RegisterNUICallback
L78_1 = "sceneUpdatePos"
function L79_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = A0_2.entityId
  L2_2 = L47_1
  L2_2 = L2_2[L3_2]
  if L2_2 then
    L3_2 = L2_2.entityHandle
    if L3_2 then
      L3_2 = DoesEntityExist
      L4_2 = L2_2.entityHandle
      L3_2 = L3_2(L4_2)
      if L3_2 then
        goto lbl_18
      end
    end
  end
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
  do return end
  ::lbl_18::
  L3_2 = A0_2.pos
  L4_2 = A0_2.heading
  if not L4_2 then
    L4_2 = 0
  end
  L5_2 = GetGroundZFor_3dCoord
  L6_2 = L3_2.x
  L7_2 = L3_2.y
  L8_2 = L3_2.z
  L8_2 = L8_2 + 5.0
  L9_2 = false
  L5_2, L6_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  if L5_2 then
    L7_2 = L2_2.type
    if "vehicle" == L7_2 then
      L7_2 = 0.5
      if L7_2 then
        goto lbl_40
      end
    end
    L7_2 = 0.1
    ::lbl_40::
    L7_2 = L6_2 + L7_2
    L3_2.z = L7_2
  end
  L7_2 = SetEntityCoords
  L8_2 = L2_2.entityHandle
  L9_2 = L3_2.x
  L10_2 = L3_2.y
  L11_2 = L3_2.z
  L12_2 = false
  L13_2 = false
  L14_2 = false
  L15_2 = false
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L7_2 = SetEntityHeading
  L8_2 = L2_2.entityHandle
  L9_2 = L4_2
  L7_2(L8_2, L9_2)
  L7_2 = L2_2.type
  if "vehicle" == L7_2 then
    L7_2 = SetVehicleOnGroundProperly
    L8_2 = L2_2.entityHandle
    L7_2(L8_2)
  end
  L2_2.pos = L3_2
  L2_2.heading = L4_2
  L7_2 = A1_2
  L8_2 = "ok"
  L7_2(L8_2)
end
L77_1(L78_1, L79_1)
L77_1 = RegisterNUICallback
L78_1 = "startScenePlacement"
function L79_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2.entityId
  L3_2 = L47_1
  L3_2 = L3_2[L2_2]
  if L3_2 then
    L4_2 = L3_2.entityHandle
    if L4_2 then
      L4_2 = DoesEntityExist
      L5_2 = L3_2.entityHandle
      L4_2 = L4_2(L5_2)
      if L4_2 then
        goto lbl_18
      end
    end
  end
  L4_2 = A1_2
  L5_2 = "ok"
  L4_2(L5_2)
  do return end
  ::lbl_18::
  L4_2 = A0_2.isNewSpawn
  L4_2 = true == L4_2
  L49_1 = L2_2
  L5_2 = SetNuiFocus
  L6_2 = false
  L7_2 = false
  L5_2(L6_2, L7_2)
  L5_2 = SendNUIMessage
  L6_2 = {}
  L6_2.type = "scenePlacementActive"
  L6_2.active = true
  L5_2(L6_2)
  L5_2 = CreateThread
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3
    L0_3 = L3_2.entityHandle
    L1_3 = L3_2.heading
    if not L1_3 then
      L1_3 = 0.0
    end
    L2_3 = vector3
    L3_3 = L3_2.pos
    L3_3 = L3_3.x
    L4_3 = L3_2.pos
    L4_3 = L4_3.y
    L5_3 = L3_2.pos
    L5_3 = L5_3.z
    L2_3 = L2_3(L3_3, L4_3, L5_3)
    L3_3 = L1_3
    L4_3 = 8.0
    L5_3 = vector3
    L6_3 = L3_2.pos
    L6_3 = L6_3.x
    L7_3 = L3_2.pos
    L7_3 = L7_3.y
    L8_3 = L3_2.pos
    L8_3 = L8_3.z
    L5_3 = L5_3(L6_3, L7_3, L8_3)
    L6_3 = vector3
    L7_3 = -L4_3
    L7_3 = L7_3 * 0.7
    L8_3 = -L4_3
    L8_3 = L8_3 * 0.7
    L9_3 = L4_3 * 0.3
    L6_3 = L6_3(L7_3, L8_3, L9_3)
    L7_3 = L5_3 + L6_3
    L8_3 = L5_3 - L7_3
    L9_3 = math
    L9_3 = L9_3.sqrt
    L10_3 = L8_3.x
    L11_3 = L8_3.x
    L10_3 = L10_3 * L11_3
    L11_3 = L8_3.y
    L12_3 = L8_3.y
    L11_3 = L11_3 * L12_3
    L10_3 = L10_3 + L11_3
    L11_3 = L8_3.z
    L12_3 = L8_3.z
    L11_3 = L11_3 * L12_3
    L10_3 = L10_3 + L11_3
    L9_3 = L9_3(L10_3)
    L4_3 = L9_3
    L9_3 = math
    L9_3 = L9_3.sqrt
    L10_3 = L8_3.x
    L11_3 = L8_3.x
    L10_3 = L10_3 * L11_3
    L11_3 = L8_3.y
    L12_3 = L8_3.y
    L11_3 = L11_3 * L12_3
    L10_3 = L10_3 + L11_3
    L9_3 = L9_3(L10_3)
    L10_3 = vector3
    L11_3 = math
    L11_3 = L11_3.deg
    L12_3 = math
    L12_3 = L12_3.atan
    L13_3 = L8_3.z
    L14_3 = L9_3
    L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3 = L12_3(L13_3, L14_3)
    L11_3 = L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3)
    L11_3 = L11_3 * -1.0
    L12_3 = 0.0
    L13_3 = math
    L13_3 = L13_3.deg
    L14_3 = math
    L14_3 = L14_3.atan
    L15_3 = L8_3.x
    L16_3 = L8_3.y
    L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3 = L14_3(L15_3, L16_3)
    L13_3 = L13_3(L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3)
    L13_3 = L13_3 * -1.0
    L10_3 = L10_3(L11_3, L12_3, L13_3)
    L11_3 = CreateCam
    L12_3 = "DEFAULT_SCRIPTED_CAMERA"
    L13_3 = true
    L11_3 = L11_3(L12_3, L13_3)
    L12_3 = SetCamCoord
    L13_3 = L11_3
    L14_3 = L7_3.x
    L15_3 = L7_3.y
    L16_3 = L7_3.z
    L12_3(L13_3, L14_3, L15_3, L16_3)
    L12_3 = SetCamRot
    L13_3 = L11_3
    L14_3 = L10_3.x
    L15_3 = L10_3.y
    L16_3 = L10_3.z
    L17_3 = 2
    L12_3(L13_3, L14_3, L15_3, L16_3, L17_3)
    L12_3 = SetCamActive
    L13_3 = L11_3
    L14_3 = true
    L12_3(L13_3, L14_3)
    L12_3 = RenderScriptCams
    L13_3 = true
    L14_3 = false
    L15_3 = 0
    L16_3 = true
    L17_3 = false
    L12_3(L13_3, L14_3, L15_3, L16_3, L17_3)
    L12_3 = 15.0
    L13_3 = 45.0
    L14_3 = 4.0
    L15_3 = GetGameTimer
    L15_3 = L15_3()
    L16_3 = FreezeEntityPosition
    L17_3 = L0_3
    L18_3 = true
    L16_3(L17_3, L18_3)
    L16_3 = PlayerPedId
    L16_3 = L16_3()
    L17_3 = SetEntityVisible
    L18_3 = L16_3
    L19_3 = false
    L20_3 = false
    L17_3(L18_3, L19_3, L20_3)
    L17_3 = FreezeEntityPosition
    L18_3 = L16_3
    L19_3 = true
    L17_3(L18_3, L19_3)
    while true do
      L17_3 = L49_1
      L18_3 = L2_2
      if L17_3 ~= L18_3 then
        break
      end
      L17_3 = Wait
      L18_3 = 0
      L17_3(L18_3)
      L17_3 = DisableControlAction
      L18_3 = 0
      L19_3 = 1
      L20_3 = true
      L17_3(L18_3, L19_3, L20_3)
      L17_3 = DisableControlAction
      L18_3 = 0
      L19_3 = 2
      L20_3 = true
      L17_3(L18_3, L19_3, L20_3)
      L17_3 = DisableControlAction
      L18_3 = 0
      L19_3 = 24
      L20_3 = true
      L17_3(L18_3, L19_3, L20_3)
      L17_3 = DisableControlAction
      L18_3 = 0
      L19_3 = 25
      L20_3 = true
      L17_3(L18_3, L19_3, L20_3)
      L17_3 = DisableControlAction
      L18_3 = 0
      L19_3 = 30
      L20_3 = true
      L17_3(L18_3, L19_3, L20_3)
      L17_3 = DisableControlAction
      L18_3 = 0
      L19_3 = 31
      L20_3 = true
      L17_3(L18_3, L19_3, L20_3)
      L17_3 = DisableControlAction
      L18_3 = 0
      L19_3 = 37
      L20_3 = true
      L17_3(L18_3, L19_3, L20_3)
      L17_3 = DisableControlAction
      L18_3 = 0
      L19_3 = 22
      L20_3 = true
      L17_3(L18_3, L19_3, L20_3)
      L17_3 = DisableControlAction
      L18_3 = 0
      L19_3 = 36
      L20_3 = true
      L17_3(L18_3, L19_3, L20_3)
      L17_3 = DisableControlAction
      L18_3 = 0
      L19_3 = 44
      L20_3 = true
      L17_3(L18_3, L19_3, L20_3)
      L17_3 = DisableControlAction
      L18_3 = 0
      L19_3 = 38
      L20_3 = true
      L17_3(L18_3, L19_3, L20_3)
      L17_3 = GetGameTimer
      L17_3 = L17_3()
      L18_3 = L17_3 - L15_3
      L18_3 = L18_3 / 1000.0
      L15_3 = L17_3
      L19_3 = GetDisabledControlNormal
      L20_3 = 0
      L21_3 = 1
      L19_3 = L19_3(L20_3, L21_3)
      L19_3 = L19_3 * L14_3
      L20_3 = GetDisabledControlNormal
      L21_3 = 0
      L22_3 = 2
      L20_3 = L20_3(L21_3, L22_3)
      L20_3 = L20_3 * L14_3
      L21_3 = vector3
      L22_3 = math
      L22_3 = L22_3.max
      L23_3 = -89.0
      L24_3 = math
      L24_3 = L24_3.min
      L25_3 = 89.0
      L26_3 = L10_3.x
      L26_3 = L26_3 - L20_3
      L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3 = L24_3(L25_3, L26_3)
      L22_3 = L22_3(L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3)
      L23_3 = 0.0
      L24_3 = L10_3.z
      L24_3 = L24_3 - L19_3
      L21_3 = L21_3(L22_3, L23_3, L24_3)
      L10_3 = L21_3
      L21_3 = IsDisabledControlPressed
      L22_3 = 0
      L23_3 = 21
      L21_3 = L21_3(L22_3, L23_3)
      L21_3 = L13_3 or L21_3
      if not L21_3 or not L13_3 then
        L21_3 = L12_3
      end
      L22_3 = L21_3 * L18_3
      L23_3 = math
      L23_3 = L23_3.rad
      L24_3 = L10_3.x
      L23_3 = L23_3(L24_3)
      L24_3 = math
      L24_3 = L24_3.rad
      L25_3 = L10_3.z
      L24_3 = L24_3(L25_3)
      L25_3 = vector3
      L26_3 = math
      L26_3 = L26_3.sin
      L27_3 = L24_3
      L26_3 = L26_3(L27_3)
      L26_3 = -L26_3
      L27_3 = math
      L27_3 = L27_3.abs
      L28_3 = math
      L28_3 = L28_3.cos
      L29_3 = L23_3
      L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3 = L28_3(L29_3)
      L27_3 = L27_3(L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3)
      L26_3 = L26_3 * L27_3
      L27_3 = math
      L27_3 = L27_3.cos
      L28_3 = L24_3
      L27_3 = L27_3(L28_3)
      L28_3 = math
      L28_3 = L28_3.abs
      L29_3 = math
      L29_3 = L29_3.cos
      L30_3 = L23_3
      L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3 = L29_3(L30_3)
      L28_3 = L28_3(L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3)
      L27_3 = L27_3 * L28_3
      L28_3 = math
      L28_3 = L28_3.sin
      L29_3 = L23_3
      L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3 = L28_3(L29_3)
      L25_3 = L25_3(L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3)
      L26_3 = vector3
      L27_3 = math
      L27_3 = L27_3.sin
      L28_3 = math
      L28_3 = L28_3.rad
      L29_3 = L10_3.z
      L29_3 = L29_3 - 90.0
      L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3 = L28_3(L29_3)
      L27_3 = L27_3(L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3)
      L27_3 = -L27_3
      L28_3 = math
      L28_3 = L28_3.cos
      L29_3 = math
      L29_3 = L29_3.rad
      L30_3 = L10_3.z
      L30_3 = L30_3 - 90.0
      L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3 = L29_3(L30_3)
      L28_3 = L28_3(L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3)
      L29_3 = 0.0
      L26_3 = L26_3(L27_3, L28_3, L29_3)
      L27_3 = IsDisabledControlPressed
      L28_3 = 0
      L29_3 = 32
      L27_3 = L27_3(L28_3, L29_3)
      if L27_3 then
        L27_3 = L25_3 * L22_3
        L7_3 = L7_3 + L27_3
      end
      L27_3 = IsDisabledControlPressed
      L28_3 = 0
      L29_3 = 33
      L27_3 = L27_3(L28_3, L29_3)
      if L27_3 then
        L27_3 = L25_3 * L22_3
        L7_3 = L7_3 - L27_3
      end
      L27_3 = IsDisabledControlPressed
      L28_3 = 0
      L29_3 = 34
      L27_3 = L27_3(L28_3, L29_3)
      if L27_3 then
        L27_3 = L26_3 * L22_3
        L7_3 = L7_3 - L27_3
      end
      L27_3 = IsDisabledControlPressed
      L28_3 = 0
      L29_3 = 35
      L27_3 = L27_3(L28_3, L29_3)
      if L27_3 then
        L27_3 = L26_3 * L22_3
        L7_3 = L7_3 + L27_3
      end
      L27_3 = IsDisabledControlPressed
      L28_3 = 0
      L29_3 = 22
      L27_3 = L27_3(L28_3, L29_3)
      if L27_3 then
        L27_3 = vector3
        L28_3 = 0
        L29_3 = 0
        L30_3 = L22_3
        L27_3 = L27_3(L28_3, L29_3, L30_3)
        L7_3 = L7_3 + L27_3
      end
      L27_3 = IsDisabledControlPressed
      L28_3 = 0
      L29_3 = 36
      L27_3 = L27_3(L28_3, L29_3)
      if L27_3 then
        L27_3 = vector3
        L28_3 = 0
        L29_3 = 0
        L30_3 = L22_3
        L27_3 = L27_3(L28_3, L29_3, L30_3)
        L7_3 = L7_3 - L27_3
      end
      L27_3 = IsDisabledControlPressed
      L28_3 = 0
      L29_3 = 44
      L27_3 = L27_3(L28_3, L29_3)
      if L27_3 then
        L27_3 = 90.0 * L18_3
        L1_3 = L1_3 + L27_3
      end
      L27_3 = IsDisabledControlPressed
      L28_3 = 0
      L29_3 = 38
      L27_3 = L27_3(L28_3, L29_3)
      if L27_3 then
        L27_3 = 90.0 * L18_3
        L1_3 = L1_3 - L27_3
      end
      L27_3 = IsDisabledControlPressed
      L28_3 = 0
      L29_3 = 241
      L27_3 = L27_3(L28_3, L29_3)
      if L27_3 then
        L27_3 = math
        L27_3 = L27_3.min
        L28_3 = L4_3 + 0.5
        L29_3 = 40.0
        L27_3 = L27_3(L28_3, L29_3)
        L4_3 = L27_3
      end
      L27_3 = IsDisabledControlPressed
      L28_3 = 0
      L29_3 = 242
      L27_3 = L27_3(L28_3, L29_3)
      if L27_3 then
        L27_3 = math
        L27_3 = L27_3.max
        L28_3 = L4_3 - 0.5
        L29_3 = 2.0
        L27_3 = L27_3(L28_3, L29_3)
        L4_3 = L27_3
      end
      L27_3 = SetCamCoord
      L28_3 = L11_3
      L29_3 = L7_3.x
      L30_3 = L7_3.y
      L31_3 = L7_3.z
      L27_3(L28_3, L29_3, L30_3, L31_3)
      L27_3 = SetCamRot
      L28_3 = L11_3
      L29_3 = L10_3.x
      L30_3 = L10_3.y
      L31_3 = L10_3.z
      L32_3 = 2
      L27_3(L28_3, L29_3, L30_3, L31_3, L32_3)
      L27_3 = SendNUIMessage
      L28_3 = {}
      L28_3.type = "coordsUpdate"
      L29_3 = {}
      L30_3 = L7_3.x
      L29_3.x = L30_3
      L30_3 = L7_3.y
      L29_3.y = L30_3
      L30_3 = L7_3.z
      L29_3.z = L30_3
      L28_3.pos = L29_3
      L29_3 = {}
      L30_3 = L10_3.x
      L29_3.x = L30_3
      L30_3 = L10_3.y
      L29_3.y = L30_3
      L30_3 = L10_3.z
      L29_3.z = L30_3
      L28_3.rot = L29_3
      L29_3 = GetCamFov
      L30_3 = L11_3
      L29_3 = L29_3(L30_3)
      if not L29_3 then
        L29_3 = 50.0
      end
      L28_3.fov = L29_3
      L27_3(L28_3)
      L27_3 = L25_3 * L4_3
      L27_3 = L7_3 + L27_3
      L28_3 = GetGroundZFor_3dCoord
      L29_3 = L27_3.x
      L30_3 = L27_3.y
      L31_3 = L27_3.z
      L31_3 = L31_3 + 2.0
      L32_3 = false
      L28_3, L29_3 = L28_3(L29_3, L30_3, L31_3, L32_3)
      if L28_3 then
        L30_3 = vector3
        L31_3 = L27_3.x
        L32_3 = L27_3.y
        L33_3 = L29_3
        L30_3 = L30_3(L31_3, L32_3, L33_3)
        L27_3 = L30_3
      end
      L30_3 = SetEntityCoords
      L31_3 = L0_3
      L32_3 = L27_3.x
      L33_3 = L27_3.y
      L34_3 = L27_3.z
      L35_3 = false
      L36_3 = false
      L37_3 = false
      L38_3 = false
      L30_3(L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3)
      L30_3 = SetEntityHeading
      L31_3 = L0_3
      L32_3 = L1_3
      L30_3(L31_3, L32_3)
      L30_3 = IsControlJustReleased
      L31_3 = 0
      L32_3 = 191
      L30_3 = L30_3(L31_3, L32_3)
      if L30_3 then
        L30_3 = GetEntityCoords
        L31_3 = L0_3
        L30_3 = L30_3(L31_3)
        L31_3 = GetGroundZFor_3dCoord
        L32_3 = L30_3.x
        L33_3 = L30_3.y
        L34_3 = L30_3.z
        L34_3 = L34_3 + 2.0
        L35_3 = false
        L31_3, L32_3 = L31_3(L32_3, L33_3, L34_3, L35_3)
        if L31_3 then
          L33_3 = SetEntityCoords
          L34_3 = L0_3
          L35_3 = L30_3.x
          L36_3 = L30_3.y
          L37_3 = L32_3
          L38_3 = false
          L39_3 = false
          L40_3 = false
          L41_3 = false
          L33_3(L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3)
        end
        L33_3 = L3_2.type
        if "vehicle" == L33_3 then
          L33_3 = SetVehicleOnGroundProperly
          L34_3 = L0_3
          L33_3(L34_3)
        end
        L33_3 = GetEntityCoords
        L34_3 = L0_3
        L33_3 = L33_3(L34_3)
        L34_3 = {}
        L35_3 = L33_3.x
        L34_3.x = L35_3
        L35_3 = L33_3.y
        L34_3.y = L35_3
        L35_3 = L33_3.z
        L34_3.z = L35_3
        L3_2.pos = L34_3
        L34_3 = L1_3 % 360.0
        L3_2.heading = L34_3
        L34_3 = nil
        L49_1 = L34_3
        L34_3 = SetCamActive
        L35_3 = L11_3
        L36_3 = false
        L34_3(L35_3, L36_3)
        L34_3 = DestroyCam
        L35_3 = L11_3
        L36_3 = false
        L34_3(L35_3, L36_3)
        L34_3 = SetEntityVisible
        L35_3 = L16_3
        L36_3 = true
        L37_3 = false
        L34_3(L35_3, L36_3, L37_3)
        L34_3 = FreezeEntityPosition
        L35_3 = L16_3
        L36_3 = false
        L34_3(L35_3, L36_3)
        L34_3 = L3_1
        if L34_3 then
          L34_3 = DoesCamExist
          L35_3 = L3_1
          L34_3 = L34_3(L35_3)
          if L34_3 then
            L34_3 = SetCamActive
            L35_3 = L3_1
            L36_3 = true
            L34_3(L35_3, L36_3)
            L34_3 = RenderScriptCams
            L35_3 = true
            L36_3 = false
            L37_3 = 0
            L38_3 = true
            L39_3 = false
            L34_3(L35_3, L36_3, L37_3, L38_3, L39_3)
          end
        end
        L34_3 = SetNuiFocus
        L35_3 = true
        L36_3 = true
        L34_3(L35_3, L36_3)
        L34_3 = SendNUIMessage
        L35_3 = {}
        L35_3.type = "scenePlacementDone"
        L36_3 = L2_2
        L35_3.entityId = L36_3
        L36_3 = L3_2.pos
        L35_3.pos = L36_3
        L36_3 = L3_2.heading
        L35_3.heading = L36_3
        L34_3(L35_3)
        return
      end
      L30_3 = IsDisabledControlJustReleased
      L31_3 = 0
      L32_3 = 177
      L30_3 = L30_3(L31_3, L32_3)
      if not L30_3 then
        L30_3 = IsDisabledControlJustReleased
        L31_3 = 0
        L32_3 = 202
        L30_3 = L30_3(L31_3, L32_3)
        if not L30_3 then
          L30_3 = IsDisabledControlJustReleased
          L31_3 = 0
          L32_3 = 200
          L30_3 = L30_3(L31_3, L32_3)
          if not L30_3 then
            L30_3 = IsDisabledControlJustReleased
            L31_3 = 0
            L32_3 = 322
            L30_3 = L30_3(L31_3, L32_3)
            if not L30_3 then
              goto lbl_720
            end
          end
        end
      end
      L30_3 = L4_2
      if L30_3 then
        L30_3 = DoesEntityExist
        L31_3 = L0_3
        L30_3 = L30_3(L31_3)
        if L30_3 then
          L30_3 = DeleteEntity
          L31_3 = L0_3
          L30_3(L31_3)
        end
        L31_3 = L2_2
        L30_3 = L47_1
        L30_3[L31_3] = nil
      else
        L30_3 = SetEntityCoords
        L31_3 = L0_3
        L32_3 = L2_3.x
        L33_3 = L2_3.y
        L34_3 = L2_3.z
        L35_3 = false
        L36_3 = false
        L37_3 = false
        L38_3 = false
        L30_3(L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3)
        L30_3 = SetEntityHeading
        L31_3 = L0_3
        L32_3 = L3_3
        L30_3(L31_3, L32_3)
      end
      L30_3 = nil
      L49_1 = L30_3
      L30_3 = SetCamActive
      L31_3 = L11_3
      L32_3 = false
      L30_3(L31_3, L32_3)
      L30_3 = DestroyCam
      L31_3 = L11_3
      L32_3 = false
      L30_3(L31_3, L32_3)
      L30_3 = SetEntityVisible
      L31_3 = L16_3
      L32_3 = true
      L33_3 = false
      L30_3(L31_3, L32_3, L33_3)
      L30_3 = FreezeEntityPosition
      L31_3 = L16_3
      L32_3 = false
      L30_3(L31_3, L32_3)
      L30_3 = L3_1
      if L30_3 then
        L30_3 = DoesCamExist
        L31_3 = L3_1
        L30_3 = L30_3(L31_3)
        if L30_3 then
          L30_3 = SetCamActive
          L31_3 = L3_1
          L32_3 = true
          L30_3(L31_3, L32_3)
          L30_3 = RenderScriptCams
          L31_3 = true
          L32_3 = false
          L33_3 = 0
          L34_3 = true
          L35_3 = false
          L30_3(L31_3, L32_3, L33_3, L34_3, L35_3)
        end
      end
      L30_3 = SetNuiFocus
      L31_3 = true
      L32_3 = true
      L30_3(L31_3, L32_3)
      L30_3 = SendNUIMessage
      L31_3 = {}
      L31_3.type = "scenePlacementActive"
      L31_3.active = false
      L30_3(L31_3)
      L30_3 = L4_2
      if L30_3 then
        L30_3 = SendNUIMessage
        L31_3 = {}
        L31_3.type = "sceneEntityDeleted"
        L32_3 = L2_2
        L31_3.entityId = L32_3
        L30_3(L31_3)
      end
      do return end
      ::lbl_720::
    end
  end
  L5_2(L6_2)
  L5_2 = A1_2
  L6_2 = "ok"
  L5_2(L6_2)
end
L77_1(L78_1, L79_1)
L77_1 = RegisterNUICallback
L78_1 = "deleteRecording"
function L79_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = pairs
  L3_2 = L16_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = DoesEntityExist
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L8_2 = DeleteEntity
      L9_2 = L7_2
      L8_2(L9_2)
    end
  end
  L2_2 = {}
  L16_1 = L2_2
  L2_2 = {}
  L17_1 = L2_2
  L2_2 = {}
  L18_1 = L2_2
  L2_2 = pairs
  L3_2 = L27_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = DoesEntityExist
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L8_2 = DeleteEntity
      L9_2 = L7_2
      L8_2(L9_2)
    end
  end
  L2_2 = {}
  L27_1 = L2_2
  L2_2 = {}
  L28_1 = L2_2
  L2_2 = {}
  L29_1 = L2_2
  L2_2 = {}
  L30_1 = L2_2
  L2_2 = {}
  L31_1 = L2_2
  L2_2 = {}
  L32_1 = L2_2
  L2_2 = {}
  L33_1 = L2_2
  L2_2 = {}
  L34_1 = L2_2
  L2_2 = {}
  L35_1 = L2_2
  L2_2 = {}
  L36_1 = L2_2
  L2_2 = {}
  L37_1 = L2_2
  L2_2 = {}
  L38_1 = L2_2
  L2_2 = {}
  L14_1 = L2_2
  L2_2 = {}
  L26_1 = L2_2
  L2_2 = 0.0
  L22_1 = L2_2
  L2_2 = nil
  L23_1 = L2_2
  L2_2 = 0.0
  L24_1 = L2_2
  L2_2 = L20_1
  if L2_2 then
    L2_2 = TriggerServerEvent
    L3_2 = "core_cinematics:leaveBucket"
    L2_2(L3_2)
    L2_2 = false
    L20_1 = L2_2
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = SetEntityVisible
    L4_2 = L2_2
    L5_2 = true
    L6_2 = false
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = ResetEntityAlpha
    L4_2 = L2_2
    L3_2(L4_2)
    L3_2 = SetEntityCollision
    L4_2 = L2_2
    L5_2 = true
    L6_2 = true
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = SetEntityLocallyInvisible
    L4_2 = L2_2
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = SetLocalPlayerVisibleLocally
    L4_2 = true
    L3_2(L4_2)
  end
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L77_1(L78_1, L79_1)
L77_1 = RegisterNUICallback
L78_1 = "resetProjectState"
function L79_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = L1_1
  if L2_2 then
    L2_2 = stopPlayback
    L2_2()
  end
  L2_2 = pairs
  L3_2 = L16_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = DoesEntityExist
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L8_2 = DeleteEntity
      L9_2 = L7_2
      L8_2(L9_2)
    end
  end
  L2_2 = {}
  L16_1 = L2_2
  L2_2 = {}
  L17_1 = L2_2
  L2_2 = {}
  L18_1 = L2_2
  L2_2 = pairs
  L3_2 = L27_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = DoesEntityExist
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L8_2 = DeleteEntity
      L9_2 = L7_2
      L8_2(L9_2)
    end
  end
  L2_2 = {}
  L27_1 = L2_2
  L2_2 = {}
  L28_1 = L2_2
  L2_2 = {}
  L29_1 = L2_2
  L2_2 = {}
  L30_1 = L2_2
  L2_2 = {}
  L31_1 = L2_2
  L2_2 = {}
  L32_1 = L2_2
  L2_2 = {}
  L33_1 = L2_2
  L2_2 = {}
  L34_1 = L2_2
  L2_2 = {}
  L35_1 = L2_2
  L2_2 = {}
  L36_1 = L2_2
  L2_2 = {}
  L37_1 = L2_2
  L2_2 = {}
  L38_1 = L2_2
  L2_2 = cleanupOverlaySpawns
  L2_2()
  L2_2 = ipairs
  L3_2 = L40_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.driftSmoke
    if L8_2 then
      L8_2 = DriftSmoke
      if L8_2 then
        L8_2 = DriftSmoke
        L8_2 = L8_2.stopPlayback
        if L8_2 then
          L8_2 = DriftSmoke
          L8_2 = L8_2.stopPlayback
          L9_2 = L7_2.driftSmoke
          L8_2(L9_2)
        end
      end
    end
  end
  L2_2 = {}
  L40_1 = L2_2
  L2_2 = nil
  L41_1 = L2_2
  L2_2 = pairs
  L3_2 = L25_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = DriftSmoke
    if L8_2 then
      L8_2 = DriftSmoke
      L8_2 = L8_2.stopPlayback
      if L8_2 then
        L8_2 = DriftSmoke
        L8_2 = L8_2.stopPlayback
        L9_2 = L7_2
        L8_2(L9_2)
      end
    end
  end
  L2_2 = {}
  L25_1 = L2_2
  L2_2 = pairs
  L3_2 = L47_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L48_1
    L8_2[L6_2] = nil
    L8_2 = L7_2.driverPed
    if L8_2 then
      L8_2 = DoesEntityExist
      L9_2 = L7_2.driverPed
      L8_2 = L8_2(L9_2)
      if L8_2 then
        L8_2 = DeleteEntity
        L9_2 = L7_2.driverPed
        L8_2(L9_2)
      end
    end
    L8_2 = L7_2.entityHandle
    if L8_2 then
      L8_2 = DoesEntityExist
      L9_2 = L7_2.entityHandle
      L8_2 = L8_2(L9_2)
      if L8_2 then
        L8_2 = DeleteEntity
        L9_2 = L7_2.entityHandle
        L8_2(L9_2)
      end
    end
  end
  L2_2 = {}
  L47_1 = L2_2
  L2_2 = {}
  L14_1 = L2_2
  L2_2 = {}
  L26_1 = L2_2
  L2_2 = 0.0
  L22_1 = L2_2
  L2_2 = nil
  L23_1 = L2_2
  L2_2 = 0.0
  L24_1 = L2_2
  L2_2 = L20_1
  if L2_2 then
    L2_2 = TriggerServerEvent
    L3_2 = "core_cinematics:leaveBucket"
    L2_2(L3_2)
    L2_2 = false
    L20_1 = L2_2
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = SetEntityVisible
    L4_2 = L2_2
    L5_2 = true
    L6_2 = false
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = ResetEntityAlpha
    L4_2 = L2_2
    L3_2(L4_2)
    L3_2 = SetEntityCollision
    L4_2 = L2_2
    L5_2 = true
    L6_2 = true
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = SetEntityLocallyInvisible
    L4_2 = L2_2
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = SetLocalPlayerVisibleLocally
    L4_2 = true
    L3_2(L4_2)
  end
  L2_2 = L61_1
  if L2_2 then
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = SetEntityCoordsNoOffset
    L4_2 = L2_2
    L5_2 = L61_1.x
    L6_2 = L61_1.y
    L7_2 = L61_1.z
    L8_2 = false
    L9_2 = false
    L10_2 = false
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L3_2 = SetEntityHeading
    L4_2 = L2_2
    L5_2 = L62_1
    if not L5_2 then
      L5_2 = 0.0
    end
    L3_2(L4_2, L5_2)
  end
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L77_1(L78_1, L79_1)
L77_1 = RegisterNUICallback
L78_1 = "clickReplayEntity"
function L79_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
  L2_2 = L3_1
  if L2_2 then
    L2_2 = DoesCamExist
    L3_2 = L3_1
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_13
    end
  end
  do return end
  ::lbl_13::
  L2_2 = A0_2.mouseX
  if not L2_2 then
    L2_2 = 0.5
  end
  L3_2 = A0_2.mouseY
  if not L3_2 then
    L3_2 = 0.5
  end
  L4_2 = 0.045
  L5_2 = nil
  L6_2 = nil
  L7_2 = pairs
  L8_2 = L16_1
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
    if L12_2 then
      L13_2 = DoesEntityExist
      L14_2 = L12_2
      L13_2 = L13_2(L14_2)
      if L13_2 then
        L13_2 = GetEntityCoords
        L14_2 = L12_2
        L13_2 = L13_2(L14_2)
        L14_2 = GetScreenCoordFromWorldCoord
        L15_2 = L13_2.x
        L16_2 = L13_2.y
        L17_2 = L13_2.z
        L14_2, L15_2, L16_2 = L14_2(L15_2, L16_2, L17_2)
        if L14_2 then
          L17_2 = math
          L17_2 = L17_2.sqrt
          L18_2 = L15_2 - L2_2
          L18_2 = L18_2 ^ 2
          L19_2 = L16_2 - L3_2
          L19_2 = L19_2 ^ 2
          L18_2 = L18_2 + L19_2
          L17_2 = L17_2(L18_2)
          if L4_2 > L17_2 then
            L4_2 = L17_2
            L5_2 = "vehicle"
            L6_2 = L11_2
          end
        end
      end
    end
  end
  L7_2 = pairs
  L8_2 = L27_1
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
    if L12_2 then
      L13_2 = DoesEntityExist
      L14_2 = L12_2
      L13_2 = L13_2(L14_2)
      if L13_2 then
        L13_2 = GetEntityCoords
        L14_2 = L12_2
        L13_2 = L13_2(L14_2)
        L14_2 = GetScreenCoordFromWorldCoord
        L15_2 = L13_2.x
        L16_2 = L13_2.y
        L17_2 = L13_2.z
        L17_2 = L17_2 + 0.5
        L14_2, L15_2, L16_2 = L14_2(L15_2, L16_2, L17_2)
        if L14_2 then
          L17_2 = math
          L17_2 = L17_2.sqrt
          L18_2 = L15_2 - L2_2
          L18_2 = L18_2 ^ 2
          L19_2 = L16_2 - L3_2
          L19_2 = L19_2 ^ 2
          L18_2 = L18_2 + L19_2
          L17_2 = L17_2(L18_2)
          if L4_2 > L17_2 then
            L4_2 = L17_2
            L5_2 = "ped"
            L6_2 = L11_2
          end
        end
      end
    end
  end
  if L5_2 and L6_2 then
    if "vehicle" == L5_2 then
      L7_2 = L14_1
      L7_2 = L7_2[L6_2]
      L8_2 = GetDisplayNameFromVehicleModel
      L9_2 = L7_2.vehicleModel
      L8_2 = L8_2(L9_2)
      if "CARNOTFOUND" == L8_2 then
        L9_2 = tostring
        L10_2 = L7_2.vehicleModel
        L9_2 = L9_2(L10_2)
        L8_2 = L9_2
      end
      L9_2 = SendNUIMessage
      L10_2 = {}
      L10_2.type = "replayEntityClicked"
      L10_2.entityType = "vehicle"
      L10_2.recordingIdx = L6_2
      L12_2 = L8_2
      L11_2 = L8_2.lower
      L11_2 = L11_2(L12_2)
      L10_2.currentModel = L11_2
      L9_2(L10_2)
    else
      L7_2 = L26_1
      L7_2 = L7_2[L6_2]
      L8_2 = SendNUIMessage
      L9_2 = {}
      L9_2.type = "replayEntityClicked"
      L9_2.entityType = "ped"
      L9_2.recordingIdx = L6_2
      L10_2 = tostring
      L11_2 = L7_2.pedModel
      L10_2 = L10_2(L11_2)
      L9_2.currentModel = L10_2
      L8_2(L9_2)
    end
  end
end
L77_1(L78_1, L79_1)
L77_1 = RegisterNUICallback
L78_1 = "swapReplayModel"
function L79_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2.entityType
  L3_2 = A0_2.recordingIdx
  L4_2 = A0_2.newModel
  L5_2 = GetHashKey
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = RequestModel
  L7_2 = L5_2
  L6_2(L7_2)
  L6_2 = CreateThread
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3
    L0_3 = 0
    while true do
      L1_3 = HasModelLoaded
      L2_3 = L5_2
      L1_3 = L1_3(L2_3)
      if not (not L1_3 and L0_3 < 100) then
        break
      end
      L1_3 = Wait
      L2_3 = 50
      L1_3(L2_3)
      L0_3 = L0_3 + 1
    end
    L1_3 = HasModelLoaded
    L2_3 = L5_2
    L1_3 = L1_3(L2_3)
    if not L1_3 then
      L1_3 = SendNUIMessage
      L2_3 = {}
      L2_3.type = "modelSwapError"
      L3_3 = _L
      L4_3 = "lua.errors.model_not_found"
      L5_3 = {}
      L6_3 = L4_2
      L5_3.model = L6_3
      L3_3 = L3_3(L4_3, L5_3)
      L2_3.msg = L3_3
      L1_3(L2_3)
      return
    end
    L1_3 = L2_2
    if "vehicle" == L1_3 then
      L2_3 = L3_2
      L1_3 = L14_1
      L1_3 = L1_3[L2_3]
      if not L1_3 then
        L2_3 = SendNUIMessage
        L3_3 = {}
        L3_3.type = "modelSwapError"
        L4_3 = _L
        L5_3 = "lua.errors.recording_not_found"
        L4_3 = L4_3(L5_3)
        L3_3.msg = L4_3
        L2_3(L3_3)
        return
      end
      L3_3 = L3_2
      L2_3 = L16_1
      L2_3 = L2_3[L3_3]
      if L2_3 then
        L3_3 = DoesEntityExist
        L4_3 = L2_3
        L3_3 = L3_3(L4_3)
        if L3_3 then
          L3_3 = DeleteEntity
          L4_3 = L2_3
          L3_3(L4_3)
        end
      end
      L3_3 = L1_3.vehicleModel
      L4_3 = L1_3.frames
      if L4_3 then
        L4_3 = L1_3.frames
        L4_3 = L4_3[1]
      end
      L1_3.suspensionDelta = 0.0
      if L4_3 then
        L5_3 = L4_3.px
        L6_3 = L4_3.py
        L7_3 = L4_3.pz
        L8_3 = RequestModel
        L9_3 = L3_3
        L8_3(L9_3)
        L8_3 = 0
        while true do
          L9_3 = HasModelLoaded
          L10_3 = L3_3
          L9_3 = L9_3(L10_3)
          if not (not L9_3 and L8_3 < 60) then
            break
          end
          L9_3 = Wait
          L10_3 = 50
          L9_3(L10_3)
          L8_3 = L8_3 + 1
        end
        L9_3 = CreateVehicle
        L10_3 = L3_3
        L11_3 = L5_3
        L12_3 = L6_3
        L13_3 = L7_3 + 1.0
        L14_3 = 0.0
        L15_3 = false
        L16_3 = false
        L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
        L10_3 = SetEntityVisible
        L11_3 = L9_3
        L12_3 = false
        L13_3 = false
        L10_3(L11_3, L12_3, L13_3)
        L10_3 = SetEntityAlpha
        L11_3 = L9_3
        L12_3 = 0
        L13_3 = false
        L10_3(L11_3, L12_3, L13_3)
        L10_3 = SetVehicleOnGroundProperly
        L11_3 = L9_3
        L10_3(L11_3)
        L10_3 = 1
        L11_3 = 40
        L12_3 = 1
        for L13_3 = L10_3, L11_3, L12_3 do
          L14_3 = Wait
          L15_3 = 25
          L14_3(L15_3)
          L14_3 = GetEntityVelocity
          L15_3 = L9_3
          L14_3 = L14_3(L15_3)
          L15_3 = math
          L15_3 = L15_3.abs
          L16_3 = L14_3.z
          L15_3 = L15_3(L16_3)
          L16_3 = 0.01
          if L15_3 < L16_3 then
            break
          end
        end
        L10_3 = GetEntityCoords
        L11_3 = L9_3
        L10_3 = L10_3(L11_3)
        L10_3 = L10_3.z
        L11_3 = DeleteEntity
        L12_3 = L9_3
        L11_3(L12_3)
        L11_3 = SetModelAsNoLongerNeeded
        L12_3 = L3_3
        L11_3(L12_3)
        L11_3 = CreateVehicle
        L12_3 = L5_2
        L13_3 = L5_3
        L14_3 = L6_3
        L15_3 = L7_3 + 1.0
        L16_3 = 0.0
        L17_3 = false
        L18_3 = false
        L11_3 = L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
        L12_3 = SetEntityVisible
        L13_3 = L11_3
        L14_3 = false
        L15_3 = false
        L12_3(L13_3, L14_3, L15_3)
        L12_3 = SetEntityAlpha
        L13_3 = L11_3
        L14_3 = 0
        L15_3 = false
        L12_3(L13_3, L14_3, L15_3)
        L12_3 = SetVehicleOnGroundProperly
        L13_3 = L11_3
        L12_3(L13_3)
        L12_3 = 1
        L13_3 = 40
        L14_3 = 1
        for L15_3 = L12_3, L13_3, L14_3 do
          L16_3 = Wait
          L17_3 = 25
          L16_3(L17_3)
          L16_3 = GetEntityVelocity
          L17_3 = L11_3
          L16_3 = L16_3(L17_3)
          L17_3 = math
          L17_3 = L17_3.abs
          L18_3 = L16_3.z
          L17_3 = L17_3(L18_3)
          L18_3 = 0.01
          if L17_3 < L18_3 then
            break
          end
        end
        L12_3 = GetEntityCoords
        L13_3 = L11_3
        L12_3 = L12_3(L13_3)
        L12_3 = L12_3.z
        L13_3 = DeleteEntity
        L14_3 = L11_3
        L13_3(L14_3)
        L13_3 = L12_3 - L10_3
        L1_3.suspensionDelta = L13_3
      end
      L5_3 = L5_2
      L1_3.vehicleModel = L5_3
      L6_3 = L3_2
      L5_3 = L16_1
      L5_3[L6_3] = nil
      L6_3 = L3_2
      L5_3 = L17_1
      L5_3[L6_3] = false
      L5_3 = spawnSingleVehicle
      L6_3 = L3_2
      L5_3(L6_3)
      L5_3 = 0
      while true do
        L7_3 = L3_2
        L6_3 = L16_1
        L6_3 = L6_3[L7_3]
        if L6_3 then
          L7_3 = L3_2
          L6_3 = L17_1
          L6_3 = L6_3[L7_3]
        end
        if not (L6_3 and L5_3 < 100) then
          break
        end
        L6_3 = Wait
        L7_3 = 50
        L6_3(L7_3)
        L5_3 = L5_3 + 1
      end
      L6_3 = previewVehicleAtFrame
      L7_3 = L5_1
      L6_3(L7_3)
      L6_3 = SendNUIMessage
      L7_3 = {}
      L7_3.type = "modelSwapDone"
      L8_3 = L4_2
      L7_3.newModel = L8_3
      L8_3 = L2_2
      L7_3.entityType = L8_3
      L8_3 = L3_2
      L7_3.recordingIdx = L8_3
      L6_3(L7_3)
    else
      L1_3 = L2_2
      if "ped" == L1_3 then
        L2_3 = L3_2
        L1_3 = L26_1
        L1_3 = L1_3[L2_3]
        if not L1_3 then
          L2_3 = SendNUIMessage
          L3_3 = {}
          L3_3.type = "modelSwapError"
          L4_3 = _L
          L5_3 = "lua.errors.recording_not_found"
          L4_3 = L4_3(L5_3)
          L3_3.msg = L4_3
          L2_3(L3_3)
          return
        end
        L3_3 = L3_2
        L2_3 = L27_1
        L2_3 = L2_3[L3_3]
        if L2_3 then
          L3_3 = DoesEntityExist
          L4_3 = L2_3
          L3_3 = L3_3(L4_3)
          if L3_3 then
            L3_3 = DeleteEntity
            L4_3 = L2_3
            L3_3(L4_3)
          end
        end
        L3_3 = L5_2
        L1_3.pedModel = L3_3
        L4_3 = L3_2
        L3_3 = L27_1
        L3_3[L4_3] = nil
        L4_3 = L3_2
        L3_3 = L28_1
        L3_3[L4_3] = false
        L3_3 = spawnSinglePed
        L4_3 = L3_2
        L3_3(L4_3)
        L3_3 = 0
        while true do
          L5_3 = L3_2
          L4_3 = L27_1
          L4_3 = L4_3[L5_3]
          if L4_3 then
            L5_3 = L3_2
            L4_3 = L28_1
            L4_3 = L4_3[L5_3]
          end
          if not (L4_3 and L3_3 < 100) then
            break
          end
          L4_3 = Wait
          L5_3 = 50
          L4_3(L5_3)
          L3_3 = L3_3 + 1
        end
        L4_3 = previewPedAtFrame
        L5_3 = L5_1
        L4_3(L5_3)
        L4_3 = SendNUIMessage
        L5_3 = {}
        L5_3.type = "modelSwapDone"
        L6_3 = L4_2
        L5_3.newModel = L6_3
        L6_3 = L2_2
        L5_3.entityType = L6_3
        L6_3 = L3_2
        L5_3.recordingIdx = L6_3
        L4_3(L5_3)
      end
    end
    L1_3 = SetModelAsNoLongerNeeded
    L2_3 = L5_2
    L1_3(L2_3)
  end
  L6_2(L7_2)
  L6_2 = A1_2
  L7_2 = "ok"
  L6_2(L7_2)
end
L77_1(L78_1, L79_1)
L77_1 = RegisterNUICallback
L78_1 = "setVehicleRecTiming"
function L79_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = Config
  L2_2 = L2_2.DefaultFPS
  if not L2_2 then
    L2_2 = 30
  end
  L3_2 = A0_2.startFrame
  if not L3_2 then
    L3_2 = 0
  end
  L3_2 = L3_2 / L2_2
  L22_1 = L3_2
  L3_2 = A0_2.endFrame
  if L3_2 then
    L3_2 = A0_2.endFrame
    L3_2 = L3_2 / L2_2
    if L3_2 then
      goto lbl_22
    end
  end
  L3_2 = nil
  ::lbl_22::
  L23_1 = L3_2
  L3_2 = A0_2.trimInFrame
  if not L3_2 then
    L3_2 = 0
  end
  L3_2 = L3_2 / L2_2
  L24_1 = L3_2
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
end
L77_1(L78_1, L79_1)
L77_1 = RegisterNUICallback
L78_1 = "startSoloRecord"
function L79_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L40_1
  L2_2 = #L2_2
  L3_2 = L39_1
  if L2_2 >= L3_2 then
    L2_2 = SendNUIMessage
    L3_2 = {}
    L3_2.type = "toast"
    L4_2 = "Max "
    L5_2 = L39_1
    L6_2 = " overlay layers."
    L4_2 = L4_2 .. L5_2 .. L6_2
    L3_2.msg = L4_2
    L3_2.level = "error"
    L2_2(L3_2)
    L2_2 = A1_2
    L3_2 = "ok"
    L2_2(L3_2)
    return
  end
  L2_2 = closeUI
  L2_2()
  L2_2 = L20_1
  if L2_2 then
    L2_2 = TriggerServerEvent
    L3_2 = "core_cinematics:leaveBucket"
    L2_2(L3_2)
    L2_2 = false
    L20_1 = L2_2
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = SetEntityVisible
    L4_2 = L2_2
    L5_2 = true
    L6_2 = false
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = ResetEntityAlpha
    L4_2 = L2_2
    L3_2(L4_2)
    L3_2 = SetEntityCollision
    L4_2 = L2_2
    L5_2 = true
    L6_2 = true
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = SetEntityLocallyInvisible
    L4_2 = L2_2
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = SetLocalPlayerVisibleLocally
    L4_2 = true
    L3_2(L4_2)
  end
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3
    L0_3 = Wait
    L1_3 = 200
    L0_3(L1_3)
    L0_3 = startSoloRecording
    L0_3()
  end
  L2_2(L3_2)
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L77_1(L78_1, L79_1)
L77_1 = RegisterNUICallback
L78_1 = "soloRecordCountdownDone"
function L79_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L77_1(L78_1, L79_1)
L77_1 = RegisterNUICallback
L78_1 = "setOverlayTiming"
function L79_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Config
  L2_2 = L2_2.DefaultFPS
  if not L2_2 then
    L2_2 = 30
  end
  L3_2 = A0_2.layerIdx
  if L3_2 then
    L4_2 = L40_1
    L4_2 = L4_2[L3_2]
    if L4_2 then
      L4_2 = L40_1
      L4_2 = L4_2[L3_2]
      L5_2 = A0_2.startFrame
      if not L5_2 then
        L5_2 = 0
      end
      L5_2 = L5_2 / L2_2
      L4_2.startSec = L5_2
      L4_2 = L40_1
      L4_2 = L4_2[L3_2]
      L5_2 = A0_2.endFrame
      if L5_2 then
        L5_2 = A0_2.endFrame
        L5_2 = L5_2 / L2_2
        if L5_2 then
          goto lbl_33
        end
      end
      L5_2 = nil
      ::lbl_33::
      L4_2.endSec = L5_2
      L4_2 = L40_1
      L4_2 = L4_2[L3_2]
      L5_2 = A0_2.trimInFrame
      if not L5_2 then
        L5_2 = 0
      end
      L5_2 = L5_2 / L2_2
      L4_2.trimInSec = L5_2
    end
  end
  L4_2 = A1_2
  L5_2 = "ok"
  L4_2(L5_2)
end
L77_1(L78_1, L79_1)
L77_1 = RegisterNUICallback
L78_1 = "deleteOverlayLayer"
function L79_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2.layerIdx
  if L2_2 then
    L3_2 = L40_1
    L3_2 = L3_2[L2_2]
    if L3_2 then
      L3_2 = L40_1
      L3_2 = L3_2[L2_2]
      L4_2 = L3_2.vehicleSpawn
      if L4_2 then
        L4_2 = DoesEntityExist
        L5_2 = L3_2.vehicleSpawn
        L4_2 = L4_2(L5_2)
        if L4_2 then
          L4_2 = DeleteEntity
          L5_2 = L3_2.vehicleSpawn
          L4_2(L5_2)
        end
      end
      L4_2 = table
      L4_2 = L4_2.remove
      L5_2 = L40_1
      L6_2 = L2_2
      L4_2(L5_2, L6_2)
      L4_2 = ipairs
      L5_2 = L40_1
      L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
      for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
        L9_2.id = L8_2
      end
      L4_2 = sendOverlayLayersToJS
      L4_2()
    end
  end
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
end
L77_1(L78_1, L79_1)
function L77_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = L4_1
  L2_2 = #L2_2
  if L2_2 < 2 then
    L2_2 = SendNUIMessage
    L3_2 = {}
    L3_2.type = "playbackError"
    L4_2 = _L
    L5_2 = "lua.errors.need_two_keyframes"
    L4_2 = L4_2(L5_2)
    L3_2.msg = L4_2
    L2_2(L3_2)
    return
  end
  L2_2 = GetEntityCoords
  L3_2 = PlayerPedId
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L3_2()
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L3_2 = RemoveDecalsInRange
  L4_2 = L2_2.x
  L5_2 = L2_2.y
  L6_2 = L2_2.z
  L7_2 = 1000.0
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = table
  L3_2 = L3_2.sort
  L4_2 = L4_1
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.frame
    L3_3 = A1_3.frame
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L3_2(L4_2, L5_2)
  L3_2 = L4_1
  L4_2 = #L3_2
  L3_2 = L4_1
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.frame
  if A0_2 >= L3_2 then
    L3_2 = L4_1
    L3_2 = L3_2[1]
    A0_2 = L3_2.frame
  end
  L3_2 = 1
  L9_1 = L3_2
  L3_2 = 1
  L4_2 = L4_1
  L4_2 = #L4_2
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L4_1
    L7_2 = L7_2[L6_2]
    L7_2 = L7_2.frame
    if A0_2 >= L7_2 then
      L8_2 = L6_2 + 1
      L7_2 = L4_1
      L7_2 = L7_2[L8_2]
      L7_2 = L7_2.frame
      if A0_2 < L7_2 then
        L9_1 = L6_2
        break
      end
    end
  end
  L3_2 = L13_1.mode
  if "native" == L3_2 then
    L3_2 = ipairs
    L4_2 = L8_1
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      if L8_2 then
        L9_2 = DoesCamExist
        L10_2 = L8_2
        L9_2 = L9_2(L10_2)
        if L9_2 then
          L9_2 = DestroyCam
          L10_2 = L8_2
          L11_2 = false
          L9_2(L10_2, L11_2)
        end
      end
    end
    L3_2 = {}
    L8_1 = L3_2
    L3_2 = L9_1
    L4_2 = L4_1
    L4_2 = #L4_2
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = L4_1
      L7_2 = L7_2[L6_2]
      L8_2 = CreateCam
      L9_2 = "DEFAULT_SCRIPTED_CAMERA"
      L10_2 = false
      L8_2 = L8_2(L9_2, L10_2)
      L9_2 = SetCamCoord
      L10_2 = L8_2
      L11_2 = L7_2.pos
      L11_2 = L11_2.x
      L12_2 = L7_2.pos
      L12_2 = L12_2.y
      L13_2 = L7_2.pos
      L13_2 = L13_2.z
      L9_2(L10_2, L11_2, L12_2, L13_2)
      L9_2 = SetCamRot
      L10_2 = L8_2
      L11_2 = L7_2.rot
      L11_2 = L11_2.x
      L12_2 = L7_2.rot
      L12_2 = L12_2.y
      L13_2 = L7_2.rot
      L13_2 = L13_2.z
      L14_2 = 2
      L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
      L9_2 = SetCamFov
      L10_2 = L8_2
      L11_2 = fv
      L12_2 = L7_2.fov
      L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
      L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L8_1
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
    end
    L4_2 = L9_1
    L3_2 = L4_1
    L3_2 = L3_2[L4_2]
    L3_2 = L3_2.frame
    if A0_2 > L3_2 then
      L3_2 = interpolateKeyframes
      L4_2 = A0_2
      L3_2 = L3_2(L4_2)
      if L3_2 then
        L4_2 = SetCamCoord
        L5_2 = L8_1
        L5_2 = L5_2[1]
        L6_2 = L3_2.pos
        L6_2 = L6_2.x
        L7_2 = L3_2.pos
        L7_2 = L7_2.y
        L8_2 = L3_2.pos
        L8_2 = L8_2.z
        L4_2(L5_2, L6_2, L7_2, L8_2)
        L4_2 = SetCamRot
        L5_2 = L8_1
        L5_2 = L5_2[1]
        L6_2 = L3_2.rot
        L6_2 = L6_2.x
        L7_2 = L3_2.rot
        L7_2 = L7_2.y
        L8_2 = L3_2.rot
        L8_2 = L8_2.z
        L9_2 = 2
        L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
        L4_2 = SetCamFov
        L5_2 = L8_1
        L5_2 = L5_2[1]
        L6_2 = fv
        L7_2 = L3_2.fov
        L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L6_2(L7_2)
        L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      end
    end
    L3_2 = L3_1
    if L3_2 then
      L3_2 = DoesCamExist
      L4_2 = L3_1
      L3_2 = L3_2(L4_2)
      if L3_2 then
        L3_2 = SetCamActive
        L4_2 = L3_1
        L5_2 = false
        L3_2(L4_2, L5_2)
      end
    end
    L3_2 = SetCamActive
    L4_2 = L8_1
    L4_2 = L4_2[1]
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = RenderScriptCams
    L4_2 = true
    L5_2 = false
    L6_2 = 0
    L7_2 = true
    L8_2 = true
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    L3_2 = 1
    L10_1 = L3_2
    L4_2 = L9_1
    L3_2 = L4_1
    L3_2 = L3_2[L4_2]
    L4_2 = L9_1
    L5_2 = L4_2 + 1
    L4_2 = L4_1
    L4_2 = L4_2[L5_2]
    L5_2 = math
    L5_2 = L5_2.max
    L6_2 = 1
    L7_2 = math
    L7_2 = L7_2.floor
    L8_2 = L4_2.frame
    L8_2 = L8_2 - A0_2
    L9_2 = Config
    L9_2 = L9_2.DefaultFPS
    L8_2 = L8_2 / L9_2
    L8_2 = L8_2 * 1000
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L7_2(L8_2)
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L6_2 = L3_2.easing
    if "ease" ~= L6_2 then
      L6_2 = L3_2.easing
      if "easein" ~= L6_2 then
        L6_2 = L3_2.easing
        if "easeout" ~= L6_2 then
          goto lbl_231
        end
      end
    end
    L6_2 = 1
    ::lbl_231::
    if not L6_2 then
      L6_2 = 0
    end
    L7_2 = SetCamActiveWithInterp
    L8_2 = L8_1
    L8_2 = L8_2[2]
    L9_2 = L8_1
    L9_2 = L9_2[1]
    L10_2 = L5_2
    L11_2 = L6_2
    L12_2 = L6_2
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    L7_2 = GetGameTimer
    L7_2 = L7_2()
    L7_2 = L7_2 + L5_2
    L11_1 = L7_2
  else
    L3_2 = L12_1
    if L3_2 then
      L3_2 = DoesCamExist
      L4_2 = L12_1
      L3_2 = L3_2(L4_2)
      if L3_2 then
        L3_2 = DestroyCam
        L4_2 = L12_1
        L5_2 = false
        L3_2(L4_2, L5_2)
        L3_2 = nil
        L12_1 = L3_2
      end
    end
    L3_2 = interpolateKeyframes
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L4_2 = SetCamCoord
      L5_2 = L3_1
      L6_2 = L3_2.pos
      L6_2 = L6_2.x
      L7_2 = L3_2.pos
      L7_2 = L7_2.y
      L8_2 = L3_2.pos
      L8_2 = L8_2.z
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L4_2 = SetCamRot
      L5_2 = L3_1
      L6_2 = L3_2.rot
      L6_2 = L6_2.x
      L7_2 = L3_2.rot
      L7_2 = L7_2.y
      L8_2 = L3_2.rot
      L8_2 = L8_2.z
      L9_2 = 2
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
      L4_2 = SetCamFov
      L5_2 = L3_1
      L6_2 = fv
      L7_2 = L3_2.fov
      L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L6_2(L7_2)
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      L4_2 = applyEffects
      L5_2 = L3_2.effects
      if not L5_2 then
        L5_2 = {}
      end
      L6_2 = L3_1
      L4_2(L5_2, L6_2)
    else
      L4_2 = L4_1
      L4_2 = L4_2[1]
      L5_2 = SetCamCoord
      L6_2 = L3_1
      L7_2 = L4_2.pos
      L7_2 = L7_2.x
      L8_2 = L4_2.pos
      L8_2 = L8_2.y
      L9_2 = L4_2.pos
      L9_2 = L9_2.z
      L5_2(L6_2, L7_2, L8_2, L9_2)
      L5_2 = SetCamRot
      L6_2 = L3_1
      L7_2 = L4_2.rot
      L7_2 = L7_2.x
      L8_2 = L4_2.rot
      L8_2 = L8_2.y
      L9_2 = L4_2.rot
      L9_2 = L9_2.z
      L10_2 = 2
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
      L5_2 = SetCamFov
      L6_2 = L3_1
      L7_2 = fv
      L8_2 = L4_2.fov
      L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L7_2(L8_2)
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    end
    L4_2 = SetCamActive
    L5_2 = L3_1
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = RenderScriptCams
    L5_2 = true
    L6_2 = false
    L7_2 = 0
    L8_2 = true
    L9_2 = true
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  end
  L3_2 = true
  L1_1 = L3_2
  L5_1 = A0_2
  L3_2 = Config
  L3_2 = L3_2.DefaultFPS
  L3_2 = A0_2 / L3_2
  L6_1 = L3_2
  L3_2 = A1_2 or L3_2
  if not A1_2 then
    L3_2 = L7_1
  end
  L7_1 = L3_2
  L3_2 = 1
  L4_2 = L14_1
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L18_1
    L7_2[L6_2] = 1
  end
  L3_2 = 1
  L4_2 = L26_1
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L29_1
    L7_2[L6_2] = 1
  end
  L3_2 = ipairs
  L4_2 = L40_1
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L8_2.vehicleFrameIdx = 1
  end
  L3_2 = {}
  L30_1 = L3_2
  L3_2 = {}
  L31_1 = L3_2
  L3_2 = {}
  L32_1 = L3_2
  L3_2 = {}
  L33_1 = L3_2
  L3_2 = {}
  L34_1 = L3_2
  L3_2 = {}
  L35_1 = L3_2
  L3_2 = {}
  L36_1 = L3_2
  L3_2 = {}
  L37_1 = L3_2
  L3_2 = {}
  L38_1 = L3_2
  L3_2 = L14_1
  L3_2 = #L3_2
  if not (L3_2 > 0) then
    L3_2 = L26_1
    L3_2 = #L3_2
    if not (L3_2 > 0) then
      L3_2 = L40_1
      L3_2 = #L3_2
      if not (L3_2 > 0) then
        goto lbl_475
      end
    end
  end
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = GetEntityCoords
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = {}
  L6_2 = L4_2.x
  L5_2.x = L6_2
  L6_2 = L4_2.y
  L5_2.y = L6_2
  L6_2 = L4_2.z
  L5_2.z = L6_2
  L58_1 = L5_2
  L5_2 = GetEntityHeading
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  L59_1 = L5_2
  L5_2 = SetEntityLocallyInvisible
  L6_2 = L3_2
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = SetEntityCollision
  L6_2 = L3_2
  L7_2 = false
  L8_2 = false
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = SetEntityInvincible
  L6_2 = L3_2
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = FreezeEntityPosition
  L6_2 = L3_2
  L7_2 = false
  L5_2(L6_2, L7_2)
  L5_2 = GetVehiclePedIsIn
  L6_2 = L3_2
  L7_2 = false
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 and 0 ~= L5_2 then
    L6_2 = DoesEntityExist
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L60_1 = L5_2
      L6_2 = SetEntityCollision
      L7_2 = L5_2
      L8_2 = false
      L9_2 = false
      L6_2(L7_2, L8_2, L9_2)
      L6_2 = SetEntityInvincible
      L7_2 = L5_2
      L8_2 = true
      L6_2(L7_2, L8_2)
      L6_2 = SetEntityLocallyInvisible
      L7_2 = L5_2
      L8_2 = true
      L6_2(L7_2, L8_2)
    end
  end
  ::lbl_475::
  L3_2 = SetNuiFocus
  L4_2 = false
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = DisplayHud
  L4_2 = false
  L3_2(L4_2)
  L3_2 = DisplayRadar
  L4_2 = false
  L3_2(L4_2)
  L3_2 = SendNUIMessage
  L4_2 = {}
  L4_2.type = "playbackStarted"
  L3_2(L4_2)
end
startPlayback = L77_1
function L77_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = false
  L1_1 = L0_2
  L0_2 = pairs
  L1_2 = L25_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = DriftSmoke
    L6_2 = L6_2.stopPlayback
    L7_2 = L5_2
    L6_2(L7_2)
  end
  L0_2 = ipairs
  L1_2 = L40_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L5_2.driftSmoke
    if L6_2 then
      L6_2 = DriftSmoke
      L6_2 = L6_2.stopPlayback
      L7_2 = L5_2.driftSmoke
      L6_2(L7_2)
    end
  end
  L0_2 = L13_1.mode
  if "native" == L0_2 then
    L0_2 = ipairs
    L1_2 = L8_1
    L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
    for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
      if L5_2 then
        L6_2 = DoesCamExist
        L7_2 = L5_2
        L6_2 = L6_2(L7_2)
        if L6_2 then
          L6_2 = StopCamShaking
          L7_2 = L5_2
          L8_2 = true
          L6_2(L7_2, L8_2)
          L6_2 = DestroyCam
          L7_2 = L5_2
          L8_2 = false
          L6_2(L7_2, L8_2)
        end
      end
    end
    L0_2 = {}
    L8_1 = L0_2
  else
    L0_2 = L12_1
    if L0_2 then
      L0_2 = DoesCamExist
      L1_2 = L12_1
      L0_2 = L0_2(L1_2)
      if L0_2 then
        L0_2 = StopCamShaking
        L1_2 = L12_1
        L2_2 = true
        L0_2(L1_2, L2_2)
        L0_2 = DestroyCam
        L1_2 = L12_1
        L2_2 = false
        L0_2(L1_2, L2_2)
      end
    end
    L0_2 = nil
    L12_1 = L0_2
    L0_2 = L3_1
    if L0_2 then
      L0_2 = DoesCamExist
      L1_2 = L3_1
      L0_2 = L0_2(L1_2)
      if L0_2 then
        L0_2 = StopCamShaking
        L1_2 = L3_1
        L2_2 = true
        L0_2(L1_2, L2_2)
        L0_2 = SetCamUseShallowDofMode
        L1_2 = L3_1
        L2_2 = false
        L0_2(L1_2, L2_2)
      end
    end
  end
  L0_2 = 1
  L10_1 = L0_2
  L0_2 = L3_1
  if L0_2 then
    L0_2 = DoesCamExist
    L1_2 = L3_1
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = SetCamActive
      L1_2 = L3_1
      L2_2 = true
      L0_2(L1_2, L2_2)
      L0_2 = RenderScriptCams
      L1_2 = true
      L2_2 = false
      L3_2 = 0
      L4_2 = true
      L5_2 = true
      L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
    end
  end
  L0_2 = 1.0
  L57_1 = L0_2
  L0_2 = SetTimeScale
  L1_2 = 1.0
  L0_2(L1_2)
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.type = "fxClear"
  L0_2(L1_2)
  L0_2 = DisplayHud
  L1_2 = true
  L0_2(L1_2)
  L0_2 = DisplayRadar
  L1_2 = true
  L0_2(L1_2)
  L0_2 = ClearTimecycleModifier
  L0_2()
  L0_2 = SetNuiFocus
  L1_2 = true
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.type = "playbackStopped"
  L2_2 = L5_1
  L1_2.frame = L2_2
  L0_2(L1_2)
  L0_2 = L58_1
  if L0_2 then
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = SetEntityCoordsNoOffset
    L2_2 = L0_2
    L3_2 = L58_1.x
    L4_2 = L58_1.y
    L5_2 = L58_1.z
    L6_2 = false
    L7_2 = false
    L8_2 = false
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    L1_2 = SetEntityHeading
    L2_2 = L0_2
    L3_2 = L59_1
    if not L3_2 then
      L3_2 = 0.0
    end
    L1_2(L2_2, L3_2)
    L1_2 = SetEntityLocallyInvisible
    L2_2 = L0_2
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = SetEntityCollision
    L2_2 = L0_2
    L3_2 = true
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = SetEntityInvincible
    L2_2 = L0_2
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = nil
    L58_1 = L1_2
    L1_2 = nil
    L59_1 = L1_2
    L1_2 = L60_1
    if L1_2 then
      L1_2 = DoesEntityExist
      L2_2 = L60_1
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = SetEntityCollision
        L2_2 = L60_1
        L3_2 = true
        L4_2 = true
        L1_2(L2_2, L3_2, L4_2)
        L1_2 = SetEntityInvincible
        L2_2 = L60_1
        L3_2 = false
        L1_2(L2_2, L3_2)
        L1_2 = SetEntityLocallyInvisible
        L2_2 = L60_1
        L3_2 = false
        L1_2(L2_2, L3_2)
      end
    end
    L1_2 = nil
    L60_1 = L1_2
  end
  L0_2 = previewVehicleAtFrame
  L1_2 = L5_1
  L0_2(L1_2)
  L0_2 = previewPedAtFrame
  L1_2 = L5_1
  L0_2(L1_2)
  L0_2 = previewOverlayAtFrame
  L1_2 = L5_1
  L0_2(L1_2)
end
stopPlayback = L77_1
function L77_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L5_1 = A0_2
  L1_2 = L3_1
  if L1_2 then
    L1_2 = DoesCamExist
    L2_2 = L3_1
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  L1_2 = L13_1.mode
  if "spline" == L1_2 then
    L1_2 = interpolateKeyframesSpline
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_22
    end
  end
  L1_2 = interpolateKeyframes
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  ::lbl_22::
  if L1_2 then
    L2_2 = SetCamCoord
    L3_2 = L3_1
    L4_2 = L1_2.pos
    L4_2 = L4_2.x
    L5_2 = L1_2.pos
    L5_2 = L5_2.y
    L6_2 = L1_2.pos
    L6_2 = L6_2.z
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = SetCamRot
    L3_2 = L3_1
    L4_2 = L1_2.rot
    L4_2 = L4_2.x
    L5_2 = L1_2.rot
    L5_2 = L5_2.y
    L6_2 = L1_2.rot
    L6_2 = L6_2.z
    L7_2 = 2
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L2_2 = SetCamFov
    L3_2 = L3_1
    L4_2 = fv
    L5_2 = L1_2.fov
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    L2_2 = applyEffects
    L3_2 = L1_2.effects
    if not L3_2 then
      L3_2 = {}
    end
    L2_2(L3_2)
    L2_2 = L1_2.time
    if L2_2 then
      L2_2 = applyGameTime
      L3_2 = L1_2.time
      L2_2(L3_2)
    else
      L2_2 = L64_1.freezeTime
      if L2_2 then
        L2_2 = applyGameTime
        L3_2 = L64_1.time
        L2_2(L3_2)
      end
    end
    L2_2 = sendCoordsUpdate
    L2_2()
    L2_2 = updateCameraProp
    L2_2()
    L2_2 = L14_1
    L2_2 = #L2_2
    if not (L2_2 > 0) then
      L2_2 = L26_1
      L2_2 = #L2_2
      if not (L2_2 > 0) then
        goto lbl_94
      end
    end
    L2_2 = SetEntityCoordsNoOffset
    L3_2 = PlayerPedId
    L3_2 = L3_2()
    L4_2 = L1_2.pos
    L4_2 = L4_2.x
    L5_2 = L1_2.pos
    L5_2 = L5_2.y
    L6_2 = L1_2.pos
    L6_2 = L6_2.z
    L7_2 = false
    L8_2 = false
    L9_2 = false
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  end
  ::lbl_94::
  L2_2 = previewVehicleAtFrame
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = previewPedAtFrame
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = previewOverlayAtFrame
  L3_2 = A0_2
  L2_2(L3_2)
end
jumpToFrame = L77_1
function L77_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A1_2 - A0_2
  L3_2 = L3_2 * A2_2
  L3_2 = A0_2 + L3_2
  return L3_2
end
lerpVal = L77_1
function L77_1(A0_2)
  local L1_2
  L1_2 = A0_2 * A0_2
  L1_2 = L1_2 * A0_2
  return L1_2
end
easeIn = L77_1
function L77_1(A0_2)
  local L1_2, L2_2
  L1_2 = 1
  L1_2 = L1_2 - A0_2
  L2_2 = 1
  L2_2 = L2_2 - A0_2
  L1_2 = L1_2 * L2_2
  L2_2 = 1
  L2_2 = L2_2 - A0_2
  L1_2 = L1_2 * L2_2
  L2_2 = 1
  L1_2 = L2_2 - L1_2
  return L1_2
end
easeOut = L77_1
function L77_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2 * A0_2
  L2_2 = 2 * A0_2
  L3_2 = 3
  L2_2 = L3_2 - L2_2
  L1_2 = L1_2 * L2_2
  return L1_2
end
easeInOut = L77_1
function L77_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = vector3
  L4_2 = lerpVal
  L5_2 = A0_2.x
  L6_2 = A1_2.x
  L7_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = lerpVal
  L6_2 = A0_2.y
  L7_2 = A1_2.y
  L8_2 = A2_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = lerpVal
  L7_2 = A0_2.z
  L8_2 = A1_2.z
  L9_2 = A2_2
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2, L8_2, L9_2)
  return L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
lerpVec3 = L77_1
function L77_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A1_3 - A0_3
    L2_3 = L2_3 % 360
    L3_3 = 180
    if L2_3 > L3_3 then
      L2_3 = L2_3 - 360
    end
    L3_3 = A2_2
    L3_3 = L2_3 * L3_3
    L3_3 = A0_3 + L3_3
    return L3_3
  end
  shortest = L3_2
  L3_2 = vector3
  L4_2 = shortest
  L5_2 = A0_2.x
  L6_2 = A1_2.x
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = shortest
  L6_2 = A0_2.y
  L7_2 = A1_2.y
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = shortest
  L7_2 = A0_2.z
  L8_2 = A1_2.z
  L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
  return L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
lerpRot = L77_1
function L77_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  if not A0_2 then
    L3_2 = {}
    A0_2 = L3_2
  end
  if not A1_2 then
    L3_2 = {}
    A1_2 = L3_2
  end
  L3_2 = A0_2.dof
  if not L3_2 then
    L3_2 = {}
  end
  L4_2 = A1_2.dof
  if not L4_2 then
    L4_2 = {}
  end
  L5_2 = A0_2.shake
  if not L5_2 then
    L5_2 = {}
  end
  L6_2 = A1_2.shake
  if not L6_2 then
    L6_2 = {}
  end
  L7_2 = A0_2.filter
  if not L7_2 then
    L7_2 = {}
  end
  L8_2 = A1_2.filter
  if not L8_2 then
    L8_2 = {}
  end
  L9_2 = A0_2.fade
  if not L9_2 then
    L9_2 = {}
  end
  L10_2 = A1_2.fade
  if not L10_2 then
    L10_2 = {}
  end
  L11_2 = L9_2.type
  if not L11_2 then
    L11_2 = "none"
  end
  L12_2 = L10_2.type
  if not L12_2 then
    L12_2 = "none"
  end
  L13_2 = L11_2 or L13_2
  if "none" == L11_2 or not L11_2 then
    L13_2 = L12_2
  end
  L14_2 = L7_2.id
  if not L14_2 then
    L14_2 = "none"
  end
  L15_2 = L8_2.id
  if not L15_2 then
    L15_2 = "none"
  end
  L16_2 = L14_2 or L16_2
  if "none" == L14_2 or not L14_2 then
    L16_2 = L15_2
  end
  L17_2 = {}
  L18_2 = {}
  L19_2 = L5_2.type
  if not L19_2 then
    L19_2 = "none"
  end
  L18_2.type = L19_2
  L19_2 = lerpVal
  L20_2 = L5_2.amplitude
  if not L20_2 then
    L20_2 = 0
  end
  L21_2 = L6_2.amplitude
  if not L21_2 then
    L21_2 = 0
  end
  L22_2 = A2_2
  L19_2 = L19_2(L20_2, L21_2, L22_2)
  L18_2.amplitude = L19_2
  L17_2.shake = L18_2
  L18_2 = {}
  L19_2 = L3_2.enabled
  if not L19_2 then
    L19_2 = L4_2.enabled
    if not L19_2 then
      L19_2 = false
    end
  end
  L18_2.enabled = L19_2
  L19_2 = lerpVal
  L20_2 = L3_2.near
  if not L20_2 then
    L20_2 = 3.0
  end
  L21_2 = L4_2.near
  if not L21_2 then
    L21_2 = 3.0
  end
  L22_2 = A2_2
  L19_2 = L19_2(L20_2, L21_2, L22_2)
  L18_2.near = L19_2
  L19_2 = lerpVal
  L20_2 = L3_2.far
  if not L20_2 then
    L20_2 = 50
  end
  L21_2 = L4_2.far
  if not L21_2 then
    L21_2 = 50
  end
  L22_2 = A2_2
  L19_2 = L19_2(L20_2, L21_2, L22_2)
  L18_2.far = L19_2
  L19_2 = lerpVal
  L20_2 = L3_2.fNumber
  if not L20_2 then
    L20_2 = 1.2
  end
  L21_2 = L4_2.fNumber
  if not L21_2 then
    L21_2 = 1.2
  end
  L22_2 = A2_2
  L19_2 = L19_2(L20_2, L21_2, L22_2)
  L18_2.fNumber = L19_2
  L19_2 = lerpVal
  L20_2 = L3_2.strength
  if not L20_2 then
    L20_2 = 1.0
  end
  L21_2 = L4_2.strength
  if not L21_2 then
    L21_2 = 1.0
  end
  L22_2 = A2_2
  L19_2 = L19_2(L20_2, L21_2, L22_2)
  L18_2.strength = L19_2
  L17_2.dof = L18_2
  L18_2 = lerpVal
  L19_2 = A0_2.motionBlur
  if not L19_2 then
    L19_2 = 0
  end
  L20_2 = A1_2.motionBlur
  if not L20_2 then
    L20_2 = 0
  end
  L21_2 = A2_2
  L18_2 = L18_2(L19_2, L20_2, L21_2)
  L17_2.motionBlur = L18_2
  L18_2 = lerpVal
  L19_2 = A0_2.timeScale
  if not L19_2 then
    L19_2 = 1.0
  end
  L20_2 = A1_2.timeScale
  if not L20_2 then
    L20_2 = 1.0
  end
  L21_2 = A2_2
  L18_2 = L18_2(L19_2, L20_2, L21_2)
  L17_2.timeScale = L18_2
  L18_2 = {}
  L18_2.id = L16_2
  L19_2 = lerpVal
  L20_2 = L7_2.strength
  if not L20_2 then
    L20_2 = 1.0
  end
  L21_2 = L8_2.strength
  if not L21_2 then
    L21_2 = 1.0
  end
  L22_2 = A2_2
  L19_2 = L19_2(L20_2, L21_2, L22_2)
  L18_2.strength = L19_2
  L17_2.filter = L18_2
  L18_2 = {}
  L18_2.type = L13_2
  L19_2 = lerpVal
  L20_2 = L9_2.amount
  if not L20_2 then
    L20_2 = 0
  end
  L21_2 = L10_2.amount
  if not L21_2 then
    L21_2 = 0
  end
  L22_2 = A2_2
  L19_2 = L19_2(L20_2, L21_2, L22_2)
  L18_2.amount = L19_2
  L17_2.fade = L18_2
  L18_2 = lerpVal
  L19_2 = A0_2.letterbox
  if not L19_2 then
    L19_2 = 0
  end
  L20_2 = A1_2.letterbox
  if not L20_2 then
    L20_2 = 0
  end
  L21_2 = A2_2
  L18_2 = L18_2(L19_2, L20_2, L21_2)
  L17_2.letterbox = L18_2
  L18_2 = lerpVal
  L19_2 = A0_2.vignette
  if not L19_2 then
    L19_2 = 0
  end
  L20_2 = A1_2.vignette
  if not L20_2 then
    L20_2 = 0
  end
  L21_2 = A2_2
  L18_2 = L18_2(L19_2, L20_2, L21_2)
  L17_2.vignette = L18_2
  L18_2 = lerpVal
  L19_2 = A0_2.grain
  if not L19_2 then
    L19_2 = 0
  end
  L20_2 = A1_2.grain
  if not L20_2 then
    L20_2 = 0
  end
  L21_2 = A2_2
  L18_2 = L18_2(L19_2, L20_2, L21_2)
  L17_2.grain = L18_2
  return L17_2
end
lerpEffects = L77_1
function L77_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = L4_1
  L1_2 = #L1_2
  if 0 == L1_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = L4_1
  L1_2 = #L1_2
  if 1 == L1_2 then
    L1_2 = L4_1
    L1_2 = L1_2[1]
    L2_2 = L1_2.time
    if L2_2 then
      L2_2 = L1_2.time
      L2_2 = L2_2.enabled
      if L2_2 then
        L2_2 = L1_2.time
        L2_2 = L2_2.value
        if L2_2 then
          goto lbl_25
        end
      end
    end
    L2_2 = nil
    ::lbl_25::
    L3_2 = {}
    L4_2 = vector3
    L5_2 = L1_2.pos
    L5_2 = L5_2.x
    L6_2 = L1_2.pos
    L6_2 = L6_2.y
    L7_2 = L1_2.pos
    L7_2 = L7_2.z
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2.pos = L4_2
    L4_2 = vector3
    L5_2 = L1_2.rot
    L5_2 = L5_2.x
    L6_2 = L1_2.rot
    L6_2 = L6_2.y
    L7_2 = L1_2.rot
    L7_2 = L7_2.z
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2.rot = L4_2
    L4_2 = L1_2.fov
    L3_2.fov = L4_2
    L4_2 = L1_2.effects
    if not L4_2 then
      L4_2 = {}
    end
    L3_2.effects = L4_2
    L3_2.time = L2_2
    return L3_2
  end
  L1_2 = L4_1
  L2_2 = #L1_2
  L1_2 = L4_1
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.frame
  if A0_2 >= L1_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = L4_1
  L1_2 = L1_2[1]
  L1_2 = L1_2.frame
  if A0_2 < L1_2 then
    L1_2 = L4_1
    L1_2 = L1_2[1]
    L2_2 = L1_2.time
    if L2_2 then
      L2_2 = L1_2.time
      L2_2 = L2_2.enabled
      if L2_2 then
        L2_2 = L1_2.time
        L2_2 = L2_2.value
        if L2_2 then
          goto lbl_83
        end
      end
    end
    L2_2 = nil
    ::lbl_83::
    L3_2 = {}
    L4_2 = vector3
    L5_2 = L1_2.pos
    L5_2 = L5_2.x
    L6_2 = L1_2.pos
    L6_2 = L6_2.y
    L7_2 = L1_2.pos
    L7_2 = L7_2.z
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2.pos = L4_2
    L4_2 = vector3
    L5_2 = L1_2.rot
    L5_2 = L5_2.x
    L6_2 = L1_2.rot
    L6_2 = L6_2.y
    L7_2 = L1_2.rot
    L7_2 = L7_2.z
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2.rot = L4_2
    L4_2 = L1_2.fov
    L3_2.fov = L4_2
    L4_2 = L1_2.effects
    if not L4_2 then
      L4_2 = {}
    end
    L3_2.effects = L4_2
    L3_2.time = L2_2
    return L3_2
  end
  L1_2 = nil
  L2_2 = nil
  L3_2 = 1
  L4_2 = L4_1
  L4_2 = #L4_2
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L4_1
    L7_2 = L7_2[L6_2]
    L7_2 = L7_2.frame
    if A0_2 >= L7_2 then
      L8_2 = L6_2 + 1
      L7_2 = L4_1
      L7_2 = L7_2[L8_2]
      L7_2 = L7_2.frame
      if A0_2 < L7_2 then
        L7_2 = L4_1
        L1_2 = L7_2[L6_2]
        L8_2 = L6_2 + 1
        L7_2 = L4_1
        L2_2 = L7_2[L8_2]
        break
      end
    end
  end
  if not L1_2 then
    L3_2 = nil
    return L3_2
  end
  L3_2 = L2_2.frame
  L4_2 = L1_2.frame
  L3_2 = L3_2 - L4_2
  if L3_2 > 0 then
    L4_2 = L1_2.frame
    L4_2 = A0_2 - L4_2
    L4_2 = L4_2 / L3_2
    if L4_2 then
      goto lbl_159
    end
  end
  L4_2 = 0
  ::lbl_159::
  L5_2 = L1_2.easing
  if "cut" == L5_2 then
    L5_2 = L1_2.time
    if L5_2 then
      L5_2 = L1_2.time
      L5_2 = L5_2.enabled
      if L5_2 then
        L5_2 = L1_2.time
        L5_2 = L5_2.value
        if L5_2 then
          goto lbl_174
        end
      end
    end
    L5_2 = nil
    ::lbl_174::
    L6_2 = {}
    L7_2 = vector3
    L8_2 = L1_2.pos
    L8_2 = L8_2.x
    L9_2 = L1_2.pos
    L9_2 = L9_2.y
    L10_2 = L1_2.pos
    L10_2 = L10_2.z
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L6_2.pos = L7_2
    L7_2 = vector3
    L8_2 = L1_2.rot
    L8_2 = L8_2.x
    L9_2 = L1_2.rot
    L9_2 = L9_2.y
    L10_2 = L1_2.rot
    L10_2 = L10_2.z
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L6_2.rot = L7_2
    L7_2 = L1_2.fov
    L6_2.fov = L7_2
    L7_2 = L1_2.effects
    if not L7_2 then
      L7_2 = {}
    end
    L6_2.effects = L7_2
    L6_2.time = L5_2
    L7_2 = L1_2.effects
    if L7_2 then
      L7_2 = L1_2.effects
      L7_2 = L7_2.timeScale
      if L7_2 then
        goto lbl_211
      end
    end
    L7_2 = 1.0
    ::lbl_211::
    L6_2.timeScale = L7_2
    return L6_2
  end
  L5_2 = L1_2.easing
  if "ease" == L5_2 then
    L5_2 = easeInOut
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    L4_2 = L5_2
  else
    L5_2 = L1_2.easing
    if "easein" == L5_2 then
      L5_2 = easeIn
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      L4_2 = L5_2
    else
      L5_2 = L1_2.easing
      if "easeout" == L5_2 then
        L5_2 = easeOut
        L6_2 = L4_2
        L5_2 = L5_2(L6_2)
        L4_2 = L5_2
      end
    end
  end
  L5_2 = L1_2.time
  if L5_2 then
    L5_2 = L1_2.time
    L5_2 = L5_2.enabled
    if L5_2 then
      L5_2 = L1_2.time
      L5_2 = L5_2.value
      if L5_2 then
        goto lbl_248
      end
    end
  end
  L5_2 = nil
  ::lbl_248::
  L6_2 = L2_2.time
  if L6_2 then
    L6_2 = L2_2.time
    L6_2 = L6_2.enabled
    if L6_2 then
      L6_2 = L2_2.time
      L6_2 = L6_2.value
      if L6_2 then
        goto lbl_260
      end
    end
  end
  L6_2 = nil
  ::lbl_260::
  L7_2 = nil
  if L5_2 and L6_2 then
    L8_2 = lerpTime
    L9_2 = L5_2
    L10_2 = L6_2
    L11_2 = L4_2
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L7_2 = L8_2
  elseif L5_2 then
    L8_2 = lerpTime
    L9_2 = L5_2
    L10_2 = L64_1.time
    L11_2 = L4_2
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L7_2 = L8_2
  elseif L6_2 then
    L8_2 = lerpTime
    L9_2 = L64_1.time
    L10_2 = L6_2
    L11_2 = L4_2
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L7_2 = L8_2
  end
  L8_2 = lerpEffects
  L9_2 = L1_2.effects
  L10_2 = L2_2.effects
  L11_2 = L4_2
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L9_2 = {}
  L10_2 = lerpVec3
  L11_2 = vector3
  L12_2 = L1_2.pos
  L12_2 = L12_2.x
  L13_2 = L1_2.pos
  L13_2 = L13_2.y
  L14_2 = L1_2.pos
  L14_2 = L14_2.z
  L11_2 = L11_2(L12_2, L13_2, L14_2)
  L12_2 = vector3
  L13_2 = L2_2.pos
  L13_2 = L13_2.x
  L14_2 = L2_2.pos
  L14_2 = L14_2.y
  L15_2 = L2_2.pos
  L15_2 = L15_2.z
  L12_2 = L12_2(L13_2, L14_2, L15_2)
  L13_2 = L4_2
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  L9_2.pos = L10_2
  L10_2 = lerpRot
  L11_2 = vector3
  L12_2 = L1_2.rot
  L12_2 = L12_2.x
  L13_2 = L1_2.rot
  L13_2 = L13_2.y
  L14_2 = L1_2.rot
  L14_2 = L14_2.z
  L11_2 = L11_2(L12_2, L13_2, L14_2)
  L12_2 = vector3
  L13_2 = L2_2.rot
  L13_2 = L13_2.x
  L14_2 = L2_2.rot
  L14_2 = L14_2.y
  L15_2 = L2_2.rot
  L15_2 = L15_2.z
  L12_2 = L12_2(L13_2, L14_2, L15_2)
  L13_2 = L4_2
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  L9_2.rot = L10_2
  L10_2 = lerpVal
  L11_2 = L1_2.fov
  L12_2 = L2_2.fov
  L13_2 = L4_2
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  L9_2.fov = L10_2
  L9_2.effects = L8_2
  L9_2.time = L7_2
  L10_2 = L8_2.timeScale
  L9_2.timeScale = L10_2
  return L9_2
end
interpolateKeyframes = L77_1
function L77_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2
  L1_2 = L4_1
  L1_2 = #L1_2
  if 0 == L1_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = L4_1
  L1_2 = #L1_2
  if 1 == L1_2 then
    L1_2 = L4_1
    L1_2 = L1_2[1]
    L2_2 = L1_2.time
    if L2_2 then
      L2_2 = L1_2.time
      L2_2 = L2_2.enabled
      if L2_2 then
        L2_2 = L1_2.time
        L2_2 = L2_2.value
        if L2_2 then
          goto lbl_25
        end
      end
    end
    L2_2 = nil
    ::lbl_25::
    L3_2 = {}
    L4_2 = vector3
    L5_2 = L1_2.pos
    L5_2 = L5_2.x
    L6_2 = L1_2.pos
    L6_2 = L6_2.y
    L7_2 = L1_2.pos
    L7_2 = L7_2.z
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2.pos = L4_2
    L4_2 = vector3
    L5_2 = L1_2.rot
    L5_2 = L5_2.x
    L6_2 = L1_2.rot
    L6_2 = L6_2.y
    L7_2 = L1_2.rot
    L7_2 = L7_2.z
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2.rot = L4_2
    L4_2 = L1_2.fov
    L3_2.fov = L4_2
    L4_2 = L1_2.effects
    if not L4_2 then
      L4_2 = {}
    end
    L3_2.effects = L4_2
    L3_2.time = L2_2
    return L3_2
  end
  L1_2 = L4_1
  L2_2 = #L1_2
  L1_2 = L4_1
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.frame
  if A0_2 >= L1_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = L4_1
  L1_2 = L1_2[1]
  L1_2 = L1_2.frame
  if A0_2 < L1_2 then
    L1_2 = L4_1
    L1_2 = L1_2[1]
    L2_2 = L1_2.time
    if L2_2 then
      L2_2 = L1_2.time
      L2_2 = L2_2.enabled
      if L2_2 then
        L2_2 = L1_2.time
        L2_2 = L2_2.value
        if L2_2 then
          goto lbl_83
        end
      end
    end
    L2_2 = nil
    ::lbl_83::
    L3_2 = {}
    L4_2 = vector3
    L5_2 = L1_2.pos
    L5_2 = L5_2.x
    L6_2 = L1_2.pos
    L6_2 = L6_2.y
    L7_2 = L1_2.pos
    L7_2 = L7_2.z
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2.pos = L4_2
    L4_2 = vector3
    L5_2 = L1_2.rot
    L5_2 = L5_2.x
    L6_2 = L1_2.rot
    L6_2 = L6_2.y
    L7_2 = L1_2.rot
    L7_2 = L7_2.z
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2.rot = L4_2
    L4_2 = L1_2.fov
    L3_2.fov = L4_2
    L4_2 = L1_2.effects
    if not L4_2 then
      L4_2 = {}
    end
    L3_2.effects = L4_2
    L3_2.time = L2_2
    return L3_2
  end
  L1_2 = 1
  L2_2 = 1
  L3_2 = L4_1
  L3_2 = #L3_2
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L4_1
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.frame
    if A0_2 >= L6_2 then
      L7_2 = L5_2 + 1
      L6_2 = L4_1
      L6_2 = L6_2[L7_2]
      L6_2 = L6_2.frame
      if A0_2 < L6_2 then
        L1_2 = L5_2
        break
      end
    end
  end
  L2_2 = L4_1
  L2_2 = L2_2[L1_2]
  L4_2 = L1_2 + 1
  L3_2 = L4_1
  L3_2 = L3_2[L4_2]
  L4_2 = math
  L4_2 = L4_2.max
  L5_2 = 1
  L6_2 = L1_2 - 1
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_1
  L4_2 = L5_2[L4_2]
  L5_2 = math
  L5_2 = L5_2.min
  L6_2 = L4_1
  L6_2 = #L6_2
  L7_2 = L1_2 + 2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L4_1
  L5_2 = L6_2[L5_2]
  if L1_2 > 1 then
    L7_2 = L1_2 - 1
    L6_2 = L4_1
    L6_2 = L6_2[L7_2]
    L6_2 = L6_2.easing
    if "cut" == L6_2 then
      L4_2 = L2_2
    end
  end
  L6_2 = L3_2.easing
  if "cut" == L6_2 then
    L5_2 = L3_2
  end
  L6_2 = L3_2.frame
  L7_2 = L2_2.frame
  L6_2 = L6_2 - L7_2
  L7_2 = L3_2.frame
  L8_2 = L4_2.frame
  L7_2 = L7_2 - L8_2
  L8_2 = L5_2.frame
  L9_2 = L2_2.frame
  L8_2 = L8_2 - L9_2
  L9_2 = L13_1.tension
  L10_2 = 1.0
  L9_2 = L10_2 - L9_2
  if L7_2 > 0 then
    L10_2 = L9_2 * L6_2
    L10_2 = L10_2 / L7_2
    if L10_2 then
      goto lbl_198
    end
  end
  L10_2 = 0
  ::lbl_198::
  if L8_2 > 0 then
    L11_2 = L9_2 * L6_2
    L11_2 = L11_2 / L8_2
    if L11_2 then
      goto lbl_207
    end
  end
  L11_2 = 0
  ::lbl_207::
  function L12_2(A0_3, A1_3, A2_3, A3_3, A4_3, A5_3, A6_3, A7_3, A8_3)
    local L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3
    L9_3 = A3_3 - A0_3
    L10_3 = A4_3 - A1_3
    L11_3 = A5_3 - A2_3
    L12_3 = A6_3 - A3_3
    L13_3 = A7_3 - A4_3
    L14_3 = A8_3 - A5_3
    L15_3 = math
    L15_3 = L15_3.sqrt
    L16_3 = L9_3 * L9_3
    L17_3 = L10_3 * L10_3
    L16_3 = L16_3 + L17_3
    L17_3 = L11_3 * L11_3
    L16_3 = L16_3 + L17_3
    L15_3 = L15_3(L16_3)
    L16_3 = math
    L16_3 = L16_3.sqrt
    L17_3 = L12_3 * L12_3
    L18_3 = L13_3 * L13_3
    L17_3 = L17_3 + L18_3
    L18_3 = L14_3 * L14_3
    L17_3 = L17_3 + L18_3
    L16_3 = L16_3(L17_3)
    L17_3 = 0.01
    if not (L15_3 < L17_3) then
      L17_3 = 0.01
      if not (L16_3 < L17_3) then
        goto lbl_47
      end
    end
    L17_3 = 1.0
    do return L17_3 end
    ::lbl_47::
    L17_3 = math
    L17_3 = L17_3.max
    L18_3 = 0.0
    L19_3 = L9_3 * L12_3
    L20_3 = L10_3 * L13_3
    L19_3 = L19_3 + L20_3
    L20_3 = L11_3 * L14_3
    L19_3 = L19_3 + L20_3
    L20_3 = L15_3 * L16_3
    L19_3 = L19_3 / L20_3
    return L17_3(L18_3, L19_3)
  end
  angleFactor = L12_2
  L12_2 = angleFactor
  L13_2 = L4_2.pos
  L13_2 = L13_2.x
  L14_2 = L4_2.pos
  L14_2 = L14_2.y
  L15_2 = L4_2.pos
  L15_2 = L15_2.z
  L16_2 = L2_2.pos
  L16_2 = L16_2.x
  L17_2 = L2_2.pos
  L17_2 = L17_2.y
  L18_2 = L2_2.pos
  L18_2 = L18_2.z
  L19_2 = L3_2.pos
  L19_2 = L19_2.x
  L20_2 = L3_2.pos
  L20_2 = L20_2.y
  L21_2 = L3_2.pos
  L21_2 = L21_2.z
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L13_2 = angleFactor
  L14_2 = L2_2.pos
  L14_2 = L14_2.x
  L15_2 = L2_2.pos
  L15_2 = L15_2.y
  L16_2 = L2_2.pos
  L16_2 = L16_2.z
  L17_2 = L3_2.pos
  L17_2 = L17_2.x
  L18_2 = L3_2.pos
  L18_2 = L18_2.y
  L19_2 = L3_2.pos
  L19_2 = L19_2.z
  L20_2 = L5_2.pos
  L20_2 = L20_2.x
  L21_2 = L5_2.pos
  L21_2 = L21_2.y
  L22_2 = L5_2.pos
  L22_2 = L22_2.z
  L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L14_2 = L13_1.spring
  L15_2 = 1.0
  L15_2 = L15_2 - L12_2
  L15_2 = L15_2 * L14_2
  L15_2 = L12_2 + L15_2
  L15_2 = L10_2 * L15_2
  L16_2 = 1.0
  L16_2 = L16_2 - L13_2
  L16_2 = L16_2 * L14_2
  L16_2 = L13_2 + L16_2
  L16_2 = L11_2 * L16_2
  if L6_2 > 0 then
    L17_2 = L2_2.frame
    L17_2 = A0_2 - L17_2
    L17_2 = L17_2 / L6_2
    if L17_2 then
      goto lbl_278
    end
  end
  L17_2 = 0
  ::lbl_278::
  L18_2 = L2_2.easing
  if "cut" == L18_2 then
    L18_2 = L2_2.time
    if L18_2 then
      L18_2 = L2_2.time
      L18_2 = L18_2.enabled
      if L18_2 then
        L18_2 = L2_2.time
        L18_2 = L18_2.value
        if L18_2 then
          goto lbl_293
        end
      end
    end
    L18_2 = nil
    ::lbl_293::
    L19_2 = {}
    L20_2 = vector3
    L21_2 = L2_2.pos
    L21_2 = L21_2.x
    L22_2 = L2_2.pos
    L22_2 = L22_2.y
    L23_2 = L2_2.pos
    L23_2 = L23_2.z
    L20_2 = L20_2(L21_2, L22_2, L23_2)
    L19_2.pos = L20_2
    L20_2 = vector3
    L21_2 = L2_2.rot
    L21_2 = L21_2.x
    L22_2 = L2_2.rot
    L22_2 = L22_2.y
    L23_2 = L2_2.rot
    L23_2 = L23_2.z
    L20_2 = L20_2(L21_2, L22_2, L23_2)
    L19_2.rot = L20_2
    L20_2 = L2_2.fov
    L19_2.fov = L20_2
    L20_2 = L2_2.effects
    if not L20_2 then
      L20_2 = {}
    end
    L19_2.effects = L20_2
    L19_2.time = L18_2
    L20_2 = L2_2.effects
    if L20_2 then
      L20_2 = L2_2.effects
      L20_2 = L20_2.timeScale
      if L20_2 then
        goto lbl_330
      end
    end
    L20_2 = 1.0
    ::lbl_330::
    L19_2.timeScale = L20_2
    return L19_2
  end
  L18_2 = L17_2 * L17_2
  L19_2 = L18_2 * L17_2
  L20_2 = 2 * L19_2
  L21_2 = 3 * L18_2
  L20_2 = L20_2 - L21_2
  L20_2 = L20_2 + 1
  L21_2 = 2 * L18_2
  L21_2 = L19_2 - L21_2
  L21_2 = L21_2 + L17_2
  L22_2 = -2 * L19_2
  L23_2 = 3 * L18_2
  L22_2 = L22_2 + L23_2
  L23_2 = L19_2 - L18_2
  function L24_2(A0_3, A1_3, A2_3, A3_3)
    local L4_3, L5_3, L6_3, L7_3
    L4_3 = A2_3 - A0_3
    L5_3 = L15_2
    L4_3 = L4_3 * L5_3
    L5_3 = A3_3 - A1_3
    L6_3 = L16_2
    L5_3 = L5_3 * L6_3
    L6_3 = L20_2
    L6_3 = L6_3 * A1_3
    L7_3 = L21_2
    L7_3 = L7_3 * L4_3
    L6_3 = L6_3 + L7_3
    L7_3 = L22_2
    L7_3 = L7_3 * A2_3
    L6_3 = L6_3 + L7_3
    L7_3 = L23_2
    L7_3 = L7_3 * L5_3
    L6_3 = L6_3 + L7_3
    return L6_3
  end
  spline = L24_2
  function L24_2(A0_3, A1_3, A2_3, A3_3)
    local L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    function L4_3(A0_4, A1_4)
      local L2_4, L3_4
      L2_4 = A1_4 - A0_4
      L2_4 = L2_4 % 360
      L3_4 = 180
      if L2_4 > L3_4 then
        L2_4 = L2_4 - 360
      end
      L3_4 = A0_4 + L2_4
      return L3_4
    end
    unwrap = L4_3
    L4_3 = spline
    L5_3 = unwrap
    L6_3 = A1_3
    L7_3 = A0_3
    L5_3 = L5_3(L6_3, L7_3)
    L6_3 = A1_3
    L7_3 = unwrap
    L8_3 = A1_3
    L9_3 = A2_3
    L7_3 = L7_3(L8_3, L9_3)
    L8_3 = unwrap
    L9_3 = A1_3
    L10_3 = A3_3
    L8_3, L9_3, L10_3 = L8_3(L9_3, L10_3)
    return L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
  end
  splineRot = L24_2
  L24_2 = L2_2.time
  if L24_2 then
    L24_2 = L2_2.time
    L24_2 = L24_2.enabled
    if L24_2 then
      L24_2 = L2_2.time
      L24_2 = L24_2.value
      if L24_2 then
        goto lbl_374
      end
    end
  end
  L24_2 = nil
  ::lbl_374::
  L25_2 = L3_2.time
  if L25_2 then
    L25_2 = L3_2.time
    L25_2 = L25_2.enabled
    if L25_2 then
      L25_2 = L3_2.time
      L25_2 = L25_2.value
      if L25_2 then
        goto lbl_386
      end
    end
  end
  L25_2 = nil
  ::lbl_386::
  L26_2 = nil
  if L24_2 and L25_2 then
    L27_2 = lerpTime
    L28_2 = L24_2
    L29_2 = L25_2
    L30_2 = L17_2
    L27_2 = L27_2(L28_2, L29_2, L30_2)
    L26_2 = L27_2
  elseif L24_2 then
    L27_2 = lerpTime
    L28_2 = L24_2
    L29_2 = L64_1.time
    L30_2 = L17_2
    L27_2 = L27_2(L28_2, L29_2, L30_2)
    L26_2 = L27_2
  elseif L25_2 then
    L27_2 = lerpTime
    L28_2 = L64_1.time
    L29_2 = L25_2
    L30_2 = L17_2
    L27_2 = L27_2(L28_2, L29_2, L30_2)
    L26_2 = L27_2
  end
  L27_2 = lerpEffects
  L28_2 = L2_2.effects
  L29_2 = L3_2.effects
  L30_2 = L17_2
  L27_2 = L27_2(L28_2, L29_2, L30_2)
  L28_2 = {}
  L29_2 = vector3
  L30_2 = spline
  L31_2 = L4_2.pos
  L31_2 = L31_2.x
  L32_2 = L2_2.pos
  L32_2 = L32_2.x
  L33_2 = L3_2.pos
  L33_2 = L33_2.x
  L34_2 = L5_2.pos
  L34_2 = L34_2.x
  L30_2 = L30_2(L31_2, L32_2, L33_2, L34_2)
  L31_2 = spline
  L32_2 = L4_2.pos
  L32_2 = L32_2.y
  L33_2 = L2_2.pos
  L33_2 = L33_2.y
  L34_2 = L3_2.pos
  L34_2 = L34_2.y
  L35_2 = L5_2.pos
  L35_2 = L35_2.y
  L31_2 = L31_2(L32_2, L33_2, L34_2, L35_2)
  L32_2 = spline
  L33_2 = L4_2.pos
  L33_2 = L33_2.z
  L34_2 = L2_2.pos
  L34_2 = L34_2.z
  L35_2 = L3_2.pos
  L35_2 = L35_2.z
  L36_2 = L5_2.pos
  L36_2 = L36_2.z
  L32_2, L33_2, L34_2, L35_2, L36_2 = L32_2(L33_2, L34_2, L35_2, L36_2)
  L29_2 = L29_2(L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2)
  L28_2.pos = L29_2
  L29_2 = vector3
  L30_2 = splineRot
  L31_2 = L4_2.rot
  L31_2 = L31_2.x
  L32_2 = L2_2.rot
  L32_2 = L32_2.x
  L33_2 = L3_2.rot
  L33_2 = L33_2.x
  L34_2 = L5_2.rot
  L34_2 = L34_2.x
  L30_2 = L30_2(L31_2, L32_2, L33_2, L34_2)
  L31_2 = splineRot
  L32_2 = L4_2.rot
  L32_2 = L32_2.y
  L33_2 = L2_2.rot
  L33_2 = L33_2.y
  L34_2 = L3_2.rot
  L34_2 = L34_2.y
  L35_2 = L5_2.rot
  L35_2 = L35_2.y
  L31_2 = L31_2(L32_2, L33_2, L34_2, L35_2)
  L32_2 = splineRot
  L33_2 = L4_2.rot
  L33_2 = L33_2.z
  L34_2 = L2_2.rot
  L34_2 = L34_2.z
  L35_2 = L3_2.rot
  L35_2 = L35_2.z
  L36_2 = L5_2.rot
  L36_2 = L36_2.z
  L32_2, L33_2, L34_2, L35_2, L36_2 = L32_2(L33_2, L34_2, L35_2, L36_2)
  L29_2 = L29_2(L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2)
  L28_2.rot = L29_2
  L29_2 = spline
  L30_2 = L4_2.fov
  L31_2 = L2_2.fov
  L32_2 = L3_2.fov
  L33_2 = L5_2.fov
  L29_2 = L29_2(L30_2, L31_2, L32_2, L33_2)
  L28_2.fov = L29_2
  L28_2.effects = L27_2
  L28_2.time = L26_2
  L29_2 = L27_2.timeScale
  L28_2.timeScale = L29_2
  return L28_2
end
interpolateKeyframesSpline = L77_1
L77_1 = "none"
L78_1 = false
function L79_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if not A1_2 then
    A1_2 = L3_1
  end
  if A1_2 then
    L2_2 = DoesCamExist
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L2_2 = A0_2.shake
  if not L2_2 then
    L2_2 = {}
  end
  L3_2 = L2_2.type
  if L3_2 then
    L3_2 = L2_2.type
    if "none" ~= L3_2 then
      L3_2 = L2_2.amplitude
      if not L3_2 then
        L3_2 = 0
      end
      if L3_2 > 0 then
        L3_2 = ShakeCam
        L4_2 = A1_2
        L5_2 = L2_2.type
        L6_2 = L2_2.amplitude
        L3_2(L4_2, L5_2, L6_2)
    end
  end
  else
    L3_2 = StopCamShaking
    L4_2 = A1_2
    L5_2 = true
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2.dof
  if not L3_2 then
    L3_2 = {}
  end
  L4_2 = L3_2.enabled
  if L4_2 then
    L4_2 = true
    L78_1 = L4_2
    L4_2 = SetCamUseShallowDofMode
    L5_2 = A1_2
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = SetCamNearDof
    L5_2 = A1_2
    L6_2 = fv
    L7_2 = L3_2.near
    if not L7_2 then
      L7_2 = 3.0
    end
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L6_2(L7_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    L4_2 = SetCamFarDof
    L5_2 = A1_2
    L6_2 = fv
    L7_2 = L3_2.far
    if not L7_2 then
      L7_2 = 50.0
    end
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L6_2(L7_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    L4_2 = SetCamDofFnumberOfLens
    L5_2 = A1_2
    L6_2 = fv
    L7_2 = L3_2.fNumber
    if not L7_2 then
      L7_2 = 1.2
    end
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L6_2(L7_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    L4_2 = SetCamDofStrength
    L5_2 = A1_2
    L6_2 = fv
    L7_2 = L3_2.strength
    if not L7_2 then
      L7_2 = 1.0
    end
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L6_2(L7_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  else
    L4_2 = false
    L78_1 = L4_2
    L4_2 = SetCamUseShallowDofMode
    L5_2 = A1_2
    L6_2 = false
    L4_2(L5_2, L6_2)
  end
  L4_2 = SetCamMotionBlurStrength
  L5_2 = A1_2
  L6_2 = A0_2.motionBlur
  if not L6_2 then
    L6_2 = 0.0
  end
  L4_2(L5_2, L6_2)
  L4_2 = A0_2.filter
  if L4_2 then
    L4_2 = A0_2.filter
    L4_2 = L4_2.id
    if L4_2 then
      goto lbl_111
    end
  end
  L4_2 = "none"
  ::lbl_111::
  L5_2 = L77_1
  if L4_2 ~= L5_2 then
    L77_1 = L4_2
    if "none" == L4_2 then
      L5_2 = ClearTimecycleModifier
      L5_2()
    else
      L5_2 = ipairs
      L6_2 = Config
      L6_2 = L6_2.ColorFilters
      L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
      for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
        L11_2 = L10_2.id
        if L11_2 == L4_2 then
          L11_2 = SetTimecycleModifier
          L12_2 = L10_2.timecycle
          L11_2(L12_2)
          L11_2 = SetTimecycleModifierStrength
          L12_2 = A0_2.filter
          L12_2 = L12_2.strength
          if not L12_2 then
            L12_2 = 1.0
          end
          L11_2(L12_2)
          break
        end
      end
    end
  elseif "none" ~= L4_2 then
    L5_2 = A0_2.filter
    if L5_2 then
      L5_2 = SetTimecycleModifierStrength
      L6_2 = A0_2.filter
      L6_2 = L6_2.strength
      if not L6_2 then
        L6_2 = 1.0
      end
      L5_2(L6_2)
    end
  end
  L5_2 = A0_2.fade
  if not L5_2 then
    L5_2 = {}
  end
  L6_2 = L5_2.amount
  if L6_2 then
    L6_2 = L5_2.amount
    if L6_2 > 0 then
      goto lbl_184
    end
  end
  L6_2 = A0_2.vignette
  if L6_2 then
    L6_2 = A0_2.vignette
    if L6_2 > 0 then
      goto lbl_184
    end
  end
  L6_2 = A0_2.letterbox
  if L6_2 then
    L6_2 = A0_2.letterbox
    if L6_2 > 0 then
      goto lbl_184
    end
  end
  L6_2 = A0_2.grain
  if L6_2 then
    L6_2 = A0_2.grain
    ::lbl_184::
    if L6_2 > 0 then
      L6_2 = SendNUIMessage
      L7_2 = {}
      L7_2.type = "fxUpdate"
      L8_2 = L5_2.type
      if not L8_2 then
        L8_2 = "none"
      end
      L7_2.fadeType = L8_2
      L8_2 = L5_2.amount
      if not L8_2 then
        L8_2 = 0
      end
      L7_2.fadeAmount = L8_2
      L8_2 = A0_2.vignette
      if not L8_2 then
        L8_2 = 0
      end
      L7_2.vignette = L8_2
      L8_2 = A0_2.letterbox
      if not L8_2 then
        L8_2 = 0
      end
      L7_2.letterbox = L8_2
      L8_2 = A0_2.grain
      if not L8_2 then
        L8_2 = 0
      end
      L7_2.grain = L8_2
      L6_2(L7_2)
  end
  else
    L6_2 = SendNUIMessage
    L7_2 = {}
    L7_2.type = "fxClear"
    L6_2(L7_2)
  end
end
applyEffects = L79_1
function L79_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = L3_1
  if L0_2 then
    L0_2 = DoesCamExist
    L1_2 = L3_1
    L0_2 = L0_2(L1_2)
    if L0_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L0_2 = GetCamCoord
  L1_2 = L3_1
  L0_2 = L0_2(L1_2)
  L1_2 = GetCamRot
  L2_2 = L3_1
  L3_2 = 2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = GetCamFov
  L3_2 = L3_1
  L2_2 = L2_2(L3_2)
  L3_2 = SendNUIMessage
  L4_2 = {}
  L4_2.type = "coordsUpdate"
  L5_2 = {}
  L6_2 = L0_2.x
  L5_2.x = L6_2
  L6_2 = L0_2.y
  L5_2.y = L6_2
  L6_2 = L0_2.z
  L5_2.z = L6_2
  L4_2.pos = L5_2
  L5_2 = {}
  L6_2 = L1_2.x
  L5_2.x = L6_2
  L6_2 = L1_2.y
  L5_2.y = L6_2
  L6_2 = L1_2.z
  L5_2.z = L6_2
  L4_2.rot = L5_2
  L4_2.fov = L2_2
  L3_2(L4_2)
end
sendCoordsUpdate = L79_1
L79_1 = Citizen
L79_1 = L79_1.CreateThread
function L80_1()
  local L0_2, L1_2
  while true do
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 150
    L0_2(L1_2)
    L0_2 = L0_1
    if L0_2 then
      L0_2 = L2_1
      if not L0_2 then
        L0_2 = L1_1
        if not L0_2 then
          L0_2 = sendCoordsUpdate
          L0_2()
        end
      end
    end
  end
end
L79_1(L80_1)
L79_1 = Citizen
L79_1 = L79_1.CreateThread
function L80_1()
  local L0_2, L1_2, L2_2
  while true do
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 500
    L0_2(L1_2)
    L0_2 = L0_1
    if L0_2 then
      L0_2 = L64_1.freezeTime
      if L0_2 then
        L0_2 = L1_1
        if not L0_2 then
          L0_2 = interpolateKeyframes
          L1_2 = L5_1
          L0_2 = L0_2(L1_2)
          if L0_2 then
            L1_2 = L0_2.time
            if L1_2 then
              goto lbl_25
            end
          end
          L1_2 = applyGameTime
          L2_2 = L64_1.time
          L1_2(L2_2)
        end
      end
    end
    ::lbl_25::
  end
end
L79_1(L80_1)
L79_1 = false
L80_1 = Citizen
L80_1 = L80_1.CreateThread
function L81_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  while true do
    L0_2 = L20_1
    if L0_2 then
      L0_2 = PlayerPedId
      L0_2 = L0_2()
      L1_2 = FreezeEntityPosition
      L2_2 = L0_2
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = true
      L79_1 = L1_2
      L1_2 = SetEntityVisible
      L2_2 = L0_2
      L3_2 = false
      L4_2 = false
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = SetEntityAlpha
      L2_2 = L0_2
      L3_2 = 0
      L4_2 = false
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = SetEntityCollision
      L2_2 = L0_2
      L3_2 = false
      L4_2 = false
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = SetLocalPlayerVisibleLocally
      L2_2 = false
      L1_2(L2_2)
      L1_2 = SetEntityLocallyInvisible
      L2_2 = L0_2
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = Wait
      L2_2 = 0
      L1_2(L2_2)
    else
      L0_2 = L79_1
      if L0_2 then
        L0_2 = PlayerPedId
        L0_2 = L0_2()
        L1_2 = FreezeEntityPosition
        L2_2 = L0_2
        L3_2 = false
        L1_2(L2_2, L3_2)
        L1_2 = false
        L79_1 = L1_2
      end
      L0_2 = Wait
      L1_2 = 250
      L0_2(L1_2)
    end
  end
end
L80_1(L81_1)
L80_1 = Citizen
L80_1 = L80_1.CreateThread
function L81_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = nil
  while true do
    L1_2 = Wait
    L2_2 = 1000
    L1_2(L2_2)
    L1_2 = L0_1
    if L1_2 then
      L1_2 = L3_1
      if L1_2 then
        L1_2 = DoesCamExist
        L2_2 = L3_1
        L1_2 = L1_2(L2_2)
        if L1_2 then
          L1_2 = GetCamCoord
          L2_2 = L3_1
          L1_2 = L1_2(L2_2)
          L2_2 = GetEntityCoords
          L3_2 = PlayerPedId
          L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L3_2()
          L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
          L3_2 = L1_2 - L2_2
          L3_2 = #L3_2
          if L0_2 then
            L4_2 = L1_2 - L0_2
            L4_2 = #L4_2
            if L4_2 then
              goto lbl_34
            end
          end
          L4_2 = 999.0
          ::lbl_34::
          L5_2 = 200.0
          if L3_2 > L5_2 then
            L5_2 = 150.0
            if L4_2 > L5_2 then
              L5_2 = Wait
              L6_2 = 500
              L5_2(L6_2)
              L5_2 = RequestCollisionAtCoord
              L6_2 = L1_2.x
              L7_2 = L1_2.y
              L8_2 = L1_2.z
              L5_2(L6_2, L7_2, L8_2)
              L5_2 = NewLoadSceneStart
              L6_2 = L1_2.x
              L7_2 = L1_2.y
              L8_2 = L1_2.z
              L9_2 = L1_2.x
              L10_2 = L1_2.y
              L11_2 = L1_2.z
              L12_2 = 200.0
              L13_2 = 0
              L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
              L0_2 = L1_2
            end
          end
        end
      end
    end
  end
end
L80_1(L81_1)
L80_1 = Citizen
L80_1 = L80_1.CreateThread
function L81_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2
  while true do
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 0
    L0_2(L1_2)
    L0_2 = L1_1
    if L0_2 then
      L0_2 = L57_1
      if 1.0 ~= L0_2 then
        L0_2 = SetTimeScale
        L1_2 = L57_1
        L0_2(L1_2)
      end
    end
    L0_2 = GetFrameTime
    L0_2 = L0_2()
    L1_2 = L78_1
    if L1_2 then
      L1_2 = SetUseHiDof
      L1_2()
    end
    L1_2 = L0_1
    if L1_2 then
      L1_2 = L64_1.weatherOverride
      if L1_2 then
        L1_2 = SetOverrideWeather
        L2_2 = L64_1.weather
        L1_2(L2_2)
      else
        L1_2 = ClearOverrideWeather
        L1_2()
      end
      L1_2 = SetRainLevel
      L2_2 = L64_1.rainEnabled
      if L2_2 then
        L2_2 = L64_1.rainLevel
        if L2_2 then
          goto lbl_41
        end
      end
      L2_2 = 0.0
      ::lbl_41::
      L1_2(L2_2)
      L1_2 = SetWindSpeed
      L2_2 = L64_1.windSpeed
      L1_2(L2_2)
      L1_2 = SetArtificialLightsState
      L2_2 = L64_1.cityLights
      L1_2(L2_2)
    end
    L1_2 = L50_1
    if L1_2 then
      L1_2 = DoesEntityExist
      L2_2 = L50_1
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = L0_1
        if not L1_2 then
          L1_2 = L1_1
          if not L1_2 then
            goto lbl_68
          end
        end
        L1_2 = SetEntityAlpha
        L2_2 = L50_1
        L3_2 = 0
        L4_2 = false
        L1_2(L2_2, L3_2, L4_2)
        goto lbl_71
        ::lbl_68::
        L1_2 = ResetEntityAlpha
        L2_2 = L50_1
        L1_2(L2_2)
      end
    end
    ::lbl_71::
    L1_2 = L0_1
    if not L1_2 then
      L1_2 = L51_1
      if L1_2 then
        L1_2 = L4_1
        L1_2 = #L1_2
        if L1_2 >= 2 then
          L1_2 = drawKeyframePath
          L1_2()
        end
      end
    end
    L1_2 = Config
    L1_2 = L1_2.PathDrawDistance
    if not L1_2 then
      L1_2 = 150.0
    end
    L2_2 = L1_2 * L1_2
    L3_2 = GetEntityCoords
    L4_2 = PlayerPedId
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2 = L4_2()
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2)
    L4_2 = pairs
    L5_2 = L54_1
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = L0_1
      if not L10_2 then
        L10_2 = L9_2.path
        if L10_2 then
          L10_2 = L9_2.path
          L10_2 = #L10_2
          if L10_2 >= 2 then
            L10_2 = 1
            L11_2 = L9_2.path
            L11_2 = #L11_2
            L11_2 = L11_2 - 1
            L12_2 = 1
            for L13_2 = L10_2, L11_2, L12_2 do
              L14_2 = L9_2.path
              L14_2 = L14_2[L13_2]
              L15_2 = L9_2.path
              L16_2 = L13_2 + 1
              L15_2 = L15_2[L16_2]
              L16_2 = L14_2.x
              L17_2 = L3_2.x
              L16_2 = L16_2 - L17_2
              L17_2 = L14_2.y
              L18_2 = L3_2.y
              L17_2 = L17_2 - L18_2
              L18_2 = L14_2.z
              L19_2 = L3_2.z
              L18_2 = L18_2 - L19_2
              L19_2 = L15_2.x
              L20_2 = L3_2.x
              L19_2 = L19_2 - L20_2
              L20_2 = L15_2.y
              L21_2 = L3_2.y
              L20_2 = L20_2 - L21_2
              L21_2 = L15_2.z
              L22_2 = L3_2.z
              L21_2 = L21_2 - L22_2
              L22_2 = L16_2 * L16_2
              L23_2 = L17_2 * L17_2
              L22_2 = L22_2 + L23_2
              L23_2 = L18_2 * L18_2
              L22_2 = L22_2 + L23_2
              if not (L2_2 >= L22_2) then
                L22_2 = L19_2 * L19_2
                L23_2 = L20_2 * L20_2
                L22_2 = L22_2 + L23_2
                L23_2 = L21_2 * L21_2
                L22_2 = L22_2 + L23_2
                if not (L2_2 >= L22_2) then
                  goto lbl_181
                end
              end
              L22_2 = DrawLine
              L23_2 = L14_2.x
              L24_2 = L14_2.y
              L25_2 = L14_2.z
              L26_2 = L15_2.x
              L27_2 = L15_2.y
              L28_2 = L15_2.z
              L29_2 = 220
              L30_2 = 50
              L31_2 = 50
              L32_2 = 200
              L22_2(L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
              ::lbl_181::
            end
            L10_2 = ipairs
            L11_2 = L9_2.path
            L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
            for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
              L16_2 = L15_2.x
              L17_2 = L3_2.x
              L16_2 = L16_2 - L17_2
              L17_2 = L15_2.y
              L18_2 = L3_2.y
              L17_2 = L17_2 - L18_2
              L18_2 = L15_2.z
              L19_2 = L3_2.z
              L18_2 = L18_2 - L19_2
              L19_2 = L16_2 * L16_2
              L20_2 = L17_2 * L17_2
              L19_2 = L19_2 + L20_2
              L20_2 = L18_2 * L18_2
              L19_2 = L19_2 + L20_2
              if L2_2 >= L19_2 then
                L19_2 = DrawMarker
                L20_2 = 28
                L21_2 = L15_2.x
                L22_2 = L15_2.y
                L23_2 = L15_2.z
                L24_2 = 0
                L25_2 = 0
                L26_2 = 0
                L27_2 = 0
                L28_2 = 0
                L29_2 = 0
                L30_2 = 0.15
                L31_2 = 0.15
                L32_2 = 0.15
                L33_2 = 245
                L34_2 = 200
                L35_2 = 60
                L36_2 = 200
                L37_2 = false
                L38_2 = true
                L39_2 = 2
                L40_2 = false
                L41_2 = nil
                L42_2 = nil
                L43_2 = false
                L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2)
              end
            end
          end
        end
      end
      L10_2 = L9_2.prop
      if L10_2 then
        L10_2 = DoesEntityExist
        L11_2 = L9_2.prop
        L10_2 = L10_2(L11_2)
        if L10_2 then
          L10_2 = L9_2.matrix
          if L10_2 then
            L10_2 = L9_2.matrix
            L11_2 = SetEntityMatrix
            L12_2 = L9_2.prop
            L13_2 = vector3
            L14_2 = L10_2.fx
            L15_2 = L10_2.fy
            L16_2 = L10_2.fz
            L13_2 = L13_2(L14_2, L15_2, L16_2)
            L14_2 = vector3
            L15_2 = L10_2.rx
            L16_2 = L10_2.ry
            L17_2 = L10_2.rz
            L14_2 = L14_2(L15_2, L16_2, L17_2)
            L15_2 = vector3
            L16_2 = L10_2.ux
            L17_2 = L10_2.uy
            L18_2 = L10_2.uz
            L15_2 = L15_2(L16_2, L17_2, L18_2)
            L16_2 = vector3
            L17_2 = L10_2.px
            L18_2 = L10_2.py
            L19_2 = L10_2.pz
            L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2 = L16_2(L17_2, L18_2, L19_2)
            L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2)
          end
        end
      end
    end
    L4_2 = L2_1
    if L4_2 then
      L4_2 = L3_1
      if L4_2 then
        L4_2 = DoesCamExist
        L5_2 = L3_1
        L4_2 = L4_2(L5_2)
        if L4_2 then
          L4_2 = RenderScriptCams
          L5_2 = true
          L6_2 = false
          L7_2 = 0
          L8_2 = true
          L9_2 = true
          L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
          L4_2 = DisableAllControlActions
          L5_2 = 0
          L4_2(L5_2)
          L4_2 = IsDisabledControlPressed
          L5_2 = 0
          L6_2 = 21
          L4_2 = L4_2(L5_2, L6_2)
          if L4_2 then
            L5_2 = Config
            L5_2 = L5_2.MoveSpeedFast
            if L5_2 then
              goto lbl_315
            end
            L5_2 = 60.0
            if L5_2 then
              goto lbl_315
            end
          end
          L5_2 = Config
          L5_2 = L5_2.MoveSpeed
          if not L5_2 then
            L5_2 = 12.0
          end
          ::lbl_315::
          L5_2 = L5_2 * L0_2
          if L4_2 then
            L6_2 = Config
            L6_2 = L6_2.RotateSpeedFast
            if L6_2 then
              goto lbl_331
            end
            L6_2 = 8.0
            if L6_2 then
              goto lbl_331
            end
          end
          L6_2 = Config
          L6_2 = L6_2.RotateSpeed
          if not L6_2 then
            L6_2 = 3.0
          end
          ::lbl_331::
          L7_2 = GetCamRot
          L8_2 = L3_1
          L9_2 = 2
          L7_2 = L7_2(L8_2, L9_2)
          L8_2 = math
          L8_2 = L8_2.rad
          L9_2 = L7_2.x
          L8_2 = L8_2(L9_2)
          L9_2 = math
          L9_2 = L9_2.rad
          L10_2 = L7_2.z
          L9_2 = L9_2(L10_2)
          L10_2 = vector3
          L11_2 = math
          L11_2 = L11_2.sin
          L12_2 = L9_2
          L11_2 = L11_2(L12_2)
          L11_2 = -L11_2
          L12_2 = math
          L12_2 = L12_2.cos
          L13_2 = L8_2
          L12_2 = L12_2(L13_2)
          L11_2 = L11_2 * L12_2
          L12_2 = math
          L12_2 = L12_2.cos
          L13_2 = L9_2
          L12_2 = L12_2(L13_2)
          L13_2 = math
          L13_2 = L13_2.cos
          L14_2 = L8_2
          L13_2 = L13_2(L14_2)
          L12_2 = L12_2 * L13_2
          L13_2 = math
          L13_2 = L13_2.sin
          L14_2 = L8_2
          L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2 = L13_2(L14_2)
          L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2)
          L11_2 = vector3
          L12_2 = math
          L12_2 = L12_2.cos
          L13_2 = L9_2
          L12_2 = L12_2(L13_2)
          L13_2 = math
          L13_2 = L13_2.sin
          L14_2 = L9_2
          L13_2 = L13_2(L14_2)
          L14_2 = 0
          L11_2 = L11_2(L12_2, L13_2, L14_2)
          L12_2 = vector3
          L13_2 = 0
          L14_2 = 0
          L15_2 = 1
          L12_2 = L12_2(L13_2, L14_2, L15_2)
          L13_2 = GetCamCoord
          L14_2 = L3_1
          L13_2 = L13_2(L14_2)
          L14_2 = false
          L15_2 = IsDisabledControlPressed
          L16_2 = 0
          L17_2 = 32
          L15_2 = L15_2(L16_2, L17_2)
          if L15_2 then
            L15_2 = L10_2 * L5_2
            L13_2 = L13_2 + L15_2
            L14_2 = true
          end
          L15_2 = IsDisabledControlPressed
          L16_2 = 0
          L17_2 = 33
          L15_2 = L15_2(L16_2, L17_2)
          if L15_2 then
            L15_2 = L10_2 * L5_2
            L13_2 = L13_2 - L15_2
            L14_2 = true
          end
          L15_2 = IsDisabledControlPressed
          L16_2 = 0
          L17_2 = 34
          L15_2 = L15_2(L16_2, L17_2)
          if L15_2 then
            L15_2 = L11_2 * L5_2
            L13_2 = L13_2 - L15_2
            L14_2 = true
          end
          L15_2 = IsDisabledControlPressed
          L16_2 = 0
          L17_2 = 35
          L15_2 = L15_2(L16_2, L17_2)
          if L15_2 then
            L15_2 = L11_2 * L5_2
            L13_2 = L13_2 + L15_2
            L14_2 = true
          end
          L15_2 = IsDisabledControlPressed
          L16_2 = 0
          L17_2 = 44
          L15_2 = L15_2(L16_2, L17_2)
          if L15_2 then
            L15_2 = L12_2 * L5_2
            L13_2 = L13_2 - L15_2
            L14_2 = true
          end
          L15_2 = IsDisabledControlPressed
          L16_2 = 0
          L17_2 = 38
          L15_2 = L15_2(L16_2, L17_2)
          if L15_2 then
            L15_2 = L12_2 * L5_2
            L13_2 = L13_2 + L15_2
            L14_2 = true
          end
          if L14_2 then
            L15_2 = SetCamCoord
            L16_2 = L3_1
            L17_2 = L13_2.x
            L18_2 = L13_2.y
            L19_2 = L13_2.z
            L15_2(L16_2, L17_2, L18_2, L19_2)
          end
          L15_2 = GetDisabledControlNormal
          L16_2 = 0
          L17_2 = 1
          L15_2 = L15_2(L16_2, L17_2)
          L16_2 = GetDisabledControlNormal
          L17_2 = 0
          L18_2 = 2
          L16_2 = L16_2(L17_2, L18_2)
          L17_2 = math
          L17_2 = L17_2.abs
          L18_2 = L15_2
          L17_2 = L17_2(L18_2)
          L18_2 = 0.001
          if not (L17_2 > L18_2) then
            L17_2 = math
            L17_2 = L17_2.abs
            L18_2 = L16_2
            L17_2 = L17_2(L18_2)
            L18_2 = 0.001
            if not (L17_2 > L18_2) then
              goto lbl_511
            end
          end
          L17_2 = L7_2.z
          L18_2 = L15_2 * L6_2
          L17_2 = L17_2 - L18_2
          L18_2 = math
          L18_2 = L18_2.max
          L19_2 = -89
          L20_2 = math
          L20_2 = L20_2.min
          L21_2 = 89
          L22_2 = L7_2.x
          L23_2 = L16_2 * L6_2
          L22_2 = L22_2 - L23_2
          L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2 = L20_2(L21_2, L22_2)
          L18_2 = L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2)
          L19_2 = SetCamRot
          L20_2 = L3_1
          L21_2 = L18_2
          L22_2 = 0.0
          L23_2 = L17_2
          L24_2 = 2
          L19_2(L20_2, L21_2, L22_2, L23_2, L24_2)
          ::lbl_511::
          if L4_2 then
            L17_2 = 3
            if L17_2 then
              goto lbl_517
            end
          end
          L17_2 = 1
          ::lbl_517::
          L18_2 = IsDisabledControlPressed
          L19_2 = 0
          L20_2 = 241
          L18_2 = L18_2(L19_2, L20_2)
          if L18_2 then
            L18_2 = SetCamFov
            L19_2 = L3_1
            L20_2 = fv
            L21_2 = math
            L21_2 = L21_2.max
            L22_2 = Config
            L22_2 = L22_2.FovMin
            L23_2 = GetCamFov
            L24_2 = L3_1
            L23_2 = L23_2(L24_2)
            L23_2 = L23_2 - L17_2
            L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2 = L21_2(L22_2, L23_2)
            L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2 = L20_2(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2)
            L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2)
          end
          L18_2 = IsDisabledControlPressed
          L19_2 = 0
          L20_2 = 242
          L18_2 = L18_2(L19_2, L20_2)
          if L18_2 then
            L18_2 = SetCamFov
            L19_2 = L3_1
            L20_2 = fv
            L21_2 = math
            L21_2 = L21_2.min
            L22_2 = Config
            L22_2 = L22_2.FovMax
            L23_2 = GetCamFov
            L24_2 = L3_1
            L23_2 = L23_2(L24_2)
            L23_2 = L23_2 + L17_2
            L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2 = L21_2(L22_2, L23_2)
            L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2 = L20_2(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2)
            L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2)
          end
          L18_2 = IsDisabledControlJustPressed
          L19_2 = 0
          L20_2 = 177
          L18_2 = L18_2(L19_2, L20_2)
          if not L18_2 then
            L18_2 = IsDisabledControlJustPressed
            L19_2 = 0
            L20_2 = 191
            L18_2 = L18_2(L19_2, L20_2)
          end
          if L18_2 then
            L19_2 = GetCamCoord
            L20_2 = L3_1
            L19_2 = L19_2(L20_2)
            L20_2 = GetCamRot
            L21_2 = L3_1
            L22_2 = 2
            L20_2 = L20_2(L21_2, L22_2)
            L21_2 = GetCamFov
            L22_2 = L3_1
            L21_2 = L21_2(L22_2)
            L22_2 = false
            L2_1 = L22_2
            L22_2 = SetNuiFocus
            L23_2 = true
            L24_2 = true
            L22_2(L23_2, L24_2)
            L22_2 = SendNUIMessage
            L23_2 = {}
            L23_2.type = "positionSaved"
            L24_2 = {}
            L25_2 = L19_2.x
            L24_2.x = L25_2
            L25_2 = L19_2.y
            L24_2.y = L25_2
            L25_2 = L19_2.z
            L24_2.z = L25_2
            L23_2.pos = L24_2
            L24_2 = {}
            L25_2 = L20_2.x
            L24_2.x = L25_2
            L25_2 = L20_2.y
            L24_2.y = L25_2
            L25_2 = L20_2.z
            L24_2.z = L25_2
            L23_2.rot = L24_2
            L23_2.fov = L21_2
            L22_2(L23_2)
          end
          L19_2 = IsDisabledControlJustPressed
          L20_2 = 0
          L21_2 = 200
          L19_2 = L19_2(L20_2, L21_2)
          if L19_2 then
            L19_2 = false
            L2_1 = L19_2
            L19_2 = SetNuiFocus
            L20_2 = true
            L21_2 = true
            L19_2(L20_2, L21_2)
            L19_2 = SendNUIMessage
            L20_2 = {}
            L20_2.type = "positionCancelled"
            L19_2(L20_2)
          end
          L19_2 = GetCamCoord
          L20_2 = L3_1
          L19_2 = L19_2(L20_2)
          L20_2 = GetCamRot
          L21_2 = L3_1
          L22_2 = 2
          L20_2 = L20_2(L21_2, L22_2)
          L21_2 = GetCamFov
          L22_2 = L3_1
          L21_2 = L21_2(L22_2)
          L22_2 = SendNUIMessage
          L23_2 = {}
          L23_2.type = "coordsUpdate"
          L24_2 = {}
          L25_2 = L19_2.x
          L24_2.x = L25_2
          L25_2 = L19_2.y
          L24_2.y = L25_2
          L25_2 = L19_2.z
          L24_2.z = L25_2
          L23_2.pos = L24_2
          L24_2 = {}
          L25_2 = L20_2.x
          L24_2.x = L25_2
          L25_2 = L20_2.y
          L24_2.y = L25_2
          L25_2 = L20_2.z
          L24_2.z = L25_2
          L23_2.rot = L24_2
          L23_2.fov = L21_2
          L22_2(L23_2)
          L22_2 = updateCameraProp
          L22_2()
      end
    end
    else
      L4_2 = L1_1
      if L4_2 then
        L4_2 = HideHudAndRadarThisFrame
        L4_2()
        L4_2 = L6_1
        L4_2 = L4_2 + L0_2
        L6_1 = L4_2
        L4_2 = math
        L4_2 = L4_2.floor
        L5_2 = L6_1
        L6_2 = Config
        L6_2 = L6_2.DefaultFPS
        L5_2 = L5_2 * L6_2
        L4_2 = L4_2(L5_2)
        L5_1 = L4_2
        L4_2 = L13_1.mode
        if "native" == L4_2 then
          L4_2 = GetGameTimer
          L4_2 = L4_2()
          L5_2 = L11_1
          if L4_2 >= L5_2 then
            L4_2 = L10_1
            L4_2 = L4_2 + 1
            L10_1 = L4_2
            L4_2 = L10_1
            L5_2 = L8_1
            L5_2 = #L5_2
            if L4_2 >= L5_2 then
              L4_2 = stopPlayback
              L4_2()
            else
              L4_2 = L9_1
              L5_2 = L10_1
              L4_2 = L4_2 + L5_2
              L5_2 = L4_2 - 1
              L4_2 = L4_1
              L4_2 = L4_2[L5_2]
              L5_2 = L9_1
              L6_2 = L10_1
              L6_2 = L5_2 + L6_2
              L5_2 = L4_1
              L5_2 = L5_2[L6_2]
              if L4_2 and L5_2 then
                L6_2 = math
                L6_2 = L6_2.max
                L7_2 = 1
                L8_2 = math
                L8_2 = L8_2.floor
                L9_2 = L5_2.frame
                L10_2 = L4_2.frame
                L9_2 = L9_2 - L10_2
                L10_2 = Config
                L10_2 = L10_2.DefaultFPS
                L9_2 = L9_2 / L10_2
                L9_2 = L9_2 * 1000
                L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2 = L8_2(L9_2)
                L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2)
                L7_2 = L4_2.easing
                if "ease" ~= L7_2 then
                  L7_2 = L4_2.easing
                  if "easein" ~= L7_2 then
                    L7_2 = L4_2.easing
                    if "easeout" ~= L7_2 then
                      goto lbl_750
                    end
                  end
                end
                L7_2 = 1
                ::lbl_750::
                if not L7_2 then
                  L7_2 = 0
                end
                L8_2 = SetCamActiveWithInterp
                L9_2 = L10_1
                L10_2 = L9_2 + 1
                L9_2 = L8_1
                L9_2 = L9_2[L10_2]
                L11_2 = L10_1
                L10_2 = L8_1
                L10_2 = L10_2[L11_2]
                L11_2 = L6_2
                L12_2 = L7_2
                L13_2 = L7_2
                L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
                L8_2 = GetGameTimer
                L8_2 = L8_2()
                L8_2 = L8_2 + L6_2
                L11_1 = L8_2
              end
            end
          end
          L4_2 = L1_1
          if L4_2 then
            L4_2 = L10_1
            L5_2 = L8_1
            L5_2 = #L5_2
            if L4_2 <= L5_2 then
              L4_2 = L9_1
              L5_2 = L10_1
              L4_2 = L4_2 + L5_2
              L5_2 = L4_2 - 1
              L4_2 = L4_1
              L4_2 = L4_2[L5_2]
              if L4_2 then
                L5_2 = applyEffects
                L6_2 = L4_2.effects
                if not L6_2 then
                  L6_2 = {}
                end
                L8_2 = L10_1
                L7_2 = L8_1
                L7_2 = L7_2[L8_2]
                L5_2(L6_2, L7_2)
              end
            end
          end
          L4_2 = interpolateKeyframes
          L5_2 = L5_1
          L4_2 = L4_2(L5_2)
          if L4_2 then
            L5_2 = L4_2.time
            if L5_2 then
              L5_2 = applyGameTime
              L6_2 = L4_2.time
              L5_2(L6_2)
            else
              L5_2 = L64_1.freezeTime
              if L5_2 then
                L5_2 = applyGameTime
                L6_2 = L64_1.time
                L5_2(L6_2)
              end
            end
            L5_2 = L4_2.timeScale
            if not L5_2 then
              L5_2 = 1.0
            end
            L57_1 = L5_2
          end
          L5_2 = updateCameraProp
          L5_2()
        else
          L4_2 = L6_1
          L5_2 = Config
          L5_2 = L5_2.DefaultFPS
          L4_2 = L4_2 * L5_2
          L5_2 = L13_1.mode
          if "spline" == L5_2 then
            L5_2 = interpolateKeyframesSpline
            L6_2 = L4_2
            L5_2 = L5_2(L6_2)
            if L5_2 then
              goto lbl_839
            end
          end
          L5_2 = interpolateKeyframes
          L6_2 = L4_2
          L5_2 = L5_2(L6_2)
          ::lbl_839::
          if L5_2 then
            L6_2 = SetCamCoord
            L7_2 = L3_1
            L8_2 = L5_2.pos
            L8_2 = L8_2.x
            L9_2 = L5_2.pos
            L9_2 = L9_2.y
            L10_2 = L5_2.pos
            L10_2 = L10_2.z
            L6_2(L7_2, L8_2, L9_2, L10_2)
            L6_2 = SetCamRot
            L7_2 = L3_1
            L8_2 = L5_2.rot
            L8_2 = L8_2.x
            L9_2 = L5_2.rot
            L9_2 = L9_2.y
            L10_2 = L5_2.rot
            L10_2 = L10_2.z
            L11_2 = 2
            L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
            L6_2 = SetCamFov
            L7_2 = L3_1
            L8_2 = fv
            L9_2 = L5_2.fov
            L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2 = L8_2(L9_2)
            L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2)
            L6_2 = applyEffects
            L7_2 = L5_2.effects
            if not L7_2 then
              L7_2 = {}
            end
            L8_2 = L3_1
            L6_2(L7_2, L8_2)
            L6_2 = L5_2.time
            if L6_2 then
              L6_2 = applyGameTime
              L7_2 = L5_2.time
              L6_2(L7_2)
            else
              L6_2 = L64_1.freezeTime
              if L6_2 then
                L6_2 = applyGameTime
                L7_2 = L64_1.time
                L6_2(L7_2)
              end
            end
            L6_2 = L5_2.timeScale
            if not L6_2 then
              L6_2 = 1.0
            end
            L57_1 = L6_2
            L6_2 = updateCameraProp
            L6_2()
          else
            L6_2 = stopPlayback
            L6_2()
          end
        end
        L4_2 = L1_1
        if L4_2 then
          L4_2 = L58_1
          if L4_2 then
            L4_2 = GetFinalRenderedCamCoord
            L4_2 = L4_2()
            L5_2 = SetEntityCoordsNoOffset
            L6_2 = PlayerPedId
            L6_2 = L6_2()
            L7_2 = L4_2.x
            L8_2 = L4_2.y
            L9_2 = L4_2.z
            L10_2 = false
            L11_2 = false
            L12_2 = false
            L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
          end
        end
        L4_2 = L1_1
        if L4_2 then
          L4_2 = 1
          L5_2 = L14_1
          L5_2 = #L5_2
          L6_2 = 1
          for L7_2 = L4_2, L5_2, L6_2 do
            L8_2 = L14_1
            L8_2 = L8_2[L7_2]
            L9_2 = L8_2.frames
            L10_2 = #L9_2
            if L10_2 < 2 then
            else
              L11_2 = L23_1
              if not L11_2 then
                L11_2 = L22_1
                L12_2 = L8_2.duration
                L11_2 = L11_2 + L12_2
                L12_2 = L24_1
                L11_2 = L11_2 - L12_2
              end
              L12_2 = L6_1
              L13_2 = L22_1
              if not (L12_2 < L13_2) then
                L12_2 = L6_1
                if not (L11_2 < L12_2) then
                  goto lbl_973
                end
              end
              L12_2 = L16_1
              L12_2 = L12_2[L7_2]
              if L12_2 then
                L13_2 = DoesEntityExist
                L14_2 = L12_2
                L13_2 = L13_2(L14_2)
                if L13_2 then
                  L13_2 = L25_1
                  L13_2 = L13_2[L7_2]
                  if L13_2 then
                    L13_2 = DriftSmoke
                    L13_2 = L13_2.stopPlayback
                    L14_2 = L25_1
                    L14_2 = L14_2[L7_2]
                    L13_2(L14_2)
                  end
                  L13_2 = DeleteEntity
                  L14_2 = L12_2
                  L13_2(L14_2)
                  L13_2 = L16_1
                  L13_2[L7_2] = nil
                  L13_2 = L17_1
                  L13_2[L7_2] = false
                  goto lbl_1290
                  ::lbl_973::
                  L12_2 = L6_1
                  L13_2 = L22_1
                  L12_2 = L12_2 - L13_2
                  L13_2 = L24_1
                  L12_2 = L12_2 + L13_2
                  L13_2 = L9_2[1]
                  L13_2 = L13_2.t
                  if not (L12_2 < L13_2) then
                    L13_2 = L8_2.duration
                    if not (L12_2 > L13_2) then
                      goto lbl_1013
                    end
                  end
                  L13_2 = L16_1
                  L13_2 = L13_2[L7_2]
                  if L13_2 then
                    L14_2 = DoesEntityExist
                    L15_2 = L13_2
                    L14_2 = L14_2(L15_2)
                    if L14_2 then
                      L14_2 = L25_1
                      L14_2 = L14_2[L7_2]
                      if L14_2 then
                        L14_2 = DriftSmoke
                        L14_2 = L14_2.stopPlayback
                        L15_2 = L25_1
                        L15_2 = L15_2[L7_2]
                        L14_2(L15_2)
                      end
                      L14_2 = DeleteEntity
                      L15_2 = L13_2
                      L14_2(L15_2)
                      L14_2 = L16_1
                      L14_2[L7_2] = nil
                      L14_2 = L17_1
                      L14_2[L7_2] = false
                      goto lbl_1290
                      ::lbl_1013::
                      L13_2 = L16_1
                      L13_2 = L13_2[L7_2]
                      if L13_2 then
                        L13_2 = DoesEntityExist
                        L14_2 = L16_1
                        L14_2 = L14_2[L7_2]
                        L13_2 = L13_2(L14_2)
                        if L13_2 then
                          goto lbl_1027
                        end
                      end
                      L13_2 = spawnSingleVehicle
                      L14_2 = L7_2
                      L13_2(L14_2)
                      goto lbl_1290
                      ::lbl_1027::
                      L13_2 = L16_1
                      L13_2 = L13_2[L7_2]
                      while true do
                        L14_2 = L18_1
                        L14_2 = L14_2[L7_2]
                        L15_2 = L10_2 - 1
                        if not (L14_2 < L15_2) then
                          break
                        end
                        L14_2 = L18_1
                        L14_2 = L14_2[L7_2]
                        L14_2 = L14_2 + 1
                        L14_2 = L9_2[L14_2]
                        L14_2 = L14_2.t
                        if not (L12_2 >= L14_2) then
                          break
                        end
                        L14_2 = L18_1
                        L15_2 = L18_1
                        L15_2 = L15_2[L7_2]
                        L15_2 = L15_2 + 1
                        L14_2[L7_2] = L15_2
                      end
                      L14_2 = L18_1
                      L14_2 = L14_2[L7_2]
                      L15_2 = L9_2[L14_2]
                      L16_2 = math
                      L16_2 = L16_2.min
                      L17_2 = L14_2 + 1
                      L18_2 = L10_2
                      L16_2 = L16_2(L17_2, L18_2)
                      L16_2 = L9_2[L16_2]
                      L17_2 = L16_2.t
                      L18_2 = L15_2.t
                      L17_2 = L17_2 - L18_2
                      L18_2 = 0.001
                      if L17_2 > L18_2 then
                        L18_2 = math
                        L18_2 = L18_2.max
                        L19_2 = 0.0
                        L20_2 = math
                        L20_2 = L20_2.min
                        L21_2 = 1.0
                        L22_2 = L15_2.t
                        L22_2 = L12_2 - L22_2
                        L22_2 = L22_2 / L17_2
                        L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2 = L20_2(L21_2, L22_2)
                        L18_2 = L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2)
                        if L18_2 then
                          goto lbl_1083
                        end
                      end
                      L18_2 = 0.0
                      ::lbl_1083::
                      L19_2 = vector3
                      L20_2 = L15_2.px
                      L21_2 = L16_2.px
                      L22_2 = L15_2.px
                      L21_2 = L21_2 - L22_2
                      L21_2 = L21_2 * L18_2
                      L20_2 = L20_2 + L21_2
                      L21_2 = L15_2.py
                      L22_2 = L16_2.py
                      L23_2 = L15_2.py
                      L22_2 = L22_2 - L23_2
                      L22_2 = L22_2 * L18_2
                      L21_2 = L21_2 + L22_2
                      L22_2 = L15_2.pz
                      L23_2 = L16_2.pz
                      L24_2 = L15_2.pz
                      L23_2 = L23_2 - L24_2
                      L23_2 = L23_2 * L18_2
                      L22_2 = L22_2 + L23_2
                      L23_2 = L8_2.suspensionDelta
                      if not L23_2 then
                        L23_2 = 0.0
                      end
                      L22_2 = L22_2 + L23_2
                      L19_2 = L19_2(L20_2, L21_2, L22_2)
                      L20_2 = vector3
                      L21_2 = L15_2.vx
                      L22_2 = L16_2.vx
                      L23_2 = L15_2.vx
                      L22_2 = L22_2 - L23_2
                      L22_2 = L22_2 * L18_2
                      L21_2 = L21_2 + L22_2
                      L22_2 = L15_2.vy
                      L23_2 = L16_2.vy
                      L24_2 = L15_2.vy
                      L23_2 = L23_2 - L24_2
                      L23_2 = L23_2 * L18_2
                      L22_2 = L22_2 + L23_2
                      L23_2 = L15_2.vz
                      L24_2 = L16_2.vz
                      L25_2 = L15_2.vz
                      L24_2 = L24_2 - L25_2
                      L24_2 = L24_2 * L18_2
                      L23_2 = L23_2 + L24_2
                      L20_2 = L20_2(L21_2, L22_2, L23_2)
                      L21_2 = lerpAngle
                      L22_2 = L15_2.rx
                      L23_2 = L16_2.rx
                      L24_2 = L18_2
                      L21_2 = L21_2(L22_2, L23_2, L24_2)
                      L22_2 = lerpAngle
                      L23_2 = L15_2.ry
                      L24_2 = L16_2.ry
                      L25_2 = L18_2
                      L22_2 = L22_2(L23_2, L24_2, L25_2)
                      L23_2 = lerpAngle
                      L24_2 = L15_2.rz
                      L25_2 = L16_2.rz
                      L26_2 = L18_2
                      L23_2 = L23_2(L24_2, L25_2, L26_2)
                      L24_2 = L15_2.steer
                      L25_2 = L16_2.steer
                      L26_2 = L15_2.steer
                      L25_2 = L25_2 - L26_2
                      L25_2 = L25_2 * L18_2
                      L24_2 = L24_2 + L25_2
                      L25_2 = L15_2.rpm
                      if L25_2 then
                        L25_2 = L15_2.rpm
                        L26_2 = L16_2.rpm
                        if not L26_2 then
                          L26_2 = L15_2.rpm
                        end
                        L27_2 = L15_2.rpm
                        L26_2 = L26_2 - L27_2
                        L26_2 = L26_2 * L18_2
                        L25_2 = L25_2 + L26_2
                        if L25_2 then
                          goto lbl_1189
                        end
                      end
                      L25_2 = nil
                      ::lbl_1189::
                      L26_2 = IsEntityOnScreen
                      L27_2 = L13_2
                      L26_2 = L26_2(L27_2)
                      if L26_2 then
                        L26_2 = FreezeEntityPosition
                        L27_2 = L13_2
                        L28_2 = false
                        L26_2(L27_2, L28_2)
                        L26_2 = GetEntityCoords
                        L27_2 = L13_2
                        L26_2 = L26_2(L27_2)
                        L27_2 = L19_2 - L26_2
                        L27_2 = L27_2 * 15.0
                        L28_2 = SetEntityRotation
                        L29_2 = L13_2
                        L30_2 = L21_2
                        L31_2 = L22_2
                        L32_2 = L23_2
                        L33_2 = 2
                        L34_2 = true
                        L28_2(L29_2, L30_2, L31_2, L32_2, L33_2, L34_2)
                        L28_2 = SetVehicleSteeringAngle
                        L29_2 = L13_2
                        L30_2 = L24_2
                        L28_2(L29_2, L30_2)
                        if L25_2 then
                          L28_2 = SetVehicleCurrentRpm
                          L29_2 = L13_2
                          L30_2 = L25_2
                          L28_2(L29_2, L30_2)
                        end
                        L28_2 = L15_2.handbrake
                        if nil ~= L28_2 then
                          L28_2 = SetVehicleHandbrake
                          L29_2 = L13_2
                          L30_2 = L15_2.handbrake
                          if L30_2 then
                            L30_2 = true
                            if L30_2 then
                              goto lbl_1235
                            end
                          end
                          L30_2 = false
                          ::lbl_1235::
                          L28_2(L29_2, L30_2)
                        end
                        L28_2 = SetEntityVelocity
                        L29_2 = L13_2
                        L30_2 = L20_2 + L27_2
                        L28_2(L29_2, L30_2)
                        L28_2 = L25_1
                        L28_2 = L28_2[L7_2]
                        if not L28_2 then
                          L29_2 = {}
                          L29_2.active = false
                          L28_2 = L29_2
                          L29_2 = L25_1
                          L29_2[L7_2] = L28_2
                        end
                        L29_2 = DriftSmoke
                        L29_2 = L29_2.applyToPlayback
                        L30_2 = L13_2
                        L31_2 = L28_2
                        L32_2 = L25_2
                        L29_2(L30_2, L31_2, L32_2)
                      else
                        L26_2 = FreezeEntityPosition
                        L27_2 = L13_2
                        L28_2 = true
                        L26_2(L27_2, L28_2)
                        L26_2 = SetEntityCoordsNoOffset
                        L27_2 = L13_2
                        L28_2 = L19_2.x
                        L29_2 = L19_2.y
                        L30_2 = L19_2.z
                        L31_2 = false
                        L32_2 = false
                        L33_2 = false
                        L26_2(L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2)
                        L26_2 = SetEntityRotation
                        L27_2 = L13_2
                        L28_2 = L21_2
                        L29_2 = L22_2
                        L30_2 = L23_2
                        L31_2 = 2
                        L32_2 = true
                        L26_2(L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
                        L26_2 = L25_1
                        L26_2 = L26_2[L7_2]
                        if L26_2 then
                          L27_2 = L26_2.active
                          if L27_2 then
                            L27_2 = DriftSmoke
                            L27_2 = L27_2.stopPlayback
                            L28_2 = L26_2
                            L27_2(L28_2)
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
            ::lbl_1290::
          end
          L4_2 = 1
          L5_2 = L26_1
          L5_2 = #L5_2
          L6_2 = 1
          for L7_2 = L4_2, L5_2, L6_2 do
            L8_2 = L26_1
            L8_2 = L8_2[L7_2]
            L9_2 = L8_2.frames
            L10_2 = #L9_2
            if L10_2 < 2 then
            else
              L11_2 = L23_1
              if not L11_2 then
                L11_2 = L22_1
                L12_2 = L8_2.duration
                L11_2 = L11_2 + L12_2
                L12_2 = L24_1
                L11_2 = L11_2 - L12_2
              end
              L12_2 = L6_1
              L13_2 = L22_1
              if not (L12_2 < L13_2) then
                L12_2 = L6_1
                if not (L11_2 < L12_2) then
                  goto lbl_1341
                end
              end
              L12_2 = L27_1
              L12_2 = L12_2[L7_2]
              if L12_2 then
                L13_2 = DoesEntityExist
                L14_2 = L12_2
                L13_2 = L13_2(L14_2)
                if L13_2 then
                  L13_2 = DeleteEntity
                  L14_2 = L12_2
                  L13_2(L14_2)
                  L13_2 = L27_1
                  L13_2[L7_2] = nil
                  L13_2 = L28_1
                  L13_2[L7_2] = false
                  L13_2 = L30_1
                  L13_2[L7_2] = nil
                  L13_2 = L31_1
                  L13_2[L7_2] = nil
                  goto lbl_1935
                  ::lbl_1341::
                  L12_2 = L6_1
                  L13_2 = L22_1
                  L12_2 = L12_2 - L13_2
                  L13_2 = L24_1
                  L12_2 = L12_2 + L13_2
                  L13_2 = L9_2[1]
                  L13_2 = L13_2.t
                  if not (L12_2 < L13_2) then
                    L13_2 = L8_2.duration
                    if not (L12_2 > L13_2) then
                      goto lbl_1376
                    end
                  end
                  L13_2 = L27_1
                  L13_2 = L13_2[L7_2]
                  if L13_2 then
                    L14_2 = DoesEntityExist
                    L15_2 = L13_2
                    L14_2 = L14_2(L15_2)
                    if L14_2 then
                      L14_2 = DeleteEntity
                      L15_2 = L13_2
                      L14_2(L15_2)
                      L14_2 = L27_1
                      L14_2[L7_2] = nil
                      L14_2 = L28_1
                      L14_2[L7_2] = false
                      L14_2 = L30_1
                      L14_2[L7_2] = nil
                      L14_2 = L31_1
                      L14_2[L7_2] = nil
                      goto lbl_1935
                      ::lbl_1376::
                      L13_2 = L27_1
                      L13_2 = L13_2[L7_2]
                      if L13_2 then
                        L13_2 = DoesEntityExist
                        L14_2 = L27_1
                        L14_2 = L14_2[L7_2]
                        L13_2 = L13_2(L14_2)
                        if L13_2 then
                          goto lbl_1390
                        end
                      end
                      L13_2 = spawnSinglePed
                      L14_2 = L7_2
                      L13_2(L14_2)
                      goto lbl_1935
                      ::lbl_1390::
                      L13_2 = L27_1
                      L13_2 = L13_2[L7_2]
                      while true do
                        L14_2 = L29_1
                        L14_2 = L14_2[L7_2]
                        L15_2 = L10_2 - 1
                        if not (L14_2 < L15_2) then
                          break
                        end
                        L14_2 = L29_1
                        L14_2 = L14_2[L7_2]
                        L14_2 = L14_2 + 1
                        L14_2 = L9_2[L14_2]
                        L14_2 = L14_2.t
                        if not (L12_2 >= L14_2) then
                          break
                        end
                        L14_2 = L29_1
                        L15_2 = L29_1
                        L15_2 = L15_2[L7_2]
                        L15_2 = L15_2 + 1
                        L14_2[L7_2] = L15_2
                      end
                      L14_2 = L29_1
                      L14_2 = L14_2[L7_2]
                      L15_2 = L9_2[L14_2]
                      L16_2 = math
                      L16_2 = L16_2.min
                      L17_2 = L14_2 + 1
                      L18_2 = L10_2
                      L16_2 = L16_2(L17_2, L18_2)
                      L16_2 = L9_2[L16_2]
                      L17_2 = L15_2.inVehicle
                      if L17_2 then
                        L18_2 = L15_2.vehRecIdx
                        L17_2 = L16_1
                        L17_2 = L17_2[L18_2]
                        if L17_2 then
                          L18_2 = DoesEntityExist
                          L19_2 = L17_2
                          L18_2 = L18_2(L19_2)
                          if L18_2 then
                            L18_2 = GetVehiclePedIsIn
                            L19_2 = L13_2
                            L20_2 = false
                            L18_2 = L18_2(L19_2, L20_2)
                            if L18_2 == L17_2 then
                              L19_2 = L36_1
                              L19_2[L7_2] = nil
                              L19_2 = L37_1
                              L19_2[L7_2] = nil
                            else
                              L19_2 = L36_1
                              L19_2 = L19_2[L7_2]
                              if not L19_2 then
                                L19_2 = FreezeEntityPosition
                                L20_2 = L13_2
                                L21_2 = false
                                L19_2(L20_2, L21_2)
                                L19_2 = TaskEnterVehicle
                                L20_2 = L13_2
                                L21_2 = L17_2
                                L22_2 = -1
                                L23_2 = L15_2.seat
                                L24_2 = 1.0
                                L25_2 = 1
                                L26_2 = 0
                                L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
                                L19_2 = L36_1
                                L19_2[L7_2] = L17_2
                              else
                              end
                            end
                          end
                        end
                      else
                        L17_2 = L16_2.t
                        L18_2 = L15_2.t
                        L17_2 = L17_2 - L18_2
                        L18_2 = 0.001
                        if L17_2 > L18_2 then
                          L18_2 = math
                          L18_2 = L18_2.max
                          L19_2 = 0.0
                          L20_2 = math
                          L20_2 = L20_2.min
                          L21_2 = 1.0
                          L22_2 = L15_2.t
                          L22_2 = L12_2 - L22_2
                          L22_2 = L22_2 / L17_2
                          L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2 = L20_2(L21_2, L22_2)
                          L18_2 = L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2)
                          if L18_2 then
                            goto lbl_1491
                          end
                        end
                        L18_2 = 0.0
                        ::lbl_1491::
                        L19_2 = L16_2.inVehicle
                        if not L19_2 then
                          L19_2 = L16_2.px
                          if L19_2 then
                            goto lbl_1498
                          end
                        end
                        L19_2 = L15_2.px
                        ::lbl_1498::
                        L20_2 = L16_2.inVehicle
                        if not L20_2 then
                          L20_2 = L16_2.py
                          if L20_2 then
                            goto lbl_1505
                          end
                        end
                        L20_2 = L15_2.py
                        ::lbl_1505::
                        L21_2 = L16_2.inVehicle
                        if not L21_2 then
                          L21_2 = L16_2.pz
                          if L21_2 then
                            goto lbl_1512
                          end
                        end
                        L21_2 = L15_2.pz
                        ::lbl_1512::
                        L22_2 = L16_2.inVehicle
                        if not L22_2 then
                          L22_2 = L16_2.rz
                          if L22_2 then
                            goto lbl_1519
                          end
                        end
                        L22_2 = L15_2.rz
                        ::lbl_1519::
                        L23_2 = L15_2.px
                        L24_2 = L15_2.px
                        L24_2 = L19_2 - L24_2
                        L24_2 = L24_2 * L18_2
                        L23_2 = L23_2 + L24_2
                        L24_2 = L15_2.py
                        L25_2 = L15_2.py
                        L25_2 = L20_2 - L25_2
                        L25_2 = L25_2 * L18_2
                        L24_2 = L24_2 + L25_2
                        L25_2 = L15_2.pz
                        L26_2 = L15_2.pz
                        L26_2 = L21_2 - L26_2
                        L26_2 = L26_2 * L18_2
                        L25_2 = L25_2 + L26_2
                        L26_2 = lerpAngle
                        L27_2 = L15_2.rz
                        L28_2 = L22_2
                        L29_2 = L18_2
                        L26_2 = L26_2(L27_2, L28_2, L29_2)
                        L27_2 = IsPedInAnyVehicle
                        L28_2 = L13_2
                        L29_2 = false
                        L27_2 = L27_2(L28_2, L29_2)
                        if L27_2 then
                          L27_2 = L37_1
                          L27_2 = L27_2[L7_2]
                          if not L27_2 then
                            L27_2 = GetVehiclePedIsIn
                            L28_2 = L13_2
                            L29_2 = false
                            L27_2 = L27_2(L28_2, L29_2)
                            L28_2 = TaskLeaveVehicle
                            L29_2 = L13_2
                            L30_2 = L27_2
                            L31_2 = 0
                            L28_2(L29_2, L30_2, L31_2)
                            L28_2 = L37_1
                            L28_2[L7_2] = true
                          end
                        else
                          L27_2 = L37_1
                          L27_2 = L27_2[L7_2]
                          if L27_2 then
                            L27_2 = L38_1
                            L27_2[L7_2] = 20
                          end
                          L27_2 = L37_1
                          L27_2[L7_2] = nil
                          L27_2 = L36_1
                          L27_2[L7_2] = nil
                          L27_2 = L38_1
                          L27_2 = L27_2[L7_2]
                          if L27_2 then
                            L27_2 = L38_1
                            L27_2 = L27_2[L7_2]
                            if L27_2 > 0 then
                              L27_2 = L38_1
                              L28_2 = L38_1
                              L28_2 = L28_2[L7_2]
                              L28_2 = L28_2 - 1
                              L27_2[L7_2] = L28_2
                          end
                          else
                            L27_2 = L15_2.isRagdoll
                            if L27_2 then
                              L27_2 = L35_1
                              L27_2 = L27_2[L7_2]
                              if not L27_2 then
                                L27_2 = SetPedCanRagdoll
                                L28_2 = L13_2
                                L29_2 = true
                                L27_2(L28_2, L29_2)
                                L27_2 = FreezeEntityPosition
                                L28_2 = L13_2
                                L29_2 = false
                                L27_2(L28_2, L29_2)
                                L27_2 = SetEntityCoordsNoOffset
                                L28_2 = L13_2
                                L29_2 = L23_2
                                L30_2 = L24_2
                                L31_2 = L25_2
                                L32_2 = false
                                L33_2 = false
                                L34_2 = false
                                L27_2(L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2)
                                L27_2 = SetEntityVelocity
                                L28_2 = L13_2
                                L29_2 = L15_2.vx
                                if not L29_2 then
                                  L29_2 = 0
                                end
                                L30_2 = L15_2.vy
                                if not L30_2 then
                                  L30_2 = 0
                                end
                                L31_2 = L15_2.vz
                                if not L31_2 then
                                  L31_2 = 0
                                end
                                L27_2(L28_2, L29_2, L30_2, L31_2)
                                L27_2 = L35_1
                                L27_2[L7_2] = true
                              end
                              L27_2 = SetPedToRagdoll
                              L28_2 = L13_2
                              L29_2 = 1000
                              L30_2 = 1000
                              L31_2 = 0
                              L32_2 = 0
                              L33_2 = 0
                              L34_2 = 0
                              L27_2(L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2)
                              goto lbl_1935
                            else
                              L27_2 = L35_1
                              L27_2 = L27_2[L7_2]
                              if L27_2 then
                                L27_2 = L35_1
                                L27_2[L7_2] = nil
                                L27_2 = SetPedCanRagdoll
                                L28_2 = L13_2
                                L29_2 = false
                                L27_2(L28_2, L29_2)
                                L27_2 = ClearPedTasksImmediately
                                L28_2 = L13_2
                                L27_2(L28_2)
                              end
                            end
                            L27_2 = IsPedJumping
                            L28_2 = L13_2
                            L27_2 = L27_2(L28_2)
                            L28_2 = IsPedClimbing
                            L29_2 = L13_2
                            L28_2 = L28_2(L29_2)
                            L29_2 = math
                            L29_2 = L29_2.sqrt
                            L30_2 = L15_2.vx
                            if not L30_2 then
                              L30_2 = 0
                            end
                            L31_2 = L15_2.vx
                            if not L31_2 then
                              L31_2 = 0
                            end
                            L30_2 = L30_2 * L31_2
                            L31_2 = L15_2.vy
                            if not L31_2 then
                              L31_2 = 0
                            end
                            L32_2 = L15_2.vy
                            if not L32_2 then
                              L32_2 = 0
                            end
                            L31_2 = L31_2 * L32_2
                            L30_2 = L30_2 + L31_2
                            L29_2 = L29_2(L30_2)
                            L30_2 = L29_2
                            L31_2 = L15_2.moveBlend
                            if L31_2 then
                              L31_2 = L15_2.moveBlend
                              L32_2 = 1.05
                              if L31_2 <= L32_2 then
                                L31_2 = math
                                L31_2 = L31_2.min
                                L32_2 = L30_2
                                L33_2 = 1.8
                                L31_2 = L31_2(L32_2, L33_2)
                                L30_2 = L31_2
                              else
                                L31_2 = L15_2.moveBlend
                                L32_2 = 2.05
                                if L31_2 <= L32_2 then
                                  L31_2 = math
                                  L31_2 = L31_2.min
                                  L32_2 = L30_2
                                  L33_2 = 3.8
                                  L31_2 = L31_2(L32_2, L33_2)
                                  L30_2 = L31_2
                                else
                                  L31_2 = math
                                  L31_2 = L31_2.min
                                  L32_2 = L30_2
                                  L33_2 = 5.5
                                  L31_2 = L31_2(L32_2, L33_2)
                                  L30_2 = L31_2
                                end
                              end
                            end
                            L31_2 = 0.3
                            L31_2 = L30_2 > L31_2
                            if L27_2 or L28_2 then
                              L32_2 = FreezeEntityPosition
                              L33_2 = L13_2
                              L34_2 = false
                              L32_2(L33_2, L34_2)
                              L32_2 = L30_1
                              L32_2[L7_2] = true
                            else
                              L32_2 = L15_2.isVaulting
                              if not L32_2 then
                                L32_2 = L15_2.isClimbing
                                if not L32_2 then
                                  goto lbl_1760
                                end
                              end
                              L32_2 = FreezeEntityPosition
                              L33_2 = L13_2
                              L34_2 = false
                              L32_2(L33_2, L34_2)
                              L32_2 = L30_1
                              L32_2 = L32_2[L7_2]
                              if not L32_2 then
                                L32_2 = L30_1
                                L32_2[L7_2] = true
                                L32_2 = TaskClimb
                                L33_2 = L13_2
                                L34_2 = true
                                L32_2(L33_2, L34_2)
                                goto lbl_1861
                                ::lbl_1760::
                                L32_2 = L15_2.isJumping
                                if L32_2 then
                                  L32_2 = FreezeEntityPosition
                                  L33_2 = L13_2
                                  L34_2 = false
                                  L32_2(L33_2, L34_2)
                                  L32_2 = L30_1
                                  L32_2 = L32_2[L7_2]
                                  if not L32_2 then
                                    L32_2 = L30_1
                                    L32_2[L7_2] = true
                                    L32_2 = TaskJump
                                    L33_2 = L13_2
                                    L34_2 = true
                                    L32_2(L33_2, L34_2)
                                  end
                                elseif L31_2 then
                                  L32_2 = FreezeEntityPosition
                                  L33_2 = L13_2
                                  L34_2 = false
                                  L32_2(L33_2, L34_2)
                                  L32_2 = L30_1
                                  L32_2 = L32_2[L7_2]
                                  if L32_2 then
                                    L32_2 = L30_1
                                    L32_2[L7_2] = nil
                                  end
                                  L32_2 = L32_1
                                  L32_2[L7_2] = true
                                  L32_2 = L26_1
                                  L32_2 = L32_2[L7_2]
                                  L33_2 = math
                                  L33_2 = L33_2.min
                                  L34_2 = L29_1
                                  L34_2 = L34_2[L7_2]
                                  L34_2 = L34_2 + 1
                                  L35_2 = #L32_2
                                  L33_2 = L33_2(L34_2, L35_2)
                                  L34_2 = L32_2[L33_2]
                                  L35_2 = L23_2
                                  L36_2 = L24_2
                                  L37_2 = L25_2
                                  if L34_2 then
                                    L38_2 = L34_2.inVehicle
                                    if not L38_2 then
                                      L38_2 = L34_2.px
                                      L39_2 = L34_2.py
                                      L37_2 = L34_2.pz
                                      L36_2 = L39_2
                                      L35_2 = L38_2
                                    end
                                  end
                                  L38_2 = TaskGoStraightToCoord
                                  L39_2 = L13_2
                                  L40_2 = L35_2
                                  L41_2 = L36_2
                                  L42_2 = L37_2
                                  L43_2 = L30_2
                                  L44_2 = -1
                                  L45_2 = L26_2
                                  L46_2 = 0.1
                                  L38_2(L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2)
                                else
                                  L32_2 = L30_1
                                  L32_2[L7_2] = nil
                                  L32_2 = FreezeEntityPosition
                                  L33_2 = L13_2
                                  L34_2 = false
                                  L32_2(L33_2, L34_2)
                                  L32_2 = L32_1
                                  L32_2 = L32_2[L7_2]
                                  if L32_2 then
                                    L32_2 = ClearPedTasksImmediately
                                    L33_2 = L13_2
                                    L32_2(L33_2)
                                    L32_2 = L32_1
                                    L32_2[L7_2] = nil
                                  end
                                  L32_2 = SetEntityVelocity
                                  L33_2 = L13_2
                                  L34_2 = 0
                                  L35_2 = 0
                                  L36_2 = 0
                                  L32_2(L33_2, L34_2, L35_2, L36_2)
                                  L32_2 = SetEntityCoordsNoOffset
                                  L33_2 = L13_2
                                  L34_2 = L23_2
                                  L35_2 = L24_2
                                  L36_2 = L25_2
                                  L37_2 = false
                                  L38_2 = false
                                  L39_2 = false
                                  L32_2(L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2)
                                  L32_2 = SetEntityHeading
                                  L33_2 = L13_2
                                  L34_2 = L26_2
                                  L32_2(L33_2, L34_2)
                                end
                              end
                            end
                            ::lbl_1861::
                            L32_2 = L15_2.weapon
                            if L32_2 then
                              L32_2 = L15_2.weapon
                              if 0 ~= L32_2 then
                                L32_2 = SetCurrentPedWeapon
                                L33_2 = L13_2
                                L34_2 = L15_2.weapon
                                L35_2 = true
                                L32_2(L33_2, L34_2, L35_2)
                              end
                            end
                            L32_2 = L15_2.isAiming
                            if not L32_2 then
                              L32_2 = L15_2.isShooting
                            end
                            if L32_2 and not L27_2 and not L28_2 then
                              L32_2 = math
                              L32_2 = L32_2.rad
                              L33_2 = L15_2.rz
                              L32_2 = L32_2(L33_2)
                              L33_2 = L15_2.px
                              L34_2 = math
                              L34_2 = L34_2.sin
                              L35_2 = L32_2
                              L34_2 = L34_2(L35_2)
                              L34_2 = L34_2 * 10.0
                              L33_2 = L33_2 - L34_2
                              L34_2 = L15_2.py
                              L35_2 = math
                              L35_2 = L35_2.cos
                              L36_2 = L32_2
                              L35_2 = L35_2(L36_2)
                              L35_2 = L35_2 * 10.0
                              L34_2 = L34_2 + L35_2
                              L35_2 = TaskAimGunAtCoord
                              L36_2 = L13_2
                              L37_2 = L33_2
                              L38_2 = L34_2
                              L39_2 = L15_2.pz
                              L40_2 = -1
                              L41_2 = false
                              L42_2 = false
                              L35_2(L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2)
                            end
                            L32_2 = L15_2.moveBlend
                            if L32_2 and not L31_2 and not L27_2 and not L28_2 then
                              L32_2 = L15_2.isJumping
                              if not L32_2 then
                                L32_2 = L15_2.isVaulting
                                if not L32_2 then
                                  L32_2 = L15_2.isClimbing
                                  if not L32_2 then
                                    L32_2 = SetPedDesiredMoveBlendRatio
                                    L33_2 = L13_2
                                    L34_2 = L15_2.moveBlend
                                    L32_2(L33_2, L34_2)
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
            ::lbl_1935::
          end
          L4_2 = 1
          L5_2 = L40_1
          L5_2 = #L5_2
          L6_2 = 1
          for L7_2 = L4_2, L5_2, L6_2 do
            L8_2 = L40_1
            L8_2 = L8_2[L7_2]
            if not L8_2 then
            else
              L9_2 = L8_2.vehicleRec
              L10_2 = L9_2.frames
              L11_2 = #L10_2
              if L11_2 < 2 then
              else
                L12_2 = L8_2.endSec
                if not L12_2 then
                  L12_2 = L8_2.startSec
                  L13_2 = L9_2.duration
                  L12_2 = L12_2 + L13_2
                  L13_2 = L8_2.trimInSec
                  L12_2 = L12_2 - L13_2
                end
                L13_2 = L6_1
                L14_2 = L8_2.startSec
                if not (L13_2 < L14_2) then
                  L13_2 = L6_1
                  if not (L12_2 < L13_2) then
                    goto lbl_1990
                  end
                end
                L13_2 = L8_2.vehicleSpawn
                if L13_2 then
                  L13_2 = DoesEntityExist
                  L14_2 = L8_2.vehicleSpawn
                  L13_2 = L13_2(L14_2)
                  if L13_2 then
                    L13_2 = L8_2.driftSmoke
                    if L13_2 then
                      L13_2 = DriftSmoke
                      L13_2 = L13_2.stopPlayback
                      L14_2 = L8_2.driftSmoke
                      L13_2(L14_2)
                    end
                    L13_2 = DeleteEntity
                    L14_2 = L8_2.vehicleSpawn
                    L13_2(L14_2)
                    L8_2.vehicleSpawn = nil
                    L8_2.vehicleSpawning = false
                    goto lbl_2291
                    ::lbl_1990::
                    L13_2 = L6_1
                    L14_2 = L8_2.startSec
                    L13_2 = L13_2 - L14_2
                    L14_2 = L8_2.trimInSec
                    L13_2 = L13_2 + L14_2
                    L14_2 = L10_2[1]
                    L14_2 = L14_2.t
                    if not (L13_2 < L14_2) then
                      L14_2 = L9_2.duration
                      if not (L13_2 > L14_2) then
                        goto lbl_2025
                      end
                    end
                    L14_2 = L8_2.vehicleSpawn
                    if L14_2 then
                      L14_2 = DoesEntityExist
                      L15_2 = L8_2.vehicleSpawn
                      L14_2 = L14_2(L15_2)
                      if L14_2 then
                        L14_2 = L8_2.driftSmoke
                        if L14_2 then
                          L14_2 = DriftSmoke
                          L14_2 = L14_2.stopPlayback
                          L15_2 = L8_2.driftSmoke
                          L14_2(L15_2)
                        end
                        L14_2 = DeleteEntity
                        L15_2 = L8_2.vehicleSpawn
                        L14_2(L15_2)
                        L8_2.vehicleSpawn = nil
                        L8_2.vehicleSpawning = false
                        goto lbl_2291
                        ::lbl_2025::
                        L14_2 = L8_2.vehicleSpawn
                        if L14_2 then
                          L14_2 = DoesEntityExist
                          L15_2 = L8_2.vehicleSpawn
                          L14_2 = L14_2(L15_2)
                          if L14_2 then
                            goto lbl_2037
                          end
                        end
                        L14_2 = spawnOverlayVehicle
                        L15_2 = L7_2
                        L14_2(L15_2)
                        goto lbl_2291
                        ::lbl_2037::
                        L14_2 = L8_2.vehicleSpawn
                        while true do
                          L15_2 = L8_2.vehicleFrameIdx
                          L16_2 = L11_2 - 1
                          if not (L15_2 < L16_2) then
                            break
                          end
                          L15_2 = L8_2.vehicleFrameIdx
                          L15_2 = L15_2 + 1
                          L15_2 = L10_2[L15_2]
                          L15_2 = L15_2.t
                          if not (L13_2 >= L15_2) then
                            break
                          end
                          L15_2 = L8_2.vehicleFrameIdx
                          L15_2 = L15_2 + 1
                          L8_2.vehicleFrameIdx = L15_2
                        end
                        L15_2 = L8_2.vehicleFrameIdx
                        L16_2 = L10_2[L15_2]
                        L17_2 = math
                        L17_2 = L17_2.min
                        L18_2 = L15_2 + 1
                        L19_2 = L11_2
                        L17_2 = L17_2(L18_2, L19_2)
                        L17_2 = L10_2[L17_2]
                        L18_2 = L17_2.t
                        L19_2 = L16_2.t
                        L18_2 = L18_2 - L19_2
                        L19_2 = 0.001
                        if L18_2 > L19_2 then
                          L19_2 = math
                          L19_2 = L19_2.max
                          L20_2 = 0.0
                          L21_2 = math
                          L21_2 = L21_2.min
                          L22_2 = 1.0
                          L23_2 = L16_2.t
                          L23_2 = L13_2 - L23_2
                          L23_2 = L23_2 / L18_2
                          L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2 = L21_2(L22_2, L23_2)
                          L19_2 = L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2)
                          if L19_2 then
                            goto lbl_2087
                          end
                        end
                        L19_2 = 0.0
                        ::lbl_2087::
                        L20_2 = vector3
                        L21_2 = L16_2.px
                        L22_2 = L17_2.px
                        L23_2 = L16_2.px
                        L22_2 = L22_2 - L23_2
                        L22_2 = L22_2 * L19_2
                        L21_2 = L21_2 + L22_2
                        L22_2 = L16_2.py
                        L23_2 = L17_2.py
                        L24_2 = L16_2.py
                        L23_2 = L23_2 - L24_2
                        L23_2 = L23_2 * L19_2
                        L22_2 = L22_2 + L23_2
                        L23_2 = L16_2.pz
                        L24_2 = L17_2.pz
                        L25_2 = L16_2.pz
                        L24_2 = L24_2 - L25_2
                        L24_2 = L24_2 * L19_2
                        L23_2 = L23_2 + L24_2
                        L24_2 = L9_2.suspensionDelta
                        if not L24_2 then
                          L24_2 = 0.0
                        end
                        L23_2 = L23_2 + L24_2
                        L20_2 = L20_2(L21_2, L22_2, L23_2)
                        L21_2 = vector3
                        L22_2 = L16_2.vx
                        L23_2 = L17_2.vx
                        L24_2 = L16_2.vx
                        L23_2 = L23_2 - L24_2
                        L23_2 = L23_2 * L19_2
                        L22_2 = L22_2 + L23_2
                        L23_2 = L16_2.vy
                        L24_2 = L17_2.vy
                        L25_2 = L16_2.vy
                        L24_2 = L24_2 - L25_2
                        L24_2 = L24_2 * L19_2
                        L23_2 = L23_2 + L24_2
                        L24_2 = L16_2.vz
                        L25_2 = L17_2.vz
                        L26_2 = L16_2.vz
                        L25_2 = L25_2 - L26_2
                        L25_2 = L25_2 * L19_2
                        L24_2 = L24_2 + L25_2
                        L21_2 = L21_2(L22_2, L23_2, L24_2)
                        L22_2 = lerpAngle
                        L23_2 = L16_2.rx
                        L24_2 = L17_2.rx
                        L25_2 = L19_2
                        L22_2 = L22_2(L23_2, L24_2, L25_2)
                        L23_2 = lerpAngle
                        L24_2 = L16_2.ry
                        L25_2 = L17_2.ry
                        L26_2 = L19_2
                        L23_2 = L23_2(L24_2, L25_2, L26_2)
                        L24_2 = lerpAngle
                        L25_2 = L16_2.rz
                        L26_2 = L17_2.rz
                        L27_2 = L19_2
                        L24_2 = L24_2(L25_2, L26_2, L27_2)
                        L25_2 = L16_2.steer
                        L26_2 = L17_2.steer
                        L27_2 = L16_2.steer
                        L26_2 = L26_2 - L27_2
                        L26_2 = L26_2 * L19_2
                        L25_2 = L25_2 + L26_2
                        L26_2 = L16_2.rpm
                        if L26_2 then
                          L26_2 = L16_2.rpm
                          L27_2 = L17_2.rpm
                          if not L27_2 then
                            L27_2 = L16_2.rpm
                          end
                          L28_2 = L16_2.rpm
                          L27_2 = L27_2 - L28_2
                          L27_2 = L27_2 * L19_2
                          L26_2 = L26_2 + L27_2
                          if L26_2 then
                            goto lbl_2193
                          end
                        end
                        L26_2 = nil
                        ::lbl_2193::
                        L27_2 = IsEntityOnScreen
                        L28_2 = L14_2
                        L27_2 = L27_2(L28_2)
                        if L27_2 then
                          L27_2 = FreezeEntityPosition
                          L28_2 = L14_2
                          L29_2 = false
                          L27_2(L28_2, L29_2)
                          L27_2 = GetEntityCoords
                          L28_2 = L14_2
                          L27_2 = L27_2(L28_2)
                          L28_2 = L20_2 - L27_2
                          L28_2 = L28_2 * 15.0
                          L29_2 = SetEntityRotation
                          L30_2 = L14_2
                          L31_2 = L22_2
                          L32_2 = L23_2
                          L33_2 = L24_2
                          L34_2 = 2
                          L35_2 = true
                          L29_2(L30_2, L31_2, L32_2, L33_2, L34_2, L35_2)
                          L29_2 = SetVehicleSteeringAngle
                          L30_2 = L14_2
                          L31_2 = L25_2
                          L29_2(L30_2, L31_2)
                          if L26_2 then
                            L29_2 = SetVehicleCurrentRpm
                            L30_2 = L14_2
                            L31_2 = L26_2
                            L29_2(L30_2, L31_2)
                          end
                          L29_2 = L16_2.handbrake
                          if nil ~= L29_2 then
                            L29_2 = SetVehicleHandbrake
                            L30_2 = L14_2
                            L31_2 = L16_2.handbrake
                            if L31_2 then
                              L31_2 = true
                              if L31_2 then
                                goto lbl_2239
                              end
                            end
                            L31_2 = false
                            ::lbl_2239::
                            L29_2(L30_2, L31_2)
                          end
                          L29_2 = SetEntityVelocity
                          L30_2 = L14_2
                          L31_2 = L21_2 + L28_2
                          L29_2(L30_2, L31_2)
                          L29_2 = L8_2.driftSmoke
                          if not L29_2 then
                            L29_2 = {}
                            L29_2.active = false
                            L8_2.driftSmoke = L29_2
                          end
                          L29_2 = DriftSmoke
                          L29_2 = L29_2.applyToPlayback
                          L30_2 = L14_2
                          L31_2 = L8_2.driftSmoke
                          L32_2 = L26_2
                          L29_2(L30_2, L31_2, L32_2)
                        else
                          L27_2 = FreezeEntityPosition
                          L28_2 = L14_2
                          L29_2 = true
                          L27_2(L28_2, L29_2)
                          L27_2 = SetEntityCoordsNoOffset
                          L28_2 = L14_2
                          L29_2 = L20_2.x
                          L30_2 = L20_2.y
                          L31_2 = L20_2.z
                          L32_2 = false
                          L33_2 = false
                          L34_2 = false
                          L27_2(L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2)
                          L27_2 = SetEntityRotation
                          L28_2 = L14_2
                          L29_2 = L22_2
                          L30_2 = L23_2
                          L31_2 = L24_2
                          L32_2 = 2
                          L33_2 = true
                          L27_2(L28_2, L29_2, L30_2, L31_2, L32_2, L33_2)
                          L27_2 = L8_2.driftSmoke
                          if L27_2 then
                            L27_2 = L8_2.driftSmoke
                            L27_2 = L27_2.active
                            if L27_2 then
                              L27_2 = DriftSmoke
                              L27_2 = L27_2.stopPlayback
                              L28_2 = L8_2.driftSmoke
                              L27_2(L28_2)
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
            ::lbl_2291::
          end
        end
        L4_2 = L69_1
        L5_2 = L5_1
        L4_2(L5_2)
        L4_2 = L5_1
        L4_2 = L4_2 % 3
        if 0 == L4_2 then
          L4_2 = SendNUIMessage
          L5_2 = {}
          L5_2.type = "frameUpdate"
          L6_2 = L5_1
          L5_2.frame = L6_2
          L4_2(L5_2)
        end
        L4_2 = IsControlJustPressed
        L5_2 = 0
        L6_2 = 177
        L4_2 = L4_2(L5_2, L6_2)
        if not L4_2 then
          L4_2 = IsControlJustPressed
          L5_2 = 0
          L6_2 = 200
          L4_2 = L4_2(L5_2, L6_2)
          if not L4_2 then
            goto lbl_2321
          end
        end
        L4_2 = stopPlayback
        L4_2()
      end
    end
    ::lbl_2321::
  end
end
L80_1(L81_1)
L80_1 = AddEventHandler
L81_1 = "onResourceStop"
function L82_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 ~= L1_2 then
    return
  end
  L1_2 = pairs
  L2_2 = L47_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L48_1
    L7_2[L5_2] = nil
    L7_2 = L6_2.driverPed
    if L7_2 then
      L7_2 = DoesEntityExist
      L8_2 = L6_2.driverPed
      L7_2 = L7_2(L8_2)
      if L7_2 then
        L7_2 = DeleteEntity
        L8_2 = L6_2.driverPed
        L7_2(L8_2)
      end
    end
    L7_2 = L6_2.entityHandle
    if L7_2 then
      L7_2 = DoesEntityExist
      L8_2 = L6_2.entityHandle
      L7_2 = L7_2(L8_2)
      if L7_2 then
        L7_2 = DeleteEntity
        L8_2 = L6_2.entityHandle
        L7_2(L8_2)
      end
    end
  end
  L1_2 = {}
  L47_1 = L1_2
  L1_2 = pairs
  L2_2 = L16_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    if L6_2 then
      L7_2 = DoesEntityExist
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      if L7_2 then
        L7_2 = DeleteEntity
        L8_2 = L6_2
        L7_2(L8_2)
      end
    end
  end
  L1_2 = {}
  L16_1 = L1_2
  L1_2 = {}
  L17_1 = L1_2
  L1_2 = pairs
  L2_2 = L27_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    if L6_2 then
      L7_2 = DoesEntityExist
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      if L7_2 then
        L7_2 = DeleteEntity
        L8_2 = L6_2
        L7_2(L8_2)
      end
    end
  end
  L1_2 = {}
  L27_1 = L1_2
  L1_2 = {}
  L28_1 = L1_2
  L1_2 = cleanupOverlaySpawns
  L1_2()
  L1_2 = {}
  L40_1 = L1_2
  L1_2 = L71_1
  if L1_2 then
    L1_2 = DoesEntityExist
    L2_2 = L71_1
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = DeleteEntity
      L2_2 = L71_1
      L1_2(L2_2)
    end
  end
  L1_2 = nil
  L71_1 = L1_2
  L1_2 = despawnCameraProp
  L1_2()
  L1_2 = pairs
  L2_2 = L54_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.prop
    if L7_2 then
      L7_2 = DoesEntityExist
      L8_2 = L6_2.prop
      L7_2 = L7_2(L8_2)
      if L7_2 then
        L7_2 = DeleteEntity
        L8_2 = L6_2.prop
        L7_2(L8_2)
      end
    end
  end
  L1_2 = {}
  L54_1 = L1_2
  L1_2 = L3_1
  if L1_2 then
    L1_2 = DoesCamExist
    L2_2 = L3_1
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = DestroyCam
      L2_2 = L3_1
      L3_2 = false
      L1_2(L2_2, L3_2)
    end
  end
  L1_2 = nil
  L3_1 = L1_2
  L1_2 = L76_1
  if L1_2 then
    L1_2 = DoesCamExist
    L2_2 = L76_1
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = DestroyCam
      L2_2 = L76_1
      L3_2 = false
      L1_2(L2_2, L3_2)
    end
  end
  L1_2 = nil
  L76_1 = L1_2
  L1_2 = ipairs
  L2_2 = L8_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    if L6_2 then
      L7_2 = DoesCamExist
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      if L7_2 then
        L7_2 = DestroyCam
        L8_2 = L6_2
        L9_2 = false
        L7_2(L8_2, L9_2)
      end
    end
  end
  L1_2 = {}
  L8_1 = L1_2
  L1_2 = RenderScriptCams
  L2_2 = false
  L3_2 = false
  L4_2 = 0
  L5_2 = true
  L6_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = DoesEntityExist
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = SetEntityVisible
    L3_2 = L1_2
    L4_2 = true
    L5_2 = false
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = ResetEntityAlpha
    L3_2 = L1_2
    L2_2(L3_2)
    L2_2 = SetEntityCollision
    L3_2 = L1_2
    L4_2 = true
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = SetEntityLocallyInvisible
    L3_2 = L1_2
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = SetLocalPlayerVisibleLocally
    L3_2 = true
    L2_2(L3_2)
    L2_2 = FreezeEntityPosition
    L3_2 = L1_2
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L2_2 = L20_1
  if L2_2 then
    L2_2 = TriggerServerEvent
    L3_2 = "core_cinematics:leaveBucket"
    L2_2(L3_2)
    L2_2 = false
    L20_1 = L2_2
  end
  L2_2 = false
  L15_1 = L2_2
  L2_2 = SetNuiFocus
  L3_2 = false
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L80_1(L81_1, L82_1)
L80_1 = AddEventHandler
L81_1 = "onResourceStop"
function L82_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 ~= L1_2 then
    return
  end
  L1_2 = pairs
  L2_2 = L25_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = DriftSmoke
    L7_2 = L7_2.stopPlayback
    L8_2 = L6_2
    L7_2(L8_2)
  end
  L1_2 = ipairs
  L2_2 = L40_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.driftSmoke
    if L7_2 then
      L7_2 = DriftSmoke
      L7_2 = L7_2.stopPlayback
      L8_2 = L6_2.driftSmoke
      L7_2(L8_2)
    end
  end
end
L80_1(L81_1, L82_1)

