local L0_1, L1_1, L2_1, L3_1
function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = GLOBALS
  L0_2 = L0_2.CHARACTER
  L0_2 = L0_2.IS_ALLOWED
  if L0_2 then
    L0_2 = CL_CONFIG
    L0_2 = L0_2.OpenPanelWithItem
    if L0_2 then
      L0_2 = FRAMEWORK
      L0_2 = L0_2.HasItem
      L1_2 = CL_CONFIG
      L1_2 = L1_2.ItemToOpenPanel
      L0_2 = L0_2(L1_2)
      if L0_2 then
        L0_2 = SendReactMessage
        L1_2 = "SET_SHOW"
        L2_2 = true
        L0_2(L1_2, L2_2)
        L0_2 = ToggleTablet
        L1_2 = true
        L0_2(L1_2)
        L0_2 = SetNuiFocus
        L1_2 = true
        L2_2 = true
        L0_2(L1_2, L2_2)
        L0_2 = CL_CONFIG
        L0_2 = L0_2.EnableRadioOnPanel
        if L0_2 then
          L0_2 = SetNuiFocusKeepInput
          L1_2 = true
          L0_2(L1_2)
        end
        L0_2 = GLOBALS
        L0_2 = L0_2.UTILS
        L0_2.MAP_OPENED = true
      else
        L0_2 = Notify
        L1_2 = _U
        L2_2 = "NO_ITEM_PANEL"
        L1_2, L2_2 = L1_2(L2_2)
        L0_2(L1_2, L2_2)
      end
    else
      L0_2 = SendReactMessage
      L1_2 = "SET_SHOW"
      L2_2 = true
      L0_2(L1_2, L2_2)
      L0_2 = ToggleTablet
      L1_2 = true
      L0_2(L1_2)
      L0_2 = SetNuiFocus
      L1_2 = true
      L2_2 = true
      L0_2(L1_2, L2_2)
      L0_2 = CL_CONFIG
      L0_2 = L0_2.EnableRadioOnPanel
      if L0_2 then
        L0_2 = SetNuiFocusKeepInput
        L1_2 = true
        L0_2(L1_2)
      end
      L0_2 = GLOBALS
      L0_2 = L0_2.UTILS
      L0_2.MAP_OPENED = true
    end
  end
end
OpenNuiMap = L0_1
L0_1 = exports
L1_1 = "OpenNuiMap"
L2_1 = OpenNuiMap
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "rcore_dispatch:client:openNuiMap"
L2_1 = OpenNuiMap
L0_1(L1_1, L2_1)
function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = GLOBALS
  L1_2 = L1_2.CHARACTER
  L1_2 = L1_2.IS_ALLOWED
  if L1_2 then
    if nil ~= A0_2 then
      L1_2 = GLOBALS
      L1_2 = L1_2.UTILS
      L1_2.SWITCHBOARD_OPENED = A0_2
      L1_2 = SendReactMessage
      L2_2 = "TOGGLE_SWITCHBOARD"
      L3_2 = A0_2
      L1_2(L2_2, L3_2)
      return
    end
    L1_2 = GLOBALS
    L1_2 = L1_2.UTILS
    L2_2 = GLOBALS
    L2_2 = L2_2.UTILS
    L2_2 = L2_2.SWITCHBOARD_OPENED
    L2_2 = not L2_2
    L1_2.SWITCHBOARD_OPENED = L2_2
    L1_2 = SendReactMessage
    L2_2 = "TOGGLE_SWITCHBOARD"
    L3_2 = GLOBALS
    L3_2 = L3_2.UTILS
    L3_2 = L3_2.SWITCHBOARD_OPENED
    L1_2(L2_2, L3_2)
  end
end
ToggleSwitchboard = L0_1
function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = GLOBALS
  L0_2 = L0_2.CHARACTER
  L0_2 = L0_2.IS_ALLOWED
  if L0_2 then
    L0_2 = GLOBALS
    L0_2 = L0_2.UTILS
    L0_2 = L0_2.SWITCHBOARD_OPENED
    if L0_2 then
      L0_2 = SetNuiFocus
      L1_2 = true
      L2_2 = true
      L0_2(L1_2, L2_2)
      L0_2 = GLOBALS
      L0_2 = L0_2.UTILS
      L0_2.SWITCHBOARD_CONFIG_OPENED = true
      L0_2 = CL_CONFIG
      L0_2 = L0_2.MoveOnConfigSwitch
      if L0_2 then
        L0_2 = SetNuiFocusKeepInput
        L1_2 = true
        L0_2(L1_2)
      end
      L0_2 = SendReactMessage
      L1_2 = "OPEN_CONFIG_SWITCHBOARD"
      L0_2(L1_2)
    end
  end
end
OpenSwitchBoardConfig = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    if nil ~= L7_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L1_2
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
  return L1_2
