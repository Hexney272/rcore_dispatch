local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1
L0_1 = promise
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
LOADED_RADIO = L0_1
function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = Citizen
    L0_3 = L0_3.Await
    L1_3 = LOADED_CLIENT
    L0_3(L1_3)
    L0_3 = A0_2.unit
    L1_3 = tonumber
    L2_3 = A0_2.id
    L1_3 = L1_3(L2_3)
    A0_2.id = L1_3
    L1_3 = 0
    while true do
      L2_3 = GLOBALS
      L2_3 = L2_3.UNITS
      L2_3 = L2_3[L0_3]
      if L2_3 then
        break
      end
      L2_3 = Wait
      L3_3 = 1
      L2_3(L3_3)
      L1_3 = L1_3 + 1
      L2_3 = 1000
      if L1_3 > L2_3 then
        break
      end
    end
    L2_3 = 1000
    if L1_3 > L2_3 then
      L2_3 = dbg
      L2_3 = L2_3.error
      L3_3 = "Agent unit not found: "
      L4_3 = L0_3
      L3_3 = L3_3 .. L4_3
      return L2_3(L3_3)
    end
    L2_3 = GLOBALS
    L2_3 = L2_3.UNITS
    L2_3 = L2_3[L0_3]
    if L2_3 then
      L2_3 = A0_2.id
      L3_3 = GLOBALS
      L3_3 = L3_3.CHARACTER
      L3_3 = L3_3.ID
      if L2_3 == L3_3 then
        L2_3 = GLOBALS
        L2_3 = L2_3.CHARACTER
        L3_3 = A0_2.unit
        L2_3.UNIT = L3_3
        L2_3 = GLOBALS
        L2_3 = L2_3.CHARACTER
        L3_3 = A0_2.unit
        L2_3.RADIO = L3_3
        L2_3 = GLOBALS
        L2_3 = L2_3.CHARACTER
        L2_3.IS_IN_ALERT = false
        L2_3 = SendReactMessage
        L3_3 = "FIX_ALERT"
        L4_3 = false
        L2_3(L3_3, L4_3)
        L2_3 = TriggerEvent
        L3_3 = "rcore_dispatch:client:playerChangedUnit"
        L4_3 = A0_2.unit
        L2_3(L3_3, L4_3)
        L2_3 = MoveToFrequency
        L3_3 = A0_2.unit
        L2_3(L3_3)
      end
      L2_3 = GLOBALS
      L2_3 = L2_3.UNITS
      L2_3 = L2_3[L0_3]
      L3_3 = tonumber
      L4_3 = A0_2.id
      L3_3 = L3_3(L4_3)
      L4_3 = {}
      L5_3 = A0_2.name
      L4_3.name = L5_3
      L5_3 = A0_2.id
      L4_3.id = L5_3
      L5_3 = A0_2.rank
      L4_3.rank = L5_3
      L2_3[L3_3] = L4_3
      L2_3 = ConvertUnitsToArray
      L2_3()
      L2_3 = SendReactMessage
      L3_3 = "UPDATE_UNITS"
      L4_3 = GLOBALS
      L4_3 = L4_3.UNITS
      L2_3(L3_3, L4_3)
      L2_3 = dbg
      L2_3 = L2_3.success
      L3_3 = "Agent "
      L4_3 = A0_2.name
      L5_3 = " has been registered to the client. (Unit: "
      L6_3 = L0_3
      L7_3 = ")"
      L3_3 = L3_3 .. L4_3 .. L5_3 .. L6_3 .. L7_3
      L2_3(L3_3)
    else
      L2_3 = dbg
      L2_3 = L2_3.error
      L3_3 = "Agent unit not found: "
      L4_3 = L0_3
      L3_3 = L3_3 .. L4_3
      L2_3(L3_3)
    end
  end
  L1_2(L2_2)
