local L0_1, L1_1, L2_1, L3_1
L0_1 = RegisterNUICallback
L1_1 = "CLOSE_APP"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = SetNuiFocus
    L1_3 = false
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = SetNuiFocusKeepInput
    L1_3 = false
    L0_3(L1_3)
    L0_3 = ToggleTablet
    L1_3 = false
    L0_3(L1_3)
    L0_3 = Wait
    L1_3 = 120
    L0_3(L1_3)
    L0_3 = GLOBALS
    L0_3 = L0_3.UTILS
    L0_3.MAP_OPENED = false
    L0_3 = GLOBALS
    L0_3 = L0_3.UTILS
    L0_3.SWITCHBOARD_CONFIG_OPENED = false
    L0_3 = SendReactMessage
    L1_3 = "CLOSE_CONFIG_SWITCHBOARD"
    L0_3(L1_3)
    L0_3 = A1_2
    L1_3 = "ok"
    L0_3(L1_3)
  end
  L2_2(L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "HANDLE_UNIT_CHANGE"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CONFIG
  L2_2 = L2_2.EnableOwnUnitChange
  if not L2_2 then
    L2_2 = GLOBALS
    L2_2 = L2_2.CHARACTER
    L2_2 = L2_2.HAS_PERMS
    if not L2_2 then
      L2_2 = A1_2
      L3_2 = "error"
      L2_2(L3_2)
      L2_2 = SendReactMessage
      L3_2 = "UPDATE_UNITS"
      L4_2 = GLOBALS
      L4_2 = L4_2.UNITS
      L2_2(L3_2, L4_2)
      L2_2 = SendReactMessage
      L3_2 = "NOTIFY"
      L4_2 = _U
      L5_2 = "PERMS"
      L4_2, L5_2, L6_2 = L4_2(L5_2)
      return L2_2(L3_2, L4_2, L5_2, L6_2)
    end
  end
  L2_2 = TriggerServerEvent
  L3_2 = "rcore_dispatch:server:sendLog"
  L4_2 = "unit_user_changed"
  L5_2 = A0_2.unit
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = TriggerServerEvent
  L3_2 = "rcore_dispatch:server:actionTriggered"
  L4_2 = "change_unit"
  L5_2 = A0_2.id
  L6_2 = A0_2.unit
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "HANDLE_OWN_UNIT_CHANGE"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CONFIG
  L2_2 = L2_2.EnableOwnUnitChange
  if not L2_2 then
    L2_2 = GLOBALS
    L2_2 = L2_2.CHARACTER
    L2_2 = L2_2.HAS_PERMS
    if not L2_2 then
      L2_2 = A1_2
      L3_2 = "error"
      L2_2(L3_2)
      L2_2 = SendReactMessage
      L3_2 = "UPDATE_UNITS"
      L4_2 = GLOBALS
      L4_2 = L4_2.UNITS
      L2_2(L3_2, L4_2)
      L2_2 = SendReactMessage
      L3_2 = "NOTIFY"
      L4_2 = _U
      L5_2 = "PERMS"
      L4_2, L5_2, L6_2 = L4_2(L5_2)
      return L2_2(L3_2, L4_2, L5_2, L6_2)
    end
  end
  L2_2 = TriggerServerEvent
  L3_2 = "rcore_dispatch:server:sendLog"
  L4_2 = "unit_changed"
  L5_2 = A0_2.unit
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = TriggerServerEvent
  L3_2 = "rcore_dispatch:server:actionTriggered"
  L4_2 = "change_unit"
  L5_2 = GLOBALS
  L5_2 = L5_2.CHARACTER
  L5_2 = L5_2.ID
  L6_2 = A0_2.unit
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "SUBRSCRIBE_ALERT"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2.id
  if not L2_2 then
    return
  end
  L3_2 = GLOBALS
  L3_2 = L3_2.CHARACTER
  L3_2 = L3_2.UNIT
  L4_2 = _U
  L5_2 = "ASSIGN"
  L4_2 = L4_2(L5_2)
  if L3_2 == L4_2 then
    L3_2 = CL_CONFIG
    L3_2 = L3_2.SubscribeAlertWithoutUnit
    if L3_2 then
      L3_2 = nil
      L4_2 = pairs
      L5_2 = GLOBALS
      L5_2 = L5_2.ALERTS
      L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
      for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
        L10_2 = L9_2.id
        if L10_2 == L2_2 then
          L3_2 = L9_2
        end
      end
      if not L3_2 then
        return
      end
      L4_2 = L3_2.coords
      if not L4_2 then
        return
      end
      L4_2 = SetWaypointOff
      L4_2()
      L4_2 = CreateThread
      function L5_2()
        local L0_3, L1_3, L2_3
        L0_3 = Wait
        L1_3 = 150
        L0_3(L1_3)
        L0_3 = SetNewWaypoint
        L1_3 = L3_2.coords
        L1_3 = L1_3.x
        L2_3 = L3_2.coords
        L2_3 = L2_3.y
        L0_3(L1_3, L2_3)
      end
      L4_2(L5_2)
      L4_2 = A1_2
      L5_2 = "ok"
      L4_2(L5_2)
    end
    L3_2 = CL_CONFIG
    L3_2 = L3_2.SubscribeAlertWithoutUnit
    if not L3_2 then
      L3_2 = Notify
      L4_2 = _U
      L5_2 = "CHANGE_UN_FROM_ASSIGN"
      L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2)
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
      L3_2 = A1_2
      L4_2 = "ok"
      L3_2(L4_2)
      L3_2 = SendReactMessage
      L4_2 = "NOTIFY"
      L5_2 = _U
      L6_2 = "CHANGE_UN_FROM_ASSIGN"
      L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2)
      return L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    end
  end
  L3_2 = TriggerServerEvent
  L4_2 = "rcore_dispatch:server:sendLog"
  L5_2 = "subscribe_alert"
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = TriggerServerEvent
  L4_2 = "rcore_dispatch:server:actionTriggered"
  L5_2 = "subscribe_alert"
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "TOGGLE_REF"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerServerEvent
  L3_2 = "rcore_dispatch:server:actionTriggered"
  L4_2 = "toggle_ref"
  L5_2 = A0_2.status
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A1_2
  L3_2 = "Ok"
  L2_2(L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "REMOVE_SAVED_DRAW"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.id
  if not L2_2 then
    L2_2 = A1_2
    L3_2 = "error"
    return L2_2(L3_2)
  end
  L2_2 = TriggerServerEvent
  L3_2 = "rcore_dispatch:server:removeDraw"
  L4_2 = A0_2.id
  L2_2(L3_2, L4_2)
  L2_2 = SetTimeout
  L3_2 = 1500
  function L4_2()
    local L0_3, L1_3
    L0_3 = A1_2
    L1_3 = "ok"
    L0_3(L1_3)
  end
  L2_2(L3_2, L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "UNSUBRSCRIBE_ALERT"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.id
  if not L2_2 then
    return
  end
  L3_2 = GLOBALS
  L3_2 = L3_2.CHARACTER
  L3_2 = L3_2.UNIT
  L4_2 = _U
  L5_2 = "ASSIGN"
  L4_2 = L4_2(L5_2)
  if L3_2 == L4_2 then
    L3_2 = Notify
    L4_2 = _U
    L5_2 = "CHANGE_UN_FROM_ASSIGN"
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = SendReactMessage
    L4_2 = "NOTIFY"
    L5_2 = _U
    L6_2 = "CHANGE_UN_FROM_ASSIGN"
    L5_2, L6_2 = L5_2(L6_2)
    return L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = TriggerServerEvent
  L4_2 = "rcore_dispatch:server:sendLog"
  L5_2 = "unsubscribe_alert"
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = TriggerServerEvent
  L4_2 = "rcore_dispatch:server:actionTriggered"
  L5_2 = "unsubscribe_alert"
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNuiCallback
L1_1 = "NOTIFY"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = Notify
  L3_2 = A0_2.text
  L2_2(L3_2)
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "REMOVE_ALERT"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = 0
  L3_2 = pairs
  L4_2 = GLOBALS
  L4_2 = L4_2.ALERTS
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    if L8_2 then
      L9_2 = tonumber
      L10_2 = L8_2.id
      L9_2 = L9_2(L10_2)
      L10_2 = tonumber
      L11_2 = A0_2.id
      L10_2 = L10_2(L11_2)
      if L9_2 == L10_2 then
        L9_2 = RemoveMapBlips
        L9_2()
        L8_2.removed = true
      end
      L9_2 = L8_2.removed
      if L9_2 then
        L2_2 = L2_2 + 1
      end
    end
  end
  L3_2 = CountTableElements
  L4_2 = GLOBALS
  L4_2 = L4_2.ALERTS
  L3_2 = L3_2(L4_2)
  if L2_2 == L3_2 then
    L3_2 = CL_CONFIG
    L3_2 = L3_2.HideIfNoAlerts
    if L3_2 then
      L3_2 = ToggleSwitchboard
      L4_2 = false
      L3_2(L4_2)
    end
  end
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "FETCH_DRAW_DATA"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = GLOBALS
  L2_2 = L2_2.CHARACTER
  L3_2 = A0_2.unit
  L2_2.DRAW_UNIT = L3_2
  L2_2 = TriggerServerEvent
  L3_2 = "rcore_dispatch:server:fetchDrawsAdmin"
  L2_2(L3_2)
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "SAVE_DRAW"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.name
  if L2_2 then
    L2_2 = A0_2.url
    if L2_2 then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L2_2 = TriggerServerEvent
  L3_2 = "rcore_dispatch:server:saveDraw"
  L4_2 = GLOBALS
  L4_2 = L4_2.CHARACTER
  L4_2 = L4_2.DRAW_UNIT
  L5_2 = A0_2.name
  L6_2 = A0_2.url
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "REMOVE_ALL_ALERTS"
function L2_1()
  local L0_2, L1_2
  L0_2 = RemoveAllAlertsNUI
  L0_2()
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNuiCallback
L1_1 = "FLY_COORDS"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = GetEntityCoords
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = SendReactMessage
  L5_2 = "FLY_COORDS"
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A1_2
  L5_2 = "ok"
  L4_2(L5_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNuiCallback
L1_1 = "JOIN_RADIO"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.name
  L3_2 = MoveToFrequency
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = Wait
    L1_3 = 250
    L0_3(L1_3)
    L0_3 = TriggerServerEvent
    L1_3 = "rcore_dispatch:server:frequencyChanged"
    L2_3 = 0
    L3_3 = true
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = Wait
    L1_3 = 100
    L0_3(L1_3)
    L0_3 = TriggerServerEvent
    L1_3 = "rcore_dispatch:server:joinFrequency"
    L2_3 = L2_2
    L0_3(L1_3, L2_3)
  end
  L3_2(L4_2)
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = ""
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L2_2 = A0_2.type
  L3_2 = A0_2.enabled
  L4_2 = A0_2.unit
  L5_2 = GLOBALS
  L5_2.RADIO_TYPE = "global_radio"
  if "global_radio" == L2_2 then
    L5_2 = SendReactMessage
    L6_2 = "ENSURE_GLOBAL_RADIO_INTEGRITY"
    L5_2(L6_2)
    L5_2 = GLOBALS
    L5_2.RADIO_TYPE = L2_2
    L5_2 = {}
    L6_2 = pairs
    L7_2 = GLOBALS
    L7_2 = L7_2.RADIO
    L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
    for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
      L12_2 = pairs
      L13_2 = L11_2
      L12_2, L13_2, L14_2, L15_2 = L12_2(L13_2)
      for L16_2, L17_2 in L12_2, L13_2, L14_2, L15_2 do
        L18_2 = IsPlayerInATac
        L19_2 = L17_2.id
        L18_2 = L18_2(L19_2)
        if not L18_2 then
          L18_2 = L17_2.job
          L19_2 = GLOBALS
          L19_2 = L19_2.CHARACTER
          L19_2 = L19_2.JOB
          if L18_2 == L19_2 then
            L18_2 = tonumber
            L19_2 = L17_2.id
            L18_2 = L18_2(L19_2)
            L5_2[L18_2] = false
          end
        end
      end
    end
    L6_2 = GLOBALS
    L6_2 = L6_2.GLOBAL_RADIO_TYPE
    if "job" ~= L6_2 then
      L6_2 = GLOBALS
      L6_2 = L6_2.GLOBAL_RADIO_TYPE
      if "all" == L6_2 then
        L6_2 = pairs
        L7_2 = GLOBALS
        L7_2 = L7_2.RELATED_JOBS
        L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
        for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
          L12_2 = pairs
          L13_2 = L11_2
          L12_2, L13_2, L14_2, L15_2 = L12_2(L13_2)
          for L16_2, L17_2 in L12_2, L13_2, L14_2, L15_2 do
            L18_2 = tonumber
            L19_2 = L17_2
            L18_2 = L18_2(L19_2)
            L5_2[L18_2] = false
          end
        end
      else
        L6_2 = GLOBALS
        L6_2 = L6_2.RELATED_JOBS
        L7_2 = GLOBALS
        L7_2 = L7_2.GLOBAL_RADIO_TYPE
        L6_2 = L6_2[L7_2]
        if L6_2 then
          L6_2 = pairs
          L7_2 = GLOBALS
          L7_2 = L7_2.RELATED_JOBS
          L8_2 = GLOBALS
          L8_2 = L8_2.GLOBAL_RADIO_TYPE
          L7_2 = L7_2[L8_2]
          L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
          for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
            L12_2 = tonumber
            L13_2 = L11_2
            L12_2 = L12_2(L13_2)
            L5_2[L12_2] = false
          end
        end
      end
    end
    L6_2 = TriggerEvent
    L7_2 = "rcore_dispatch:client:syncGRadio"
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
    if not A1_2 then
      return
    end
    L6_2 = A1_2
    L7_2 = "ok"
    return L6_2(L7_2)
  end
  L5_2 = {}
  L6_2 = GLOBALS
  L6_2 = L6_2.RADIO
  L6_2 = L6_2[L4_2]
  if not L6_2 then
    return
  end
  if L6_2 then
    L7_2 = pairs
    L8_2 = L6_2
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
    for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
      L13_2 = tonumber
      L14_2 = L12_2.id
      L13_2 = L13_2(L14_2)
      L5_2[L13_2] = false
    end
  end
  L7_2 = GLOBALS
  L7_2.RADIO_TYPE = L2_2
  L7_2 = TriggerEvent
  L8_2 = "rcore_dispatch:client:syncGRadio"
  L9_2 = L5_2
  L7_2(L8_2, L9_2)
  L0_1 = L4_2
  L7_2 = SendReactMessage
  L8_2 = "ENSURE_RADIO_INTEGRITY"
  L9_2 = L4_2
  L7_2(L8_2, L9_2)
  L7_2 = CreateThread
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
    L0_3 = L4_2
    while true do
      L1_3 = GLOBALS
      L1_3 = L1_3.RADIO_TYPE
      if "specific_radio" ~= L1_3 then
        break
      end
      L1_3 = L0_1
      if L1_3 ~= L0_3 then
        break
      end
      L1_3 = Wait
      L2_3 = 1000
      L1_3(L2_3)
      L1_3 = dbg
      L1_3 = L1_3.info
      L2_3 = "Emitting specific radio to frequency "
      L3_3 = L4_2
      L2_3 = L2_3 .. L3_3
      L1_3(L2_3)
      L1_3 = {}
      L2_3 = GLOBALS
      L2_3 = L2_3.RADIO
      L3_3 = L4_2
      L2_3 = L2_3[L3_3]
      if not L2_3 then
        return
      end
      if L2_3 then
        L3_3 = pairs
        L4_3 = L2_3
        L3_3, L4_3, L5_3, L6_3 = L3_3(L4_3)
        for L7_3, L8_3 in L3_3, L4_3, L5_3, L6_3 do
          L9_3 = tonumber
          L10_3 = L8_3.id
          L9_3 = L9_3(L10_3)
          L1_3[L9_3] = false
        end
      end
      L3_3 = TriggerEvent
      L4_3 = "rcore_dispatch:client:syncGRadio"
      L5_3 = L1_3
      L3_3(L4_3, L5_3)
    end
    L1_3 = {}
    L2_3 = pairs
    L3_3 = GLOBALS
    L3_3 = L3_3.RADIO
    L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
    for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
      L8_3 = pairs
      L9_3 = L7_3
      L8_3, L9_3, L10_3, L11_3 = L8_3(L9_3)
      for L12_3, L13_3 in L8_3, L9_3, L10_3, L11_3 do
        L14_3 = IsPlayerInATac
        L15_3 = L13_3.id
        L14_3 = L14_3(L15_3)
        if not L14_3 then
          L14_3 = L13_3.job
          L15_3 = GLOBALS
          L15_3 = L15_3.CHARACTER
          L15_3 = L15_3.JOB
          if L14_3 == L15_3 then
            L14_3 = tonumber
            L15_3 = L13_3.id
            L14_3 = L14_3(L15_3)
            L1_3[L14_3] = false
          end
        end
      end
    end
    L2_3 = GLOBALS
    L2_3 = L2_3.GLOBAL_RADIO_TYPE
    if "job" ~= L2_3 then
      L2_3 = GLOBALS
      L2_3 = L2_3.GLOBAL_RADIO_TYPE
      if "all" == L2_3 then
        L2_3 = pairs
        L3_3 = GLOBALS
        L3_3 = L3_3.RELATED_JOBS
        L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
        for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
          L8_3 = pairs
          L9_3 = L7_3
          L8_3, L9_3, L10_3, L11_3 = L8_3(L9_3)
          for L12_3, L13_3 in L8_3, L9_3, L10_3, L11_3 do
            L14_3 = tonumber
            L15_3 = L13_3
            L14_3 = L14_3(L15_3)
            L1_3[L14_3] = false
          end
        end
      else
        L2_3 = GLOBALS
        L2_3 = L2_3.RELATED_JOBS
        L3_3 = GLOBALS
        L3_3 = L3_3.GLOBAL_RADIO_TYPE
        L2_3 = L2_3[L3_3]
        if L2_3 then
          L2_3 = pairs
          L3_3 = GLOBALS
          L3_3 = L3_3.RELATED_JOBS
          L4_3 = GLOBALS
          L4_3 = L4_3.GLOBAL_RADIO_TYPE
          L3_3 = L3_3[L4_3]
          L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
          for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
            L8_3 = tonumber
            L9_3 = L7_3
            L8_3 = L8_3(L9_3)
            L1_3[L8_3] = false
          end
        end
      end
    end
    L2_3 = TriggerEvent
    L3_3 = "rcore_dispatch:client:syncGRadio"
    L4_3 = L1_3
    L2_3(L3_3, L4_3)
  end
  L7_2(L8_2)
  if not A1_2 then
    return
  end
  L7_2 = A1_2
  L8_2 = "ok"
  return L7_2(L8_2)
end
ChangeRadioModeNUI = L1_1
L1_1 = RegisterNUICallback
L2_1 = "CHANGE_RADIO_MODE"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = ChangeRadioModeNUI
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "TOGGLE_AVAILABLE"
function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = GLOBALS
  L0_2 = L0_2.CHARACTER
  L1_2 = GLOBALS
  L1_2 = L1_2.CHARACTER
  L1_2 = L1_2.IS_AVAILABLE
  L1_2 = not L1_2
  L0_2.IS_AVAILABLE = L1_2
  L0_2 = TriggerServerEvent
  L1_2 = "rcore_dispatch:server:actionTriggered"
  L2_2 = "toggle_available"
  L0_2(L1_2, L2_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "ADD_BLIP"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L0_3 = A0_2.alert
    L0_3 = L0_3.blip
    if not L0_3 then
      L0_3 = A1_2
      L1_3 = "ok"
      return L0_3(L1_3)
    end
    L0_3 = false
    L1_3 = pairs
    L2_3 = GLOBALS
    L2_3 = L2_3.ALERTS
    L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
    for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
      L7_3 = L6_3.id
      L8_3 = A0_2.alert
      L8_3 = L8_3.id
      if L7_3 == L8_3 then
        L7_3 = L6_3.blip_removed
        if L7_3 then
          L0_3 = true
          L7_3 = dbg
          L7_3 = L7_3.info
          L8_3 = "Alert "
          L9_3 = A0_2.alert
          L9_3 = L9_3.id
          L10_3 = " has been removed, not adding blip"
          L8_3 = L8_3 .. L9_3 .. L10_3
          L7_3(L8_3)
          L7_3 = A1_2
          L8_3 = "ok"
          return L7_3(L8_3)
        end
      end
    end
    if L0_3 then
      L1_3 = A1_2
      L2_3 = "ok"
      return L1_3(L2_3)
    end
    L1_3 = BLIPS_ALERTS
    L2_3 = A0_2.alert
    L2_3 = L2_3.id
    L1_3 = L1_3[L2_3]
    if L1_3 then
      L1_3 = dbg
      L1_3 = L1_3.info
      L2_3 = "Alert "
      L3_3 = A0_2.alert
      L3_3 = L3_3.id
      L4_3 = " already has a blip"
      L2_3 = L2_3 .. L3_3 .. L4_3
      L1_3(L2_3)
      L1_3 = A1_2
      L2_3 = "ok"
      return L1_3(L2_3)
    end
    L1_3 = CreateDispatchBlip
    L2_3 = A0_2
    L1_3 = L1_3(L2_3)
    L2_3 = BLIPS_ALERTS
    L3_3 = A0_2.alert
    L3_3 = L3_3.id
    L2_3[L3_3] = L1_3
    L2_3 = dbg
    L2_3 = L2_3.info
    L3_3 = "Alert "
    L4_3 = A0_2.alert
    L4_3 = L4_3.id
    L5_3 = " added with id "
    L6_3 = L1_3
    L3_3 = L3_3 .. L4_3 .. L5_3 .. L6_3
    L2_3(L3_3)
    L2_3 = A1_2
    L3_3 = "OK"
    L2_3(L3_3)
  end
  L2_2(L3_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "DRAW_SAVED_DRAW"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.id
  if not L2_2 then
    L3_2 = A1_2
    L4_2 = "error"
    return L3_2(L4_2)
  end
  L3_2 = TriggerServerEvent
  L4_2 = "rcore_dispatch:server:drawSavedDraw"
  L5_2 = L2_2
  L6_2 = GLOBALS
  L6_2 = L6_2.CHARACTER
  L6_2 = L6_2.DRAW_UNIT
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "SET_GLOBAL_RADIO_TYPE"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = A0_2.radio
  if L2_2 then
    L2_2 = GLOBALS
    L3_2 = A0_2.radio
    L2_2.GLOBAL_RADIO_TYPE = L3_2
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
    L3_2 = GLOBALS
    L3_2 = L3_2.GLOBAL_RADIO_TYPE
    if "job" ~= L3_2 then
      L3_2 = GLOBALS
      L3_2 = L3_2.GLOBAL_RADIO_TYPE
      if "all" == L3_2 then
        L3_2 = pairs
        L4_2 = GLOBALS
        L4_2 = L4_2.RELATED_JOBS
        L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
        for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
          L9_2 = pairs
          L10_2 = L8_2
          L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
          for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
            L15_2 = tonumber
            L16_2 = L14_2
            L15_2 = L15_2(L16_2)
            L2_2[L15_2] = false
          end
        end
      else
        L3_2 = GLOBALS
        L3_2 = L3_2.RELATED_JOBS
        L4_2 = GLOBALS
        L4_2 = L4_2.GLOBAL_RADIO_TYPE
        L3_2 = L3_2[L4_2]
        if L3_2 then
          L3_2 = pairs
          L4_2 = GLOBALS
          L4_2 = L4_2.RELATED_JOBS
          L5_2 = GLOBALS
          L5_2 = L5_2.GLOBAL_RADIO_TYPE
          L4_2 = L4_2[L5_2]
          L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
          for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
            L9_2 = tonumber
            L10_2 = L8_2
            L9_2 = L9_2(L10_2)
            L2_2[L9_2] = false
          end
        end
      end
    end
    L3_2 = TriggerEvent
    L4_2 = "rcore_dispatch:client:syncGRadio"
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterCommand
L2_1 = "my_id"
function L3_1()
  local L0_2, L1_2
  L0_2 = print
  L1_2 = GLOBALS
  L1_2 = L1_2.CHARACTER
  L1_2 = L1_2.ID
  L0_2(L1_2)
end
L1_1(L2_1, L3_1)