end
RemoveNilFromArray = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = {}
  L2_2 = pairs
  L3_2 = GLOBALS
  L3_2 = L3_2.ALERTS
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    if L7_2 then
      L8_2 = L7_2.removed
      if not L8_2 then
        L8_2 = L7_2.removed_from_server
        if not L8_2 then
          L8_2 = L7_2.coords
          L9_2 = GetEntityCoords
          L10_2 = L0_2
          L9_2 = L9_2(L10_2)
          L8_2 = L8_2 - L9_2
          L8_2 = #L8_2
          L9_2 = L8_2 / 1000
          L10_2 = math
          L10_2 = L10_2.floor
          L11_2 = L9_2 * 100
          L11_2 = L11_2 + 0.5
          L10_2 = L10_2(L11_2)
          L9_2 = L10_2 / 100
          L10_2 = " km"
          L11_2 = CL_CONFIG
          L11_2 = L11_2.UsingMilesPerHour
          if L11_2 then
            L9_2 = L9_2 * 0.621371
            L11_2 = string
            L11_2 = L11_2.format
            L12_2 = "%.2f"
            L13_2 = L9_2
            L11_2 = L11_2(L12_2, L13_2)
            L9_2 = L11_2
            L10_2 = " mi"
          end
          L11_2 = tostring
          L12_2 = L9_2
          L11_2 = L11_2(L12_2)
          L12_2 = L10_2
          L11_2 = L11_2 .. L12_2
          L7_2.distance = L11_2
          L12_2 = L7_2.text
          L13_2 = L12_2
          L12_2 = L12_2.gsub
          L14_2 = "{distance}"
          L15_2 = L11_2
          L12_2 = L12_2(L13_2, L14_2, L15_2)
          L7_2.text = L12_2
          L12_2 = table
          L12_2 = L12_2.insert
          L13_2 = L1_2
          L14_2 = L7_2
          L12_2(L13_2, L14_2)
        end
      end
    end
  end
  return L1_2
end
DontSendRemovedLOL = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2
  L1_2 = false
  L2_2 = FRAMEWORK
  L2_2 = L2_2.GetPlayerJob
  L2_2 = L2_2()
  L3_2 = pairs
  L4_2 = GLOBALS
  L4_2 = L4_2.RADIO
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = CONFIG
    L9_2 = L9_2.JOBS
    L9_2 = L9_2[L2_2]
    L9_2 = L9_2.Units
    L10_2 = pairs
    L11_2 = L9_2
    L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
    for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
      L16_2 = L15_2[1]
      if L16_2 == L7_2 then
        L16_2 = pairs
        L17_2 = L8_2
        L16_2, L17_2, L18_2, L19_2 = L16_2(L17_2)
        for L20_2, L21_2 in L16_2, L17_2, L18_2, L19_2 do
          L22_2 = tonumber
          L23_2 = L21_2.id
          L22_2 = L22_2(L23_2)
          L23_2 = tonumber
          L24_2 = A0_2
          L23_2 = L23_2(L24_2)
          if L22_2 == L23_2 then
            L22_2 = L15_2[3]
            if L22_2 then
              L1_2 = true
            end
          end
        end
      end
    end
  end
  return L1_2