end
L1_1 = RegisterNetEvent
L2_1 = "rcore_dispatch:client:registerAgent"
L3_1 = L0_1
L1_1(L2_1, L3_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = Citizen
  L1_2 = L1_2.Await
  L2_2 = LOADED_CLIENT
  L1_2(L2_2)
  L1_2 = A0_2.id
  L2_2 = A0_2.unit
  L3_2 = GLOBALS
  L3_2 = L3_2.UNITS
  L3_2 = L3_2[L2_2]
  L4_2 = tonumber
  L5_2 = L1_2
  L4_2 = L4_2(L5_2)
  L3_2[L4_2] = nil
  L3_2 = RemoveUserFromRadio
  L4_2 = tonumber
  L5_2 = L1_2
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = ConvertUnitsToArray
  L3_2()
  L3_2 = dbg
  L3_2 = L3_2.success
  L4_2 = "Agent "
  L5_2 = A0_2.id
  L6_2 = " has been removed from the client. (Unit: "
  L7_2 = L2_2
  L8_2 = ")"
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
  L3_2(L4_2)
  L3_2 = SendReactMessage
  L4_2 = "UPDATE_UNITS"
  L5_2 = GLOBALS
  L5_2 = L5_2.UNITS
  L3_2(L4_2, L5_2)
end
L2_1 = RegisterNetEvent
L3_1 = "rcore_dispatch:client:removeAgent"
L4_1 = L1_1
L2_1(L3_1, L4_1)
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
    L0_3 = Citizen
    L0_3 = L0_3.Await
    L1_3 = LOADED_CLIENT
    L0_3(L1_3)
    L0_3 = GLOBALS
    L0_3 = L0_3.UNITS
    L1_3 = A1_2
    L0_3 = L0_3[L1_3]
    if not L0_3 then
      L0_3 = A0_2.job
      L1_3 = GLOBALS
      L1_3 = L1_3.CHARACTER
      L1_3 = L1_3.JOB
      if L0_3 == L1_3 then
        goto lbl_165
      end
    end
    L0_3 = GLOBALS
    L0_3 = L0_3.UNITS
    L1_3 = A2_2
    L0_3 = L0_3[L1_3]
    if L0_3 then
      L0_3 = GLOBALS
      L0_3 = L0_3.UNITS
      L1_3 = A2_2
      L0_3 = L0_3[L1_3]
      L1_3 = tonumber
      L2_3 = A0_2.id
      L1_3 = L1_3(L2_3)
      L0_3[L1_3] = nil
    end
    L0_3 = GLOBALS
    L0_3 = L0_3.UNITS
    L1_3 = A1_2
    L0_3 = L0_3[L1_3]
    if L0_3 then
      L0_3 = GLOBALS
      L0_3 = L0_3.UNITS
      L1_3 = A1_2
      L0_3 = L0_3[L1_3]
      L1_3 = tonumber
      L2_3 = A0_2.id
      L1_3 = L1_3(L2_3)
      L2_3 = A0_2
      L0_3[L1_3] = L2_3
    end
    L0_3 = A0_2.id
    L1_3 = GLOBALS
    L1_3 = L1_3.CHARACTER
    L1_3 = L1_3.ID
    if L0_3 == L1_3 then
      L0_3 = TriggerEvent
      L1_3 = "rcore_dispatch:client:playerChangedUnit"
      L2_3 = A1_2
      L0_3(L1_3, L2_3)
      L0_3 = MoveToFrequency
      L1_3 = A0_2.unit
      L0_3(L1_3)
      L0_3 = GLOBALS
      L0_3 = L0_3.CHARACTER
      L1_3 = A1_2
      L0_3.UNIT = L1_3
      L0_3 = GLOBALS
      L0_3 = L0_3.CHARACTER
      L0_3.IS_IN_ALERT = false
      L0_3 = SendReactMessage
      L1_3 = "FIX_ALERT"
      L2_3 = false
      L0_3(L1_3, L2_3)
      L0_3 = ClearGpsMultiRoute
      L0_3()
      L0_3 = pairs
      L1_3 = GLOBALS
      L1_3 = L1_3.ALERTS
      L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
      for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
        if L5_3 then
          L6_3 = pairs
          L7_3 = L5_3.units
          L6_3, L7_3, L8_3, L9_3 = L6_3(L7_3)
          for L10_3, L11_3 in L6_3, L7_3, L8_3, L9_3 do
            L12_3 = A0_2.unit
            if L11_3 == L12_3 then
              L12_3 = GLOBALS
              L12_3 = L12_3.CHARACTER
              L12_3.IS_IN_ALERT = true
              L12_3 = SendReactMessage
              L13_3 = "FIX_ALERT"
              L14_3 = true
              L12_3(L13_3, L14_3)
              L12_3 = ClearGpsMultiRoute
              L12_3()
              L12_3 = StartGpsMultiRoute
              L13_3 = CL_CONFIG
              L13_3 = L13_3.DispatchRouteColor
              L14_3 = true
              L15_3 = true
              L12_3(L13_3, L14_3, L15_3)
              L12_3 = SetGpsMultiRouteRender
              L13_3 = true
              L12_3(L13_3)
              L12_3 = AddPointToGpsMultiRoute
              L13_3 = L5_3.coords
              L13_3 = L13_3.x
              L14_3 = L5_3.coords
              L14_3 = L14_3.y
              L15_3 = L5_3.coords
              L15_3 = L15_3.z
              L12_3(L13_3, L14_3, L15_3)
              L12_3 = IsPlayerInHelicopter
              L12_3 = L12_3()
              if L12_3 then
                L13_3 = DeleteWaypoint
                L13_3()
                L13_3 = Wait
                L14_3 = 10
                L13_3(L14_3)
                L13_3 = SetNewWaypoint
                L14_3 = L5_3.coords
                L14_3 = L14_3.x
                L15_3 = L5_3.coords
                L15_3 = L15_3.y
                L13_3(L14_3, L15_3)
              end
              L13_3 = SendReactMessage
              L14_3 = "ENSURE_ALERT"
              L15_3 = L5_3
              L13_3(L14_3, L15_3)
              L5_3.removed = false
              break
            end
          end
        end
      end
      L0_3 = {}
      L1_3 = GLOBALS
      L1_3 = L1_3.CHARACTER
      L0_3.client_data = L1_3
      L1_3 = SetTimeout
      L2_3 = 100
      function L3_3()
        local L0_4, L1_4, L2_4, L3_4
        L0_4 = SendReactMessage
        L1_4 = "LOAD_DISPATCH"
        L2_4 = L0_3
        L0_4(L1_4, L2_4)
        L0_4 = SendReactMessage
        L1_4 = "IS_PLAYER_POLICE"
        L2_4 = CONFIG
        L2_4 = L2_4.JOBS
        L3_4 = GLOBALS
        L3_4 = L3_4.CHARACTER
        L3_4 = L3_4.JOB
        L2_4 = L2_4[L3_4]
        L2_4 = L2_4.Ispolice
        if not L2_4 then
          L2_4 = false
        end
        L0_4(L1_4, L2_4)
        L0_4 = CountTableElements
        L1_4 = DontSendRemovedLOL
        L1_4, L2_4, L3_4 = L1_4()
        L0_4 = L0_4(L1_4, L2_4, L3_4)
        if 0 == L0_4 then
          L0_4 = CL_CONFIG
          L0_4 = L0_4.HideIfNoAlerts
          if L0_4 then
            L0_4 = ToggleSwitchboard
            L1_4 = false
            L0_4(L1_4)
          end
        end
        L0_4 = SendReactMessage
        L1_4 = "LOAD_ALERTS"
        L2_4 = DontSendRemovedLOL
        L2_4, L3_4 = L2_4()
        L0_4(L1_4, L2_4, L3_4)
      end
      L1_3(L2_3, L3_3)
    end
    L0_3 = ConvertUnitsToArray
    L0_3()
    L0_3 = dbg
    L0_3 = L0_3.info
    L1_3 = "Agent "
    L2_3 = A0_2.name
    L3_3 = " has been changed to unit "
    L4_3 = A1_2
    L1_3 = L1_3 .. L2_3 .. L3_3 .. L4_3
    L0_3(L1_3)
    L0_3 = SendReactMessage
    L1_3 = "UPDATE_UNITS"
    L2_3 = GLOBALS
    L2_3 = L2_3.UNITS
    L0_3(L1_3, L2_3)
    goto lbl_171
    ::lbl_165::
    L0_3 = dbg
    L0_3 = L0_3.error
    L1_3 = "Agent unit not found: "
    L2_3 = A1_2
    L1_3 = L1_3 .. L2_3
    L0_3(L1_3)
    ::lbl_171::
  end
  L3_2(L4_2)
end
L3_1 = RegisterNetEvent
L4_1 = "rcore_dispatch:client:changeUnit"
L5_1 = L2_1
L3_1(L4_1, L5_1)
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = promise
  L3_2 = L2_2
  L2_2 = L2_2.new
  L2_2 = L2_2(L3_2)
  LOADED_RADIO = L2_2
  L2_2 = dbg
  L2_2 = L2_2.info
  L3_2 = "Loading data from server..."
  L2_2(L3_2)
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
    L0_3 = LoadMap
    L0_3()
    L0_3 = LoadClientData
    L0_3()
    L0_3 = RemoveMapBlips
    L0_3()
    L0_3 = Wait
    L1_3 = 300
    L0_3(L1_3)
    L0_3 = Citizen
    L0_3 = L0_3.Await
    L1_3 = LOADED_CLIENT
    L0_3(L1_3)
    L0_3 = {}
    L1_3 = GLOBALS
    L1_3 = L1_3.CHARACTER
    L0_3.client_data = L1_3
    L1_3 = A0_2
    L0_3.server_data = L1_3
    L1_3 = GLOBALS
    L2_3 = A0_2.SAVED_DRAWS
    L1_3.SAVED_DRAWS = L2_3
    L1_3 = SendReactMessage
    L2_3 = "REFRESH_SAVED_DRAWS"
    L3_3 = A0_2.SAVED_DRAWS
    L1_3(L2_3, L3_3)
    L1_3 = CONFIG
    L1_3 = L1_3.Features
    L1_3 = L1_3.radio
    if L1_3 then
      L1_3 = pairs
      L2_3 = A0_2.UNITS
      L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
      for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
        L7_3 = GLOBALS
        L7_3 = L7_3.RADIO
        L8_3 = {}
        L7_3[L5_3] = L8_3
        L7_3 = pairs
        L8_3 = L6_3.agents
        L7_3, L8_3, L9_3, L10_3 = L7_3(L8_3)
        for L11_3, L12_3 in L7_3, L8_3, L9_3, L10_3 do
          L13_3 = L12_3.id
          L14_3 = GLOBALS
          L14_3 = L14_3.CHARACTER
          L14_3 = L14_3.ID
          if L13_3 ~= L14_3 then
            L13_3 = GLOBALS
            L13_3 = L13_3.UNITS
            L13_3 = L13_3[L5_3]
            L14_3 = tonumber
            L15_3 = L12_3.id
            L14_3 = L14_3(L15_3)
            L13_3[L14_3] = L12_3
          end
        end
        L7_3 = CreateThread
        function L8_3()
          local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4
          L0_4 = Wait
          L1_4 = 1500
          L0_4(L1_4)
          L0_4 = pairs
          L1_4 = L6_3.radio
          L0_4, L1_4, L2_4, L3_4 = L0_4(L1_4)
          for L4_4, L5_4 in L0_4, L1_4, L2_4, L3_4 do
            L6_4 = AddRadioAgent
            L7_4 = L5_4.id
            L8_4 = L5_4.name
            L9_4 = L5_4.unit
            L10_4 = L5_4.available
            L11_4 = L5_4.job
            L6_4(L7_4, L8_4, L9_4, L10_4, L11_4)
          end
        end
        L7_3(L8_3)
      end
    else
      L1_3 = pairs
      L2_3 = A0_2.UNITS
      L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
      for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
        L7_3 = pairs
        L8_3 = L6_3.agents
        L7_3, L8_3, L9_3, L10_3 = L7_3(L8_3)
        for L11_3, L12_3 in L7_3, L8_3, L9_3, L10_3 do
          L13_3 = L12_3.id
          L14_3 = GLOBALS
          L14_3 = L14_3.CHARACTER
          L14_3 = L14_3.ID
          if L13_3 ~= L14_3 then
            L13_3 = GLOBALS
            L13_3 = L13_3.UNITS
            L13_3 = L13_3[L5_3]
            L14_3 = tonumber
            L15_3 = L12_3.id
            L14_3 = L14_3(L15_3)
            L13_3[L14_3] = L12_3
          end
        end
      end
    end
    L1_3 = LOADED_RADIO
    L2_3 = L1_3
    L1_3 = L1_3.resolve
    L1_3(L2_3)
    L1_3 = SendReactMessage
    L2_3 = "LOAD_ALERTS"
    L3_3 = {}
    L1_3(L2_3, L3_3)
    L1_3 = SetTimeout
    L2_3 = 500
    function L3_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4
      L0_4 = SendReactMessage
      L1_4 = "LOAD_FEATURES"
      L2_4 = CONFIG
      L2_4 = L2_4.Features
      L0_4(L1_4, L2_4)
      L0_4 = SendReactMessage
      L1_4 = "LOAD_DISPATCH"
      L2_4 = L0_3
      L0_4(L1_4, L2_4)
      L0_4 = SendReactMessage
      L1_4 = "LOAD_STATS"
      L2_4 = A1_2
      L0_4(L1_4, L2_4)
      L0_4 = SendReactMessage
      L1_4 = "IS_PLAYER_POLICE"
      L2_4 = CONFIG
      L2_4 = L2_4.JOBS
      L3_4 = GLOBALS
      L3_4 = L3_4.CHARACTER
      L3_4 = L3_4.JOB
      L2_4 = L2_4[L3_4]
      L2_4 = L2_4.Ispolice
      if not L2_4 then
        L2_4 = false
      end
      L0_4(L1_4, L2_4)
      L0_4 = Wait
      L1_4 = 10
      L0_4(L1_4)
      L0_4 = GLOBALS
      L1_4 = A0_2.ALERTS
      L0_4.ALERTS = L1_4
      L0_4 = PlayerPedId
      L0_4 = L0_4()
      L1_4 = pairs
      L2_4 = A0_2.ALERTS
      L1_4, L2_4, L3_4, L4_4 = L1_4(L2_4)
      for L5_4, L6_4 in L1_4, L2_4, L3_4, L4_4 do
        L7_4 = L6_4.coords
        L8_4 = GetEntityCoords
        L9_4 = L0_4
        L8_4 = L8_4(L9_4)
        L7_4 = L7_4 - L8_4
        L7_4 = #L7_4
        L8_4 = L7_4 / 1000
        L9_4 = math
        L9_4 = L9_4.floor
        L10_4 = L8_4 * 100
        L10_4 = L10_4 + 0.5
        L9_4 = L9_4(L10_4)
        L8_4 = L9_4 / 100
        L9_4 = " km"
        L10_4 = CL_CONFIG
        L10_4 = L10_4.UsingMilesPerHour
        if L10_4 then
          L8_4 = L8_4 * 0.621371
          L10_4 = string
          L10_4 = L10_4.format
          L11_4 = "%.2f"
          L12_4 = L8_4
          L10_4 = L10_4(L11_4, L12_4)
          L8_4 = L10_4
          L9_4 = " mi"
        end
        L10_4 = tostring
        L11_4 = L8_4
        L10_4 = L10_4(L11_4)
        L11_4 = L9_4
        L10_4 = L10_4 .. L11_4
        L6_4.distance = L10_4
        L11_4 = L6_4.text
        L12_4 = L11_4
        L11_4 = L11_4.gsub
        L13_4 = "{distance}"
        L14_4 = L10_4
        L11_4 = L11_4(L12_4, L13_4, L14_4)
        L6_4.text = L11_4
      end
      L1_4 = CountTableElements
      L2_4 = RemoveNilFromArray
      L3_4 = A0_2.ALERTS
      L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4 = L2_4(L3_4)
      L1_4 = L1_4(L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4)
      if 0 == L1_4 then
        L1_4 = CL_CONFIG
        L1_4 = L1_4.HideIfNoAlerts
        if L1_4 then
          L1_4 = ToggleSwitchboard
          L2_4 = false
          L1_4(L2_4)
        end
      end
      L1_4 = SendReactMessage
      L2_4 = "LOAD_ALERTS"
      L3_4 = DontSendRemovedLOL
      L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4 = L3_4()
      L1_4(L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4)
    end
    L1_3(L2_3, L3_3)
  end
  L2_2(L3_2)
end
L4_1 = RegisterNetEvent
L5_1 = "rcore_dispatch:client:receiveData"
L6_1 = L3_1
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "rcore_dispatch:client:reloadClient"
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = LoadClientData
  L2_2 = A0_2
  L1_2(L2_2)
end
L4_1(L5_1, L6_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2.coords
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = GetEntityCoords
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L3_2 = L1_2 - L3_2
  L3_2 = #L3_2
  L4_2 = L3_2 / 1000
  L5_2 = math
  L5_2 = L5_2.floor
  L6_2 = L4_2 * 100
  L6_2 = L6_2 + 0.5
  L5_2 = L5_2(L6_2)
  L4_2 = L5_2 / 100
  L5_2 = " km"
  L6_2 = CL_CONFIG
  L6_2 = L6_2.UsingMilesPerHour
  if L6_2 then
    L4_2 = L4_2 * 0.621371
    L6_2 = string
    L6_2 = L6_2.format
    L7_2 = "%.2f"
    L8_2 = L4_2
    L6_2 = L6_2(L7_2, L8_2)
    L4_2 = L6_2
    L5_2 = " mi"
  end
  L6_2 = tostring
  L7_2 = L4_2
  L6_2 = L6_2(L7_2)
  L7_2 = L5_2
  L6_2 = L6_2 .. L7_2
  A0_2.distance = L6_2
  L7_2 = A0_2.text
  L8_2 = L7_2
  L7_2 = L7_2.gsub
  L9_2 = "{distance}"
  L10_2 = L6_2
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  A0_2.text = L7_2
  L7_2 = CL_CONFIG
  L7_2 = L7_2.HideIfNoAlerts
  if L7_2 then
    L7_2 = ToggleSwitchboard
    L8_2 = true
    L7_2(L8_2)
  end
  L7_2 = SendReactMessage
  L8_2 = "ADD_ALERT"
  L9_2 = A0_2
  L7_2(L8_2, L9_2)
  L7_2 = CL_CONFIG
  L7_2 = L7_2.AlertSound
  if L7_2 then
    L7_2 = SendReactMessage
    L8_2 = "ALERT_SOUND"
    L9_2 = A0_2.custom_sound
    if not L9_2 then
      L9_2 = nil
    end
    L7_2(L8_2, L9_2)
  end
  L7_2 = table
  L7_2 = L7_2.insert
  L8_2 = GLOBALS
  L8_2 = L8_2.ALERTS
  L9_2 = A0_2
  L7_2(L8_2, L9_2)
  L7_2 = GLOBALS
  L7_2 = L7_2.CHARACTER
  L7_2 = L7_2.JOB
  L8_2 = CONFIG
  L8_2 = L8_2.JOBS
  L8_2 = L8_2[L7_2]
  L8_2 = L8_2.Ispolice
  if L8_2 then
    L8_2 = dbg
    L8_2 = L8_2.info
    L9_2 = "Increasing stat..."
    L8_2(L9_2)
    L8_2 = SendReactMessage
    L9_2 = "INCREASE_STAT"
    L10_2 = A0_2.type
    L8_2(L9_2, L10_2)
    L8_2 = SendReactMessage
    L9_2 = "ADD_COORDS"
    L10_2 = L1_2
    L8_2(L9_2, L10_2)
  end
end
L5_1 = RegisterNetEvent
L6_1 = "rcore_dispatch:client:sendAlert"
L7_1 = L4_1
L5_1(L6_1, L7_1)
function L5_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  if "addunits" == A0_2 then
    L2_2 = (...)
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
        L11_2 = A1_2
        L10_2 = L10_2(L11_2)
        if L9_2 == L10_2 then
          L9_2 = GLOBALS
          L9_2 = L9_2.CHARACTER
          L9_2 = L9_2.UNIT
          if L2_2 == L9_2 then
            L9_2 = GLOBALS
            L9_2 = L9_2.CHARACTER
            L9_2.IS_IN_ALERT = true
            L9_2 = SendReactMessage
            L10_2 = "FIX_ALERT"
            L11_2 = true
            L9_2(L10_2, L11_2)
            L9_2 = ClearGpsMultiRoute
            L9_2()
            L9_2 = StartGpsMultiRoute
            L10_2 = CL_CONFIG
            L10_2 = L10_2.DispatchRouteColor
            L11_2 = true
            L12_2 = true
            L9_2(L10_2, L11_2, L12_2)
            L9_2 = SetGpsMultiRouteRender
            L10_2 = true
            L9_2(L10_2)
            L9_2 = AddPointToGpsMultiRoute
            L10_2 = L8_2.coords
            L10_2 = L10_2.x
            L11_2 = L8_2.coords
            L11_2 = L11_2.y
            L12_2 = L8_2.coords
            L12_2 = L12_2.z
            L9_2(L10_2, L11_2, L12_2)
            L9_2 = IsPlayerInHelicopter
            L9_2 = L9_2()
            if L9_2 then
              L10_2 = DeleteWaypoint
              L10_2()
              L10_2 = Wait
              L11_2 = 10
              L10_2(L11_2)
              L10_2 = SetNewWaypoint
              L11_2 = L8_2.coords
              L11_2 = L11_2.x
              L12_2 = L8_2.coords
              L12_2 = L12_2.y
              L10_2(L11_2, L12_2)
            end
          end
          L9_2 = SendReactMessage
          L10_2 = "ENSURE_ALERT"
          L11_2 = L8_2
          L9_2(L10_2, L11_2)
          L8_2.removed = false
          L9_2 = table
          L9_2 = L9_2.insert
          L10_2 = L8_2.units
          L11_2 = L2_2
          L9_2(L10_2, L11_2)
          break
        end
      end
    end
    L3_2 = SendReactMessage
    L4_2 = "UPDATE_ALERT_UNITS"
    L5_2 = {}
    L5_2.id = A1_2
    L5_2.unit = L2_2
    L3_2(L4_2, L5_2)
  elseif "removeunits" == A0_2 then
    L2_2 = (...)
    L3_2 = pairs
    L4_2 = GLOBALS
    L4_2 = L4_2.ALERTS
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      if L8_2 then
        L9_2 = pairs
        L10_2 = L8_2.units
        L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
        for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
          if L14_2 == L2_2 then
            L15_2 = table
            L15_2 = L15_2.remove
            L16_2 = L8_2.units
            L17_2 = L13_2
            L15_2(L16_2, L17_2)
          end
        end
      end
    end
    L3_2 = GLOBALS
    L3_2 = L3_2.CHARACTER
    L3_2 = L3_2.UNIT
    if L3_2 == L2_2 then
      L3_2 = ClearGpsMultiRoute
      L3_2()
      L3_2 = IsPlayerInHelicopter
      L3_2 = L3_2()
      if L3_2 then
        L4_2 = DeleteWaypoint
        L4_2()
      end
      L4_2 = GLOBALS
      L4_2 = L4_2.CHARACTER
      L4_2.IS_IN_ALERT = false
      L4_2 = SendReactMessage
      L5_2 = "FIX_ALERT"
      L6_2 = false
      L4_2(L5_2, L6_2)
    end
    L3_2 = "USER-"
    L4_2 = GLOBALS
    L4_2 = L4_2.CHARACTER
    L4_2 = L4_2.ID
    L3_2 = L3_2 .. L4_2
    if L2_2 == L3_2 then
      L3_2 = CL_CONFIG
      L3_2 = L3_2.RemoveNormalMarker
      if L3_2 then
        L3_2 = DeleteWaypoint
        L3_2()
      end
    end
    L3_2 = SendReactMessage
    L4_2 = "REMOVE_ALERT_UNITS"
    L5_2 = {}
    L5_2.id = A1_2
    L5_2.unit = L2_2
    L3_2(L4_2, L5_2)
  end
end
L6_1 = RegisterNetEvent
L7_1 = "rcore_dispatch:client:updateAlert"
L8_1 = L5_1
L6_1(L7_1, L8_1)
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = dbg
  L1_2 = L1_2.info
  L2_2 = "Loading draws"
  L1_2(L2_2)
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L0_3 = RemoveAllBlips
    L0_3()
    L0_3 = pairs
    L1_3 = A0_2
    L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
    for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
      L6_3 = pairs
      L7_3 = L5_3
      L6_3, L7_3, L8_3, L9_3 = L6_3(L7_3)
      for L10_3, L11_3 in L6_3, L7_3, L8_3, L9_3 do
        L12_3 = Wait
        L13_3 = 100
        L12_3(L13_3)
        L12_3 = AddPaint
        L13_3 = L11_3
        L12_3(L13_3)
      end
    end
  end
  L1_2(L2_2)
end
L7_1 = RegisterNetEvent
L8_1 = "rcore_dispatch:client:loadDraws"
L9_1 = L6_1
L7_1(L8_1, L9_1)
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    L0_3 = A0_2
    if not L0_3 then
      return
    end
    L0_3 = RemoveMapBlips
    L0_3()
    L0_3 = pairs
    L1_3 = A0_2
    L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
    for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
      L6_3 = pairs
      L7_3 = GLOBALS
      L7_3 = L7_3.ALERTS
      L6_3, L7_3, L8_3, L9_3 = L6_3(L7_3)
      for L10_3, L11_3 in L6_3, L7_3, L8_3, L9_3 do
        if L11_3 then
          L12_3 = tonumber
          L13_3 = L11_3.id
          L12_3 = L12_3(L13_3)
          L13_3 = tonumber
          L14_3 = L5_3.id
          L13_3 = L13_3(L14_3)
          if L12_3 == L13_3 then
            L12_3 = L5_3.removed_from_server
            if L12_3 then
              L11_3.removed_from_server = true
            end
            L12_3 = L5_3.blip_removed
            if L12_3 then
              L11_3.blip_removed = true
            end
          end
        end
      end
    end
    L0_3 = RemoveNilFromArray
    L1_3 = A0_2
    L0_3 = L0_3(L1_3)
    L0_3 = #L0_3
    if 0 == L0_3 then
      L0_3 = CL_CONFIG
      L0_3 = L0_3.HideIfNoAlerts
      if L0_3 then
        L0_3 = ToggleSwitchboard
        L1_3 = false
        L0_3(L1_3)
      end
    end
    L0_3 = SendReactMessage
    L1_3 = "LOAD_ALERTS"
    L2_3 = DontSendRemovedLOL
    L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3 = L2_3()
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
    L0_3 = Wait
    L1_3 = 500
    L0_3(L1_3)
    L0_3 = SendReactMessage
    L1_3 = "ENSURE_FIXED_ALERT"
    L0_3(L1_3)
  end
  L1_2(L2_2)
end
L8_1 = RegisterNetEvent
L9_1 = "rcore_dispatch:client:updateAlerts"
L10_1 = L7_1
L8_1(L9_1, L10_1)
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  if not A0_2 then
    return
  end
  L1_2 = SendReactMessage
  L2_2 = "NOTIFY"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L9_1 = RegisterNetEvent
L10_1 = "rcore_dispatch:client:notify"
L11_1 = L8_1
L9_1(L10_1, L11_1)
function L9_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2
  L5_2 = CONFIG
  L5_2 = L5_2.Features
  L5_2 = L5_2.radio
  if not L5_2 then
    return
  end
  L5_2 = SendReactMessage
  L6_2 = "ADD_RADIO_AGENT"
  L7_2 = {}
  L7_2.gameId = A0_2
  L7_2.name = A1_2
  L7_2.unit = A2_2
  L7_2.available = A3_2
  L5_2(L6_2, L7_2)
  L5_2 = CreateThread
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = Wait
    L1_3 = 1000
    L0_3(L1_3)
    L0_3 = AddUserToRadio
    L1_3 = A0_2
    L2_3 = A1_2
    L3_3 = A2_2
    L4_3 = A3_2
    L5_3 = A4_2
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
  end
  L5_2(L6_2)
end
AddRadioAgent = L9_1
L9_1 = RegisterNetEvent
L10_1 = "rcore_dispatch:client:addRadioAgent"
L11_1 = AddRadioAgent
L9_1(L10_1, L11_1)
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CONFIG
  L1_2 = L1_2.Features
  L1_2 = L1_2.radio
  if not L1_2 then
    return
  end
  L1_2 = SendReactMessage
  L2_2 = "REMOVE_RADIO_AGENT"
  L3_2 = {}
  L3_2.gameId = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = RemoveUserFromRadio
  L2_2 = A0_2
  L1_2(L2_2)
end
L10_1 = RegisterNetEvent
L11_1 = "rcore_dispatch:client:removeRadioAgent"
L12_1 = L9_1
L10_1(L11_1, L12_1)
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = GLOBALS
  L3_2 = L3_2.CHARACTER
  L3_2 = L3_2.ID
  if L2_2 == L3_2 then
    L2_2 = SendReactMessage
    L3_2 = "UPDATE_OWN_AVAILABLE"
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = pairs
  L3_2 = GLOBALS
  L3_2 = L3_2.UNITS
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = pairs
    L9_2 = L7_2
    L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
    for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
      L14_2 = L13_2.id
      if L14_2 == A0_2 then
        L14_2 = dbg
        L14_2 = L14_2.info
        L15_2 = "Updating available for "
        L16_2 = L13_2.name
        L15_2 = L15_2 .. L16_2
        L14_2(L15_2)
        L14_2 = GLOBALS
        L14_2 = L14_2.UNITS
        L14_2 = L14_2[L6_2]
        L14_2 = L14_2[L12_2]
        L14_2.available = A1_2
      end
    end
  end
  L2_2 = SendReactMessage
  L3_2 = "UPDATE_AVAILABLE"
  L4_2 = {}
  L4_2.id = A0_2
  L4_2.available = A1_2
  L2_2(L3_2, L4_2)
end
L11_1 = RegisterNetEvent
L12_1 = "rcore_dispatch:client:toggleAvailable"
L13_1 = L10_1
L11_1(L12_1, L13_1)
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  if not A0_2 then
    return
  end
  L1_2 = GLOBALS
  L1_2.SAVED_DRAWS = A0_2
  L1_2 = SendReactMessage
  L2_2 = "REFRESH_SAVED_DRAWS"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L12_1 = RegisterNetEvent
L13_1 = "rcore_dispatch:server:refreshSavedDraws"
L14_1 = L11_1
L12_1(L13_1, L14_1)
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  if not A0_2 then
    return
  end
  L1_2 = A0_2.id
  if not L1_2 then
    return
  end
  L1_2 = A0_2.job
  if not L1_2 then
    return
  end
  L1_2 = GLOBALS
  L1_2 = L1_2.RELATED_JOBS
  L2_2 = A0_2.job
  L1_2 = L1_2[L2_2]
  if not L1_2 then
    return
  end
  L1_2 = dbg
  L1_2 = L1_2.info
  L2_2 = "Registering related agent with id "
  L3_2 = A0_2.id
  L4_2 = " to job "
  L5_2 = A0_2.job
  L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2
  L1_2(L2_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = GLOBALS
  L2_2 = L2_2.RELATED_JOBS
  L3_2 = A0_2.job
  L2_2 = L2_2[L3_2]
  L3_2 = A0_2.id
  L1_2(L2_2, L3_2)
  L1_2 = CONFIG
  L1_2 = L1_2.Features
  L1_2 = L1_2.radio
  if not L1_2 then
    return
  end
  L1_2 = {}
  L2_2 = pairs
  L3_2 = GLOBALS
  L3_2 = L3_2.RADIO
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = pairs
    L9_2 = L7_2
    L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
    for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
      L14_2 = IsPlayerInATac
      L15_2 = L13_2.id
      L14_2 = L14_2(L15_2)
      if not L14_2 then
        L14_2 = L13_2.job
        L15_2 = GLOBALS
        L15_2 = L15_2.CHARACTER
        L15_2 = L15_2.JOB
        if L14_2 == L15_2 then
          L14_2 = tonumber
          L15_2 = L13_2.id
          L14_2 = L14_2(L15_2)
          L1_2[L14_2] = false
        end
      end
    end
  end
  L2_2 = GLOBALS
  L2_2 = L2_2.GLOBAL_RADIO_TYPE
  if "job" ~= L2_2 then
    L2_2 = GLOBALS
    L2_2 = L2_2.GLOBAL_RADIO_TYPE
    if "all" == L2_2 then
      L2_2 = pairs
      L3_2 = GLOBALS
      L3_2 = L3_2.RELATED_JOBS
      L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
      for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
        L8_2 = pairs
        L9_2 = L7_2
        L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
        for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
          L14_2 = tonumber
          L15_2 = L13_2
          L14_2 = L14_2(L15_2)
          L1_2[L14_2] = false
        end
      end
    else
      L2_2 = GLOBALS
      L2_2 = L2_2.RELATED_JOBS
      L3_2 = GLOBALS
      L3_2 = L3_2.GLOBAL_RADIO_TYPE
      L2_2 = L2_2[L3_2]
      if L2_2 then
        L2_2 = pairs
        L3_2 = GLOBALS
        L3_2 = L3_2.RELATED_JOBS
        L4_2 = GLOBALS
        L4_2 = L4_2.GLOBAL_RADIO_TYPE
        L3_2 = L3_2[L4_2]
        L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
        for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
          L8_2 = tonumber
          L9_2 = L7_2
          L8_2 = L8_2(L9_2)
          L1_2[L8_2] = false
        end
      end
    end
    L2_2 = TriggerEvent
    L3_2 = "rcore_dispatch:client:syncGRadio"
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L13_1 = RegisterNetEvent
L14_1 = "rcore_dispatch:client:registerRelatedAgent"
L15_1 = L12_1
L13_1(L14_1, L15_1)
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  if not A0_2 then
    return
  end
  L1_2 = A0_2.id
  if not L1_2 then
    return
  end
  L1_2 = A0_2.job
  if not L1_2 then
    return
  end
  L1_2 = GLOBALS
  L1_2 = L1_2.RELATED_JOBS
  L2_2 = A0_2.job
  L1_2 = L1_2[L2_2]
  if not L1_2 then
    return
  end
  L1_2 = pairs
  L2_2 = GLOBALS
  L2_2 = L2_2.RELATED_JOBS
  L3_2 = A0_2.job
  L2_2 = L2_2[L3_2]
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = A0_2.id
    if L6_2 == L7_2 then
      L7_2 = dbg
      L7_2 = L7_2.info
      L8_2 = "Removing related agent with id "
      L9_2 = A0_2.id
      L10_2 = " from job "
      L11_2 = A0_2.job
      L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2
      L7_2(L8_2)
      L7_2 = table
      L7_2 = L7_2.remove
      L8_2 = GLOBALS
      L8_2 = L8_2.RELATED_JOBS
      L9_2 = A0_2.job
      L8_2 = L8_2[L9_2]
      L9_2 = L5_2
      L7_2(L8_2, L9_2)
    end
  end
  L1_2 = CONFIG
  L1_2 = L1_2.Features
  L1_2 = L1_2.radio
  if not L1_2 then
    return
  end
  L1_2 = {}
  L2_2 = pairs
  L3_2 = GLOBALS
  L3_2 = L3_2.RADIO
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = pairs
    L9_2 = L7_2
    L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
    for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
      L14_2 = IsPlayerInATac
      L15_2 = L13_2.id
      L14_2 = L14_2(L15_2)
      if not L14_2 then
        L14_2 = L13_2.job
        L15_2 = GLOBALS
        L15_2 = L15_2.CHARACTER
        L15_2 = L15_2.JOB
        if L14_2 == L15_2 then
          L14_2 = tonumber
          L15_2 = L13_2.id
          L14_2 = L14_2(L15_2)
          L1_2[L14_2] = false
        end
      end
    end
  end
  L2_2 = GLOBALS
  L2_2 = L2_2.GLOBAL_RADIO_TYPE
  if "job" ~= L2_2 then
    L2_2 = GLOBALS
    L2_2 = L2_2.GLOBAL_RADIO_TYPE
    if "all" == L2_2 then
      L2_2 = pairs
      L3_2 = GLOBALS
      L3_2 = L3_2.RELATED_JOBS
      L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
      for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
        L8_2 = pairs
        L9_2 = L7_2
        L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
        for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
          L14_2 = tonumber
          L15_2 = L13_2
          L14_2 = L14_2(L15_2)
          L1_2[L14_2] = false
        end
      end
    else
      L2_2 = GLOBALS
      L2_2 = L2_2.RELATED_JOBS
      L3_2 = GLOBALS
      L3_2 = L3_2.GLOBAL_RADIO_TYPE
      L2_2 = L2_2[L3_2]
      if L2_2 then
        L2_2 = pairs
        L3_2 = GLOBALS
        L3_2 = L3_2.RELATED_JOBS
        L4_2 = GLOBALS
        L4_2 = L4_2.GLOBAL_RADIO_TYPE
        L3_2 = L3_2[L4_2]
        L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
        for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
          L8_2 = tonumber
          L9_2 = L7_2
          L8_2 = L8_2(L9_2)
          L1_2[L8_2] = false
        end
      end
    end
    L2_2 = TriggerEvent
    L3_2 = "rcore_dispatch:client:syncGRadio"
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L14_1 = RegisterNetEvent
L15_1 = "rcore_dispatch:client:removeRelatedAgent"
L16_1 = L13_1
L14_1(L15_1, L16_1)
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = pairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = GLOBALS
    L7_2 = L7_2.CHARACTER
    L7_2 = L7_2.JOB
    if L5_2 ~= L7_2 then
      L7_2 = pairs
      L8_2 = L6_2
      L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
      for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
        L13_2 = table
        L13_2 = L13_2.insert
        L14_2 = GLOBALS
        L14_2 = L14_2.RELATED_JOBS
        L14_2 = L14_2[L5_2]
        L15_2 = L12_2.id
        L13_2(L14_2, L15_2)
      end
    end
  end
  L1_2 = {}
  L2_2 = pairs
  L3_2 = GLOBALS
  L3_2 = L3_2.RADIO
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = pairs
    L9_2 = L7_2
    L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
    for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
      L14_2 = IsPlayerInATac
      L15_2 = L13_2.id
      L14_2 = L14_2(L15_2)
      if not L14_2 then
        L14_2 = L13_2.job
        L15_2 = GLOBALS
        L15_2 = L15_2.CHARACTER
        L15_2 = L15_2.JOB
        if L14_2 == L15_2 then
          L14_2 = tonumber
          L15_2 = L13_2.id
          L14_2 = L14_2(L15_2)
          L1_2[L14_2] = false
        end
      end
    end
  end
  L2_2 = GLOBALS
  L2_2 = L2_2.GLOBAL_RADIO_TYPE
  if "job" ~= L2_2 then
    L2_2 = GLOBALS
    L2_2 = L2_2.GLOBAL_RADIO_TYPE
    if "all" == L2_2 then
      L2_2 = pairs
      L3_2 = GLOBALS
      L3_2 = L3_2.RELATED_JOBS
      L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
      for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
        L8_2 = pairs
        L9_2 = L7_2
        L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
        for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
          L14_2 = tonumber
          L15_2 = L13_2
          L14_2 = L14_2(L15_2)
          L1_2[L14_2] = false
        end
      end
    else
      L2_2 = GLOBALS
      L2_2 = L2_2.RELATED_JOBS
      L3_2 = GLOBALS
      L3_2 = L3_2.GLOBAL_RADIO_TYPE
      L2_2 = L2_2[L3_2]
      if L2_2 then
        L2_2 = pairs
        L3_2 = GLOBALS
        L3_2 = L3_2.RELATED_JOBS
        L4_2 = GLOBALS
        L4_2 = L4_2.GLOBAL_RADIO_TYPE
        L3_2 = L3_2[L4_2]
        L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
        for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
          L8_2 = tonumber
          L9_2 = L7_2
          L8_2 = L8_2(L9_2)
          L1_2[L8_2] = false
        end
      end
    end
    L2_2 = TriggerEvent
    L3_2 = "rcore_dispatch:client:syncGRadio"
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L15_1 = RegisterNetEvent
L16_1 = "rcore_dispatch:client:loadRelated"
L17_1 = L14_1
L15_1(L16_1, L17_1)
function L15_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = GetPlayerData
  L0_2 = L0_2()
  L1_2 = TriggerServerEvent
  L2_2 = "rcore_dispatch:server:getPlayerInfoCb"
  L3_2 = L0_2
  L1_2(L2_2, L3_2)
end
L16_1 = RegisterNetEvent
L17_1 = "rcore_dispatch:client:getPlayerInfoCb"
L18_1 = L15_1
L16_1(L17_1, L18_1)
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = pairs
  L3_2 = GLOBALS
  L3_2 = L3_2.UNITS
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = pairs
    L9_2 = L7_2
    L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
    for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
      L14_2 = L13_2.id
      if L14_2 == A0_2 then
        L14_2 = GLOBALS
        L14_2 = L14_2.UNITS
        L14_2 = L14_2[L6_2]
        L14_2 = L14_2[L12_2]
        L14_2.callsign = A1_2
      end
    end
  end
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = tonumber
  L4_2 = GLOBALS
  L4_2 = L4_2.CHARACTER
  L4_2 = L4_2.ID
  L3_2 = L3_2(L4_2)
  if L2_2 == L3_2 then
    L2_2 = GLOBALS
    L2_2 = L2_2.CHARACTER
    L2_2.CALLSIGN = A1_2
  end
  L2_2 = SendReactMessage
  L3_2 = "UPDATE_CALLSIGN"
  L4_2 = {}
  L4_2.id = A0_2
  L4_2.callsign = A1_2
  L2_2(L3_2, L4_2)
end
L17_1 = RegisterNetEvent
L18_1 = "rcore_dispatch:client:updateCallsign"
L19_1 = L16_1
L17_1(L18_1, L19_1)