end
IsPlayerInATac = L0_1
function L0_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L5_2 = CONFIG
  L5_2 = L5_2.Features
  L5_2 = L5_2.radio
  if not L5_2 then
    return
  end
  L5_2 = Citizen
  L5_2 = L5_2.Await
  L6_2 = LOADED_CLIENT
  L5_2(L6_2)
  L5_2 = Citizen
  L5_2 = L5_2.Await
  L6_2 = LOADED_RADIO
  L5_2(L6_2)
  L5_2 = false
  L6_2 = dbg
  L6_2 = L6_2.info
  L7_2 = "Loading user "
  L8_2 = A0_2
  L9_2 = " to unit "
  L10_2 = A2_2
  L11_2 = " with data "
  L12_2 = json
  L12_2 = L12_2.encode
  L13_2 = GLOBALS
  L13_2 = L13_2.RADIO
  L14_2 = {}
  L14_2.indent = true
  L12_2 = L12_2(L13_2, L14_2)
  L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2
  L6_2(L7_2)
  L6_2 = GLOBALS
  L6_2 = L6_2.RADIO
  L6_2 = L6_2[A2_2]
  if not L6_2 then
    L6_2 = dbg
    L6_2 = L6_2.error
    L7_2 = "Radio not loaded"
    return L6_2(L7_2)
  end
  L6_2 = pairs
  L7_2 = GLOBALS
  L7_2 = L7_2.RADIO
  L7_2 = L7_2[A2_2]
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = tonumber
    L13_2 = L11_2.id
    L12_2 = L12_2(L13_2)
    L13_2 = tonumber
    L14_2 = A0_2
    L13_2 = L13_2(L14_2)
    if L12_2 == L13_2 then
      L5_2 = true
    end
  end
  if not L5_2 then
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = GLOBALS
    L7_2 = L7_2.RADIO
    L7_2 = L7_2[A2_2]
    L8_2 = {}
    L8_2.id = A0_2
    L8_2.name = A1_2
    L8_2.unit = A2_2
    L8_2.available = A3_2
    L8_2.job = A4_2
    L6_2(L7_2, L8_2)
  end
  L6_2 = {}
  L7_2 = pairs
  L8_2 = GLOBALS
  L8_2 = L8_2.RADIO
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
    L13_2 = pairs
    L14_2 = L12_2
    L13_2, L14_2, L15_2, L16_2 = L13_2(L14_2)
    for L17_2, L18_2 in L13_2, L14_2, L15_2, L16_2 do
      L19_2 = IsPlayerInATac
      L20_2 = L18_2.id
      L19_2 = L19_2(L20_2)
      if not L19_2 then
        L19_2 = L18_2.job
        L20_2 = GLOBALS
        L20_2 = L20_2.CHARACTER
        L20_2 = L20_2.JOB
        if L19_2 == L20_2 then
          L19_2 = tonumber
          L20_2 = L18_2.id
          L19_2 = L19_2(L20_2)
          L6_2[L19_2] = false
        end
      end
    end
  end
  L7_2 = GLOBALS
  L7_2 = L7_2.GLOBAL_RADIO_TYPE
  if "job" ~= L7_2 then
    L7_2 = GLOBALS
    L7_2 = L7_2.GLOBAL_RADIO_TYPE
    if "all" == L7_2 then
      L7_2 = pairs
      L8_2 = GLOBALS
      L8_2 = L8_2.RELATED_JOBS
      L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
      for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
        L13_2 = pairs
        L14_2 = L12_2
        L13_2, L14_2, L15_2, L16_2 = L13_2(L14_2)
        for L17_2, L18_2 in L13_2, L14_2, L15_2, L16_2 do
          L19_2 = tonumber
          L20_2 = L18_2
          L19_2 = L19_2(L20_2)
          L6_2[L19_2] = false
        end
      end
    else
      L7_2 = GLOBALS
      L7_2 = L7_2.RELATED_JOBS
      L8_2 = GLOBALS
      L8_2 = L8_2.GLOBAL_RADIO_TYPE
      L7_2 = L7_2[L8_2]
      if L7_2 then
        L7_2 = pairs
        L8_2 = GLOBALS
        L8_2 = L8_2.RELATED_JOBS
        L9_2 = GLOBALS
        L9_2 = L9_2.GLOBAL_RADIO_TYPE
        L8_2 = L8_2[L9_2]
        L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
        for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
          L13_2 = tonumber
          L14_2 = L12_2
          L13_2 = L13_2(L14_2)
          L6_2[L13_2] = false
        end
      end
    end
  end
  L7_2 = TriggerEvent
  L8_2 = "rcore_dispatch:client:syncGRadio"
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
end
AddUserToRadio = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = CONFIG
  L1_2 = L1_2.Features
  L1_2 = L1_2.radio
  if not L1_2 then
    return
  end
  L1_2 = false
  L2_2 = pairs
  L3_2 = GLOBALS
  L3_2 = L3_2.RADIO
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = pairs
    L9_2 = L7_2
    L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
    for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
      L14_2 = tonumber
      L15_2 = L13_2.id
      L14_2 = L14_2(L15_2)
      L15_2 = tonumber
      L16_2 = A0_2
      L15_2 = L15_2(L16_2)
      if L14_2 == L15_2 then
        L1_2 = true
        L14_2 = table
        L14_2 = L14_2.remove
        L15_2 = L7_2
        L16_2 = L12_2
        L14_2(L15_2, L16_2)
      end
    end
  end
  if not L1_2 then
    return
  end
  L2_2 = {}
  L3_2 = pairs
  L4_2 = GLOBALS
  L4_2 = L4_2.RADIO
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = pairs
    L10_2 = L8_2
    L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
    for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
      L15_2 = IsPlayerInATac
      L16_2 = L14_2.id
      L15_2 = L15_2(L16_2)
      if not L15_2 then
        L15_2 = L14_2.job
        L16_2 = GLOBALS
        L16_2 = L16_2.CHARACTER
        L16_2 = L16_2.JOB
        if L15_2 == L16_2 then
          L15_2 = tonumber
          L16_2 = L14_2.id
          L15_2 = L15_2(L16_2)
          L2_2[L15_2] = false
        end
      end
    end
  end
  L3_2 = dbg
  L3_2 = L3_2.info
  L4_2 = "User with id "
  L5_2 = A0_2
  L6_2 = " removed from radio and type "
  L7_2 = type
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2
  L3_2(L4_2)
  L3_2 = TriggerEvent
  L4_2 = "rcore_dispatch:client:syncGRadio"
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
RemoveUserFromRadio = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = pairs
  L1_2 = BLIPS_ALERTS
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    if L5_2 then
      L6_2 = BLIPS_ALERTS
      L6_2[L4_2] = nil
      L6_2 = RemoveBlip
      L7_2 = L5_2
      L6_2(L7_2)
    end
  end
end
RemoveMapBlips = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L0_2 = {}
  L1_2 = pairs
  L2_2 = GLOBALS
  L2_2 = L2_2.UNITS
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = {}
    L0_2[L5_2] = L7_2
    L7_2 = pairs
    L8_2 = L6_2
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
    for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
      L13_2 = L12_2.id
      if L13_2 then
        L13_2 = L0_2[L5_2]
        L14_2 = tonumber
        L15_2 = L12_2.id
        L14_2 = L14_2(L15_2)
        L13_2[L14_2] = L12_2
      end
    end
  end
  L1_2 = GLOBALS
  L1_2.UNITS = L0_2
  L1_2 = dbg
  L1_2 = L1_2.info
  L2_2 = "Converting to \"array\""
  L1_2(L2_2)
end
ConvertUnitsToArray = L0_1
function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = IsPedInAnyHeli
  L2_2 = L0_2
  return L1_2(L2_2)
end
IsPlayerInHelicopter = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = 0
  L1_2 = pairs
  L2_2 = GLOBALS
  L2_2 = L2_2.ALERTS
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    if L6_2 then
      L7_2 = CountTableElements
      L8_2 = L6_2.units
      L7_2 = L7_2(L8_2)
      if 0 == L7_2 then
        L6_2.removed = true
      end
      L7_2 = L6_2.removed
      if L7_2 then
        L0_2 = L0_2 + 1
      end
    end
  end
  L1_2 = RemoveMapBlips
  L1_2()
  L1_2 = CountTableElements
  L2_2 = GLOBALS
  L2_2 = L2_2.ALERTS
  L1_2 = L1_2(L2_2)
  if L0_2 == L1_2 then
    L1_2 = CL_CONFIG
    L1_2 = L1_2.HideIfNoAlerts
    if L1_2 then
      L1_2 = ToggleSwitchboard
      L2_2 = false
      L1_2(L2_2)
    end
  end
  L1_2 = SendReactMessage
  L2_2 = "LOAD_ALERTS"
  L3_2 = DontSendRemovedLOL
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2()
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3
    L0_3 = Wait
    L1_3 = 100
    L0_3(L1_3)
    L0_3 = SendReactMessage
    L1_3 = "LOAD_SWITCHBOARD_POSITION"
    L0_3(L1_3)
  end
  L1_2(L2_2)
end
RemoveAllAlertsNUI = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = GetResourceState
  L2_2 = "screenshot-basic"
  L1_2 = L1_2(L2_2)
  if "started" ~= L1_2 then
    L1_2 = dbg
    L1_2 = L1_2.error
    L2_2 = "Screenshot basic is not started"
    L1_2(L2_2)
    return
  end
  L1_2 = exports
  L1_2 = L1_2["screenshot-basic"]
  L2_2 = L1_2
  L1_2 = L1_2.requestScreenshotUpload
  L3_2 = CL_CONFIG
  L3_2 = L3_2.CarRobberyPictureWebhook
  L4_2 = "files[]"
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = json
    L1_3 = L1_3.decode
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    L2_3 = L1_3.attachments
    L2_3 = L2_3[1]
    if not L2_3 then
      return
    end
    L2_3 = A0_2
    L3_3 = L1_3.attachments
    L3_3 = L3_3[1]
    L3_3 = L3_3.proxy_url
    L2_3(L3_3)
  end
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
TakeScreenshot = L0_1
L0_1 = ProvideExport
L1_1 = "GetPlayerInfo"
L2_1 = "cd_dispatch"
L3_1 = GetPlayerData
L0_1(L1_1, L2_1, L3_1)
L0_1 = ProvideExport
L1_1 = "GetPlayerInfo"
L2_1 = "qs-dispatch"
L3_1 = GetPlayerData
L0_1(L1_1, L2_1, L3_1)
L0_1 = ProvideExport
L1_1 = "GetSSURL"
L2_1 = "qs-dispatch"
L3_1 = TakeScreenshot
L0_1(L1_1, L2_1, L3_1)
L0_1 = ProvideExport
L1_1 = "getSSURL"
L2_1 = "qs-dispatch"
L3_1 = TakeScreenshot
L0_1(L1_1, L2_1, L3_1)
