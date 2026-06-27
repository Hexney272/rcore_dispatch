local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = string
  L2_2 = L2_2.find
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2, L3_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L4_2 = true
    return L4_2
  end
end
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 ~= L1_2 then
    return
  end
  L1_2 = Citizen
  L1_2 = L1_2.Await
  L2_2 = LOAD_AGENTS
  L1_2(L2_2)
  L1_2 = Wait
  L2_2 = 1500
  L1_2(L2_2)
  L1_2 = dbg
  L1_2 = L1_2.info
  L2_2 = "Loading server-side agents..."
  L1_2(L2_2)
  L1_2 = GetPlayers
  L1_2 = L1_2()
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = tonumber
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    L9_2 = GetPlayerFromId
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    L10_2 = L9_2.getJob
    L10_2 = L10_2()
    if not L10_2 then
      return
    end
    L11_2 = CONFIG
    L11_2 = L11_2.JOBS
    L11_2 = L11_2[L10_2]
    if L11_2 then
      L11_2 = SubscribeAgent
      L12_2 = L8_2 or L12_2
      if not L8_2 then
        L12_2 = 0
      end
      L13_2 = L10_2
      L11_2(L12_2, L13_2)
    end
  end
  L2_2 = dbg
  L2_2 = L2_2.success
  L3_2 = "Server-side agents loaded, sending data to clients..."
  L2_2(L3_2)
  L2_2 = pairs
  L3_2 = CONFIG
  L3_2 = L3_2.JOBS
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = pairs
    L9_2 = DISPATCH
    L9_2 = L9_2.AGENTS
    L9_2 = L9_2[L6_2]
    L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
    for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
      L14_2 = TriggerClientEvent
      L15_2 = "rcore_dispatch:client:receiveData"
      L16_2 = L12_2
      L17_2 = {}
      L18_2 = DISPATCH
      L18_2 = L18_2.UNITS
      L18_2 = L18_2[L6_2]
      L17_2.UNITS = L18_2
      L18_2 = DISPATCH
      L18_2 = L18_2.AGENTS
      L18_2 = L18_2[L6_2]
      L17_2.AGENTS = L18_2
      L18_2 = DISPATCH
      L18_2 = L18_2.DRAWS
      L18_2 = L18_2[L6_2]
      L17_2.DRAWS = L18_2
      L18_2 = DISPATCH
      L18_2 = L18_2.ALERTS
      L18_2 = L18_2[L6_2]
      L17_2.ALERTS = L18_2
      L18_2 = DISPATCH
      L18_2 = L18_2.SAVED_DRAWS
      L18_2 = L18_2[L6_2]
      L17_2.SAVED_DRAWS = L18_2
      L18_2 = STATS_CACHE
      L14_2(L15_2, L16_2, L17_2, L18_2)
    end
  end
  L2_2 = pairs
  L3_2 = CONFIG
  L3_2 = L3_2.JOBS
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = pairs
    L9_2 = DISPATCH
    L9_2 = L9_2.AGENTS
    L9_2 = L9_2[L6_2]
    L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
    for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
      L14_2 = EmitToAgents
      L15_2 = "rcore_dispatch:client:registerAgent"
      L16_2 = L6_2
      L17_2 = L13_2
      L14_2(L15_2, L16_2, L17_2)
    end
  end
end
L2_1 = AddEventHandler
L3_1 = "onResourceStart"
L4_1 = L1_1
L2_1(L3_1, L4_1)
L2_1 = {}
function L3_1(A0_2, ...)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = tonumber
  L2_2 = source
  L1_2 = L1_2(L2_2)
  L2_2 = GetPlayerFromId
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.getJob
  L2_2 = L2_2()
  if not A0_2 then
    L3_2 = dbg
    L3_2 = L3_2.error
    L4_2 = "ERROR handling action"
    L3_2(L4_2)
  end
  L3_2 = DISPATCH
  L3_2 = L3_2.AGENTS
  L3_2 = L3_2[L2_2]
  L3_2 = L3_2[L1_2]
  if not L3_2 then
    L3_2 = dbg
    L3_2 = L3_2.error
    L4_2 = "Non registered with id "
    L5_2 = L1_2
    L6_2 = " is attempting to exploit the dispatch"
    L4_2 = L4_2 .. L5_2 .. L6_2
    return L3_2(L4_2)
  end
  if "change_unit" == A0_2 then
    L3_2, L4_2 = ...
    L5_2 = ChangeUnit
    L6_2 = L3_2
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  elseif "subscribe_alert" == A0_2 then
    L3_2 = (...)
    L4_2 = CreateThread
    function L5_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3
      L0_3 = DISPATCH
      L0_3 = L0_3.AGENTS
      L1_3 = L2_2
      L0_3 = L0_3[L1_3]
      L1_3 = L1_2
      L0_3 = L0_3[L1_3]
      L1_3 = nil
      L2_3 = pairs
      L3_3 = DISPATCH
      L3_3 = L3_3.ALERTS
      L4_3 = L2_2
      L3_3 = L3_3[L4_3]
      L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
      for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
        L8_3 = tonumber
        L9_3 = L7_3.id
        L8_3 = L8_3(L9_3)
        L9_3 = tonumber
        L10_3 = L3_2
        L9_3 = L9_3(L10_3)
        if L8_3 == L9_3 then
          L1_3 = L7_3
        end
      end
      if not L1_3 then
        L2_3 = dbg
        L2_3 = L2_3.error
        L3_3 = "Alert with id "
        L4_3 = L3_2
        L5_3 = " not found"
        L3_3 = L3_3 .. L4_3 .. L5_3
        return L2_3(L3_3)
      end
      L2_3 = L0_3.unit
      L3_3 = DISPATCH
      L3_3 = L3_3.UNITS
      L4_3 = L2_2
      L3_3 = L3_3[L4_3]
      L3_3 = L3_3[L2_3]
      L4_3 = _U
      L5_3 = "ASSIGN"
      L4_3 = L4_3(L5_3)
      if L2_3 == L4_3 then
        L4_3 = L1_2
        if not L4_3 then
          L4_3 = dbg
          L4_3 = L4_3.error
          L5_3 = "No source detected"
          return L4_3(L5_3)
        end
        L4_3 = "USER-"
        L5_3 = L1_2
        L4_3 = L4_3 .. L5_3
        L2_3 = L4_3
      end
      L4_3 = pairs
      L5_3 = L1_3.units
      L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3)
      for L8_3, L9_3 in L4_3, L5_3, L6_3, L7_3 do
        if L9_3 == L2_3 then
          L10_3 = dbg
          L10_3 = L10_3.warning
          L11_3 = "Already subscribed to alert "
          L12_3 = L3_2
          L13_3 = ". Removing the unit"
          L11_3 = L11_3 .. L12_3 .. L13_3
          L10_3(L11_3)
          L10_3 = pairs
          L11_3 = L1_3.units
          L10_3, L11_3, L12_3, L13_3 = L10_3(L11_3)
          for L14_3, L15_3 in L10_3, L11_3, L12_3, L13_3 do
            if L15_3 == L2_3 then
              L16_3 = L1_3.units
              L16_3[L14_3] = nil
            end
          end
          L10_3 = L0_1
          L11_3 = L2_3
          L12_3 = "USER"
          L10_3 = L10_3(L11_3, L12_3)
          if not L10_3 then
            L11_3 = L3_3
            L10_3 = L3_3.setAssignedToAlert
            L12_3 = false
            L10_3(L11_3, L12_3)
          end
          L10_3 = EmitToAgents
          L11_3 = "rcore_dispatch:client:updateAlert"
          L12_3 = L2_2
          L13_3 = "removeunits"
          L14_3 = L3_2
          L15_3 = L2_3
          L10_3(L11_3, L12_3, L13_3, L14_3, L15_3)
          return
        end
      end
      L4_3 = L3_3.assigned
      if L4_3 then
        L4_3 = dbg
        L4_3 = L4_3.warning
        L5_3 = "Unit "
        L6_3 = L2_3
        L7_3 = " is already assigned to alert, removing it"
        L5_3 = L5_3 .. L6_3 .. L7_3
        L4_3(L5_3)
        L4_3 = L3_3.alert_assigned
        L5_3 = nil
        L6_3 = pairs
        L7_3 = DISPATCH
        L7_3 = L7_3.ALERTS
        L8_3 = L2_2
        L7_3 = L7_3[L8_3]
        L6_3, L7_3, L8_3, L9_3 = L6_3(L7_3)
        for L10_3, L11_3 in L6_3, L7_3, L8_3, L9_3 do
          L12_3 = tonumber
          L13_3 = L11_3.id
          L12_3 = L12_3(L13_3)
          L13_3 = tonumber
          L14_3 = L4_3
          L13_3 = L13_3(L14_3)
          if L12_3 == L13_3 then
            L5_3 = L11_3
          end
        end
        if not L5_3 then
          L6_3 = dbg
          L6_3 = L6_3.error
          L7_3 = "Non police with id "
          L8_3 = L1_2
          L9_3 = " is attempting to exploit the dispatch"
          L7_3 = L7_3 .. L8_3 .. L9_3
          return L6_3(L7_3)
        end
        L6_3 = pairs
        L7_3 = L5_3.units
        L6_3, L7_3, L8_3, L9_3 = L6_3(L7_3)
        for L10_3, L11_3 in L6_3, L7_3, L8_3, L9_3 do
          if L11_3 == L2_3 then
            L12_3 = L5_3.units
            L12_3[L10_3] = nil
          end
        end
        L7_3 = L3_3
        L6_3 = L3_3.setAssignedToAlert
        L8_3 = false
        L6_3(L7_3, L8_3)
        L6_3 = EmitToAgents
        L7_3 = "rcore_dispatch:client:updateAlert"
        L8_3 = L2_2
        L9_3 = "removeunits"
        L10_3 = L4_3
        L11_3 = L2_3
        L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
      end
      L4_3 = L1_2
      if L4_3 then
        L4_3 = L0_1
        L5_3 = L2_3
        L6_3 = "USER"
        L4_3 = L4_3(L5_3, L6_3)
        if L4_3 then
          L5_3 = L1_2
          L4_3 = L2_1
          L4_3 = L4_3[L5_3]
          if L4_3 then
            L4_3 = pairs
            L5_3 = DISPATCH
            L5_3 = L5_3.ALERTS
            L6_3 = L2_2
            L5_3 = L5_3[L6_3]
            L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3)
            for L8_3, L9_3 in L4_3, L5_3, L6_3, L7_3 do
              L10_3 = L9_3.id
              L11_3 = L9_3.id
              L13_3 = L1_2
              L12_3 = L2_1
              L12_3 = L12_3[L13_3]
              if L11_3 == L12_3 then
                L11_3 = pairs
                L12_3 = L9_3.units
                L11_3, L12_3, L13_3, L14_3 = L11_3(L12_3)
                for L15_3, L16_3 in L11_3, L12_3, L13_3, L14_3 do
                  L17_3 = "USER-"
                  L18_3 = L1_2
                  L17_3 = L17_3 .. L18_3
                  if L16_3 == L17_3 then
                    L17_3 = L9_3.units
                    L17_3[L15_3] = nil
                    L17_3 = EmitToAgents
                    L18_3 = "rcore_dispatch:client:updateAlert"
                    L19_3 = L2_2
                    L20_3 = "removeunits"
                    L21_3 = L10_3
                    L22_3 = L16_3
                    L17_3(L18_3, L19_3, L20_3, L21_3, L22_3)
                  end
                end
              end
            end
          end
          L5_3 = L1_2
          L4_3 = L2_1
          L6_3 = L3_2
          L4_3[L5_3] = L6_3
        end
      end
      L4_3 = L0_1
      L5_3 = L2_3
      L6_3 = "USER"
      L4_3 = L4_3(L5_3, L6_3)
      if not L4_3 then
        L5_3 = L3_3
        L4_3 = L3_3.setAssignedToAlert
        L6_3 = true
        L7_3 = L3_2
        L4_3(L5_3, L6_3, L7_3)
      end
      L4_3 = L1_3.units
      L5_3 = CountTableElements
      L6_3 = L1_3.units
      L5_3 = L5_3(L6_3)
      L5_3 = L5_3 + 1
      L4_3[L5_3] = L2_3
      L4_3 = EmitToAgents
      L5_3 = "rcore_dispatch:client:updateAlert"
      L6_3 = L2_2
      L7_3 = "addunits"
      L8_3 = L3_2
      L9_3 = L2_3
      L4_3(L5_3, L6_3, L7_3, L8_3, L9_3)
    end
    L4_2(L5_2)
  elseif "toggle_ref" == A0_2 then
    L3_2 = DISPATCH
    L3_2 = L3_2.AGENTS
    L3_2 = L3_2[L2_2]
    L3_2 = L3_2[L1_2]
    L4_2 = (...)
    L6_2 = L3_2
    L5_2 = L3_2.toggleRef
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  elseif "unsubscribe_alert" == A0_2 then
    L3_2 = (...)
    L4_2 = CreateThread
    function L5_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
      L0_3 = DISPATCH
      L0_3 = L0_3.AGENTS
      L1_3 = L2_2
      L0_3 = L0_3[L1_3]
      L1_3 = L1_2
      L0_3 = L0_3[L1_3]
      L1_3 = nil
      L2_3 = pairs
      L3_3 = DISPATCH
      L3_3 = L3_3.ALERTS
      L4_3 = L2_2
      L3_3 = L3_3[L4_3]
      L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
      for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
        L8_3 = tonumber
        L9_3 = L7_3.id
        L8_3 = L8_3(L9_3)
        L9_3 = tonumber
        L10_3 = L3_2
        L9_3 = L9_3(L10_3)
        if L8_3 == L9_3 then
          L1_3 = L7_3
        end
      end
      if not L1_3 then
        L2_3 = dbg
        L2_3 = L2_3.error
        L3_3 = "Alert with id "
        L4_3 = L3_2
        L5_3 = " not found"
        L3_3 = L3_3 .. L4_3 .. L5_3
        return L2_3(L3_3)
      end
      if not L1_3 then
        L2_3 = dbg
        L2_3 = L2_3.error
        L3_3 = "Non police with id "
        L4_3 = L1_2
        L5_3 = " is attempting to exploit the dispatch"
        L3_3 = L3_3 .. L4_3 .. L5_3
        return L2_3(L3_3)
      end
      L2_3 = L0_3.unit
      L3_3 = DISPATCH
      L3_3 = L3_3.UNITS
      L4_3 = L2_2
      L3_3 = L3_3[L4_3]
      L3_3 = L3_3[L2_3]
      L4_3 = pairs
      L5_3 = L1_3.units
      L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3)
      for L8_3, L9_3 in L4_3, L5_3, L6_3, L7_3 do
        if L9_3 == L2_3 then
          L10_3 = L1_3.units
          L10_3[L8_3] = nil
        end
      end
      L5_3 = L3_3
      L4_3 = L3_3.setAssignedToAlert
      L6_3 = false
      L4_3(L5_3, L6_3)
      L4_3 = EmitToAgents
      L5_3 = "rcore_dispatch:client:updateAlert"
      L6_3 = L2_2
      L7_3 = "removeunits"
      L8_3 = L3_2
      L9_3 = L2_3
      L4_3(L5_3, L6_3, L7_3, L8_3, L9_3)
    end
    L4_2(L5_2)
  elseif "toggle_available" == A0_2 then
    L3_2 = DISPATCH
    L3_2 = L3_2.AGENTS
    L3_2 = L3_2[L2_2]
    L3_2 = L3_2[L1_2]
    if L3_2 then
      L5_2 = L3_2
      L4_2 = L3_2.toggleAvailable
      L4_2(L5_2)
    end
  end
end
L4_1 = RegisterNetEvent
L5_1 = "rcore_dispatch:server:actionTriggered"
L6_1 = L3_1
L4_1(L5_1, L6_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = tonumber
  L2_2 = source
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = "Server Side Alert"
  end
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L0_3 = A0_2.job
    L1_3 = os
    L1_3 = L1_3.time
    L1_3 = L1_3()
    L2_3 = os
    L2_3 = L2_3.date
    L3_3 = "%I:%M%p"
    L4_3 = L1_3
    L2_3 = L2_3(L3_3, L4_3)
    L3_3 = A0_2
    if not L3_3 then
      L3_3 = dbg
      L3_3 = L3_3.error
      L4_3 = "Error handling alert, check the event"
      return L3_3(L4_3)
    end
    L3_3 = A0_2.code
    if L3_3 then
      L3_3 = A0_2.default_priority
      if L3_3 then
        L3_3 = A0_2.coords
        if L3_3 then
          L3_3 = A0_2.text
          if L3_3 then
            L3_3 = A0_2.type
            if L3_3 then
              goto lbl_38
            end
          end
        end
      end
    end
    L3_3 = dbg
    L3_3 = L3_3.error
    L4_3 = "Malformed data"
    do return L3_3(L4_3) end
    ::lbl_38::
    L3_3 = L1_2
    A0_2.src = L3_3
    A0_2.rawtime = L1_3
    A0_2.time = L2_3
    L3_3 = os
    L3_3 = L3_3.date
    L4_3 = "%Y-%m-%d"
    L3_3 = L3_3(L4_3)
    A0_2.date = L3_3
    L3_3 = {}
    A0_2.units = L3_3
    L3_3 = L1_3 * 1000
    A0_2.unique_time = L3_3
    L3_3 = SV_CONFIG
    L3_3 = L3_3.UsingPSMDT
    if L3_3 then
      L3_3 = AddPsAlert
      L4_3 = A0_2
      L3_3(L4_3)
    end
    L3_3 = type
    L4_3 = A0_2.job
    L3_3 = L3_3(L4_3)
    if "string" == L3_3 then
      L3_3 = DISPATCH
      L3_3 = L3_3.ALERTS
      L3_3 = L3_3[L0_3]
      if not L3_3 then
        L3_3 = dbg
        L3_3 = L3_3.error
        L4_3 = "Job "
        L5_3 = L0_3
        L6_3 = " not found"
        L4_3 = L4_3 .. L5_3 .. L6_3
        return L3_3(L4_3)
      end
      L3_3 = GenerateAlertUniqueId
      L4_3 = L0_3
      L3_3 = L3_3(L4_3)
      A0_2.id = L3_3
      L4_3 = table
      L4_3 = L4_3.insert
      L5_3 = DISPATCH
      L5_3 = L5_3.ALERTS
      L5_3 = L5_3[L0_3]
      L6_3 = A0_2
      L4_3(L5_3, L6_3)
      L4_3 = CONFIG
      L4_3 = L4_3.JOBS
      L4_3 = L4_3[L0_3]
      L4_3 = L4_3.Ispolice
      if L4_3 then
        L4_3 = TriggerEvent
        L5_3 = "rcore_dispatch:server:updateStat"
        L6_3 = A0_2.type
        L7_3 = A0_2.coords
        L4_3(L5_3, L6_3, L7_3)
      end
      L4_3 = EmitToAgents
      L5_3 = "rcore_dispatch:client:sendAlert"
      L6_3 = L0_3
      L7_3 = A0_2
      L4_3(L5_3, L6_3, L7_3)
    else
      L3_3 = pairs
      L4_3 = A0_2.job
      L3_3, L4_3, L5_3, L6_3 = L3_3(L4_3)
      for L7_3, L8_3 in L3_3, L4_3, L5_3, L6_3 do
        L9_3 = DISPATCH
        L9_3 = L9_3.ALERTS
        L9_3 = L9_3[L8_3]
        if L9_3 then
          L9_3 = GenerateAlertUniqueId
          L10_3 = L8_3
          L9_3 = L9_3(L10_3)
          A0_2.id = L9_3
          L10_3 = table
          L10_3 = L10_3.insert
          L11_3 = DISPATCH
          L11_3 = L11_3.ALERTS
          L11_3 = L11_3[L8_3]
          L12_3 = A0_2
          L10_3(L11_3, L12_3)
          L10_3 = CONFIG
          L10_3 = L10_3.JOBS
          L10_3 = L10_3[L8_3]
          L10_3 = L10_3.Ispolice
          if L10_3 then
            L10_3 = TriggerEvent
            L11_3 = "rcore_dispatch:server:updateStat"
            L12_3 = A0_2.type
            L13_3 = A0_2.coords
            L10_3(L11_3, L12_3, L13_3)
          end
          L10_3 = EmitToAgents
          L11_3 = "rcore_dispatch:client:sendAlert"
          L12_3 = L8_3
          L13_3 = A0_2
          L10_3(L11_3, L12_3, L13_3)
        else
          L9_3 = dbg
          L9_3 = L9_3.error
          L10_3 = "Job "
          L11_3 = L8_3
          L12_3 = " not found"
          L10_3 = L10_3 .. L11_3 .. L12_3
          L9_3(L10_3)
        end
      end
    end
    L3_3 = SendDiscordLog
    L4_3 = "alert"
    L5_3 = A0_2.text
    L6_3 = L1_2
    L3_3(L4_3, L5_3, L6_3)
  end
  L2_2(L3_2)
end
L5_1 = RegisterNetEvent
L6_1 = "rcore_dispatch:server:sendAlert"
L7_1 = L4_1
L5_1(L6_1, L7_1)
L5_1 = exports
L6_1 = "SendAlert"
L7_1 = L4_1
L5_1(L6_1, L7_1)
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = os
  L2_2 = L2_2.date
  L3_2 = "%Y-%m-%d"
  L2_2 = L2_2(L3_2)
  L3_2 = STATS_CACHE
  L3_2 = L3_2[L2_2]
  if "car_robbery" == A0_2 then
    A0_2 = "car_robberies"
  elseif "bank_robbery" == A0_2 then
    A0_2 = "bank_robberies"
  elseif "shop_robbery" == A0_2 then
    A0_2 = "shop_robberies"
  end
  if not L3_2 then
    return
  end
  if "radar_coords" ~= A0_2 then
    L4_2 = L3_2[A0_2]
    if not L4_2 then
      L4_2 = dbg
      L4_2 = L4_2.error
      L5_2 = "The stat "
      L6_2 = A0_2
      L7_2 = " does not exist"
      L5_2 = L5_2 .. L6_2 .. L7_2
      return L4_2(L5_2)
    end
    L4_2 = L3_2[A0_2]
    L4_2 = L4_2 + 1
    L3_2[A0_2] = L4_2
    L4_2 = L3_2.alert_coords
    L5_2 = L3_2.alert_coords
    L5_2 = #L5_2
    L5_2 = L5_2 + 1
    L4_2[L5_2] = A1_2
  else
    L4_2 = L3_2.radar_coords
    L5_2 = L3_2.radar_coords
    L5_2 = #L5_2
    L5_2 = L5_2 + 1
    L4_2[L5_2] = A1_2
  end
  L4_2 = dbg
  L4_2 = L4_2.success
  L5_2 = "Stat updated: "
  L6_2 = A0_2
  L5_2 = L5_2 .. L6_2
  L4_2(L5_2)
end
UpdateStat = L5_1
L5_1 = RegisterNetEvent
L6_1 = "rcore_dispatch:server:updateStat"
L7_1 = UpdateStat
L5_1(L6_1, L7_1)
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = tonumber
  L2_2 = source
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = tonumber
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
  end
  if not L1_2 then
    L2_2 = dbg
    L2_2 = L2_2.error
    L3_2 = "Source missing in event/export \"RemovePlayer\""
    L2_2(L3_2)
  end
  L2_2 = dbg
  L2_2 = L2_2.info
  L3_2 = "Player with id "
  L4_2 = L1_2
  L5_2 = " disconnected or logged out"
  L3_2 = L3_2 .. L4_2 .. L5_2
  L2_2(L3_2)
  L2_2 = UnloadPlayer
  L3_2 = tonumber
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = 0
  end
  L4_2 = "unLuad-from-FiveM"
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
end
L6_1 = RegisterNetEvent
L7_1 = "playerDropped"
L8_1 = L5_1
L6_1(L7_1, L8_1)
L6_1 = RegisterNetEvent
L7_1 = "rcore_dispatch:server:removePlayer"
L8_1 = L5_1
L6_1(L7_1, L8_1)
L6_1 = exports
L7_1 = "RemovePlayer"
L8_1 = L5_1
L6_1(L7_1, L8_1)
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2.selected
  if not L1_2 then
    L1_2 = dbg
    L1_2 = L1_2.critical
    L2_2 = "Malformed data"
    return L1_2(L2_2)
  end
  L1_2 = tonumber
  L2_2 = source
  L1_2 = L1_2(L2_2)
  L2_2 = GetPlayerFromId
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.getJob
  L2_2 = L2_2()
  L3_2 = CountTableElements
  L4_2 = DISPATCH
  L4_2 = L4_2.DRAWS
  L4_2 = L4_2[L2_2]
  L5_2 = A0_2.selected
  L4_2 = L4_2[L5_2]
  L3_2 = L3_2(L4_2)
  L4_2 = SV_CONFIG
  L4_2 = L4_2.DrawLimit
  if L3_2 >= L4_2 then
    L3_2 = TriggerClientEvent
    L4_2 = "rcore_dispatch:client:notify"
    L5_2 = L1_2
    L6_2 = _U
    L7_2 = "REACH_LIMIT"
    L6_2 = L6_2(L7_2)
    L7_2 = L6_2
    L6_2 = L6_2.format
    L8_2 = SV_CONFIG
    L8_2 = L8_2.DrawLimit
    L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
    return L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  end
  L3_2 = DISPATCH
  L3_2 = L3_2.DRAWS
  L3_2 = L3_2[L2_2]
  L4_2 = A0_2.selected
  L3_2 = L3_2[L4_2]
  L4_2 = CountTableElements
  L5_2 = DISPATCH
  L5_2 = L5_2.DRAWS
  L5_2 = L5_2[L2_2]
  L6_2 = A0_2.selected
  L5_2 = L5_2[L6_2]
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2 + 1
  L3_2[L4_2] = A0_2
  L3_2 = EmitToAgents
  L4_2 = "rcore_dispatch:client:updatePaint"
  L5_2 = L2_2
  L6_2 = A0_2
  L7_2 = L1_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L7_1 = RegisterNetEvent
L8_1 = "rcore_dispatch:server:updatePaint"
L9_1 = L6_1
L7_1(L8_1, L9_1)
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = tonumber
  L3_2 = source
  L2_2 = L2_2(L3_2)
  L3_2 = GetPlayerFromId
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.getJob
  L3_2 = L3_2()
  L4_2 = DISPATCH
  L4_2 = L4_2.AGENTS
  L4_2 = L4_2[L3_2]
  L4_2 = L4_2[L2_2]
  if not L4_2 then
    L4_2 = dbg
    L4_2 = L4_2.error
    L5_2 = "Non police with id "
    L6_2 = L2_2
    L7_2 = " is attempting to exploit the dispatch"
    L5_2 = L5_2 .. L6_2 .. L7_2
    return L4_2(L5_2)
  end
  L4_2 = CreateThread
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3
    L0_3 = pairs
    L1_3 = A0_2
    L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
    for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
      L6_3 = L5_3.type
      L7_3 = L5_3.vertices
      if "circle" == L6_3 then
        L8_3 = L7_3[1]
        L9_3 = L7_3[2]
        L10_3 = pairs
        L11_3 = DISPATCH
        L11_3 = L11_3.DRAWS
        L12_3 = L3_2
        L11_3 = L11_3[L12_3]
        L12_3 = A1_2
        L11_3 = L11_3[L12_3]
        L10_3, L11_3, L12_3, L13_3 = L10_3(L11_3)
        for L14_3, L15_3 in L10_3, L11_3, L12_3, L13_3 do
          L16_3 = L15_3.type
          if L16_3 == L6_3 then
            L16_3 = tostring
            L17_3 = L15_3.vertices
            L17_3 = L17_3[1]
            L17_3 = L17_3[2]
            L16_3 = L16_3(L17_3)
            L17_3 = tostring
            L18_3 = L8_3.lng
            L17_3 = L17_3(L18_3)
            if L16_3 == L17_3 then
              L16_3 = tostring
              L17_3 = L15_3.vertices
              L17_3 = L17_3[1]
              L17_3 = L17_3[1]
              L16_3 = L16_3(L17_3)
              L17_3 = tostring
              L18_3 = L8_3.lat
              L17_3 = L17_3(L18_3)
              if L16_3 == L17_3 then
                L16_3 = tostring
                L17_3 = L15_3.vertices
                L17_3 = L17_3[2]
                L16_3 = L16_3(L17_3)
                L17_3 = tostring
                L18_3 = L9_3
                L17_3 = L17_3(L18_3)
                if L16_3 == L17_3 then
                  L16_3 = dbg
                  L16_3 = L16_3.info
                  L17_3 = "Removing paint with id "
                  L18_3 = L14_3
                  L17_3 = L17_3 .. L18_3
                  L16_3(L17_3)
                  L16_3 = DISPATCH
                  L16_3 = L16_3.DRAWS
                  L17_3 = L3_2
                  L16_3 = L16_3[L17_3]
                  L17_3 = A1_2
                  L16_3 = L16_3[L17_3]
                  L16_3[L14_3] = nil
                end
              end
            end
          end
        end
      else
        L8_3 = L7_3[1]
        L9_3 = false
        L10_3 = L7_3[1]
        L10_3 = L10_3.lng
        if L10_3 then
          L8_3 = L7_3
          L9_3 = true
        end
        L10_3 = #L8_3
        L11_3 = 0
        L12_3 = pairs
        L13_3 = L8_3
        L12_3, L13_3, L14_3, L15_3 = L12_3(L13_3)
        for L16_3, L17_3 in L12_3, L13_3, L14_3, L15_3 do
          L18_3 = L17_3.lat
          L19_3 = L17_3.lng
          L20_3 = pairs
          L21_3 = DISPATCH
          L21_3 = L21_3.DRAWS
          L22_3 = L3_2
          L21_3 = L21_3[L22_3]
          L22_3 = A1_2
          L21_3 = L21_3[L22_3]
          L20_3, L21_3, L22_3, L23_3 = L20_3(L21_3)
          for L24_3, L25_3 in L20_3, L21_3, L22_3, L23_3 do
            L26_3 = L25_3.type
            if "circle" ~= L26_3 then
              L26_3 = L25_3.vertices
              L26_3 = L26_3[1]
              if L9_3 then
                L26_3 = L25_3.vertices
              end
              L27_3 = pairs
              L28_3 = L26_3
              L27_3, L28_3, L29_3, L30_3 = L27_3(L28_3)
              for L31_3, L32_3 in L27_3, L28_3, L29_3, L30_3 do
                L33_3 = type
                L34_3 = L32_3
                L33_3 = L33_3(L34_3)
                if "table" == L33_3 then
                  L33_3 = string
                  L33_3 = L33_3.sub
                  L34_3 = tostring
                  L35_3 = L32_3.lat
                  L34_3 = L34_3(L35_3)
                  L35_3 = 1
                  L36_3 = 5
                  L33_3 = L33_3(L34_3, L35_3, L36_3)
                  L34_3 = string
                  L34_3 = L34_3.sub
                  L35_3 = tostring
                  L36_3 = L18_3
                  L35_3 = L35_3(L36_3)
                  L36_3 = 1
                  L37_3 = 5
                  L34_3 = L34_3(L35_3, L36_3, L37_3)
                  if L33_3 == L34_3 then
                    L33_3 = string
                    L33_3 = L33_3.sub
                    L34_3 = tostring
                    L35_3 = L32_3.lng
                    L34_3 = L34_3(L35_3)
                    L35_3 = 1
                    L36_3 = 5
                    L33_3 = L33_3(L34_3, L35_3, L36_3)
                    L34_3 = string
                    L34_3 = L34_3.sub
                    L35_3 = tostring
                    L36_3 = L19_3
                    L35_3 = L35_3(L36_3)
                    L36_3 = 1
                    L37_3 = 5
                    L34_3 = L34_3(L35_3, L36_3, L37_3)
                    if L33_3 == L34_3 then
                      L11_3 = L11_3 + 1
                      if L10_3 == L11_3 then
                        L33_3 = dbg
                        L33_3 = L33_3.info
                        L34_3 = "Removing paint with id "
                        L35_3 = L24_3
                        L34_3 = L34_3 .. L35_3
                        L33_3(L34_3)
                        L33_3 = DISPATCH
                        L33_3 = L33_3.DRAWS
                        L34_3 = L3_2
                        L33_3 = L33_3[L34_3]
                        L34_3 = A1_2
                        L33_3 = L33_3[L34_3]
                        L33_3[L24_3] = nil
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
    L0_3 = EmitToAgents
    L1_3 = "rcore_dispatch:client:loadDraws"
    L2_3 = L3_2
    L3_3 = DISPATCH
    L3_3 = L3_3.DRAWS
    L4_3 = L3_2
    L3_3 = L3_3[L4_3]
    L0_3(L1_3, L2_3, L3_3)
  end
  L4_2(L5_2)
end
L8_1 = RegisterNetEvent
L9_1 = "rcore_dispatch:server:removePaints"
L10_1 = L7_1
L8_1(L9_1, L10_1)
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = tonumber
  L3_2 = source
  L2_2 = L2_2(L3_2)
  L3_2 = GetPlayerFromId
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.getJob
  L3_2 = L3_2()
  if not A1_2 then
    return
  end
  L4_2 = DISPATCH
  L4_2 = L4_2.AGENTS
  L4_2 = L4_2[L3_2]
  L4_2 = L4_2[L2_2]
  if not L4_2 then
    L4_2 = dbg
    L4_2 = L4_2.error
    L5_2 = "Non registered with id "
    L6_2 = L2_2
    L7_2 = " is attempting to exploit the dispatch"
    L5_2 = L5_2 .. L6_2 .. L7_2
    return L4_2(L5_2)
  end
  L4_2 = DISPATCH
  L4_2 = L4_2.AGENTS
  L4_2 = L4_2[L3_2]
  L4_2 = L4_2[L2_2]
  L5_2 = L4_2.unit
  L6_2 = DISPATCH
  L6_2 = L6_2.UNITS
  L6_2 = L6_2[L3_2]
  L6_2 = L6_2[L5_2]
  L8_2 = L6_2
  L7_2 = L6_2.removeRadioAgent
  L9_2 = L4_2.id
  L7_2(L8_2, L9_2)
  L7_2 = dbg
  L7_2 = L7_2.info
  L8_2 = "Frequency changed"
  L7_2(L8_2)
end
L9_1 = RegisterNetEvent
L10_1 = "rcore_dispatch:server:frequencyChanged"
L11_1 = L8_1
L9_1(L10_1, L11_1)
function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = tonumber
  L1_2 = source
  L0_2 = L0_2(L1_2)
  L1_2 = GetPlayerFromId
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.getJob
  L1_2 = L1_2()
  L2_2 = DISPATCH
  L2_2 = L2_2.AGENTS
  L2_2 = L2_2[L1_2]
  L2_2 = L2_2[L0_2]
  if not L2_2 then
    L2_2 = dbg
    L2_2 = L2_2.error
    L3_2 = "Non registered with id "
    L4_2 = L0_2
    L5_2 = " is attempting to exploit the dispatch"
    L3_2 = L3_2 .. L4_2 .. L5_2
    return L2_2(L3_2)
  end
  L2_2 = GlobalState
  L3_2 = "user_radio_"
  L4_2 = L0_2
  L3_2 = L3_2 .. L4_2
  L2_2[L3_2] = true
end
L10_1 = RegisterNetEvent
L11_1 = "rcore_dispatch:server:speakingGlobal"
L12_1 = L9_1
L10_1(L11_1, L12_1)
function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = tonumber
  L1_2 = source
  L0_2 = L0_2(L1_2)
  L1_2 = GetPlayerFromId
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.getJob
  L1_2 = L1_2()
  L2_2 = DISPATCH
  L2_2 = L2_2.AGENTS
  L2_2 = L2_2[L1_2]
  L2_2 = L2_2[L0_2]
  if not L2_2 then
    L2_2 = dbg
    L2_2 = L2_2.error
    L3_2 = "Non registered with id "
    L4_2 = L0_2
    L5_2 = " is attempting to exploit the dispatch"
    L3_2 = L3_2 .. L4_2 .. L5_2
    return L2_2(L3_2)
  end
  L2_2 = GlobalState
  L3_2 = "user_radio_"
  L4_2 = L0_2
  L3_2 = L3_2 .. L4_2
  L2_2[L3_2] = false
end
L11_1 = RegisterNetEvent
L12_1 = "rcore_dispatch:server:cancelSpeakingGlobal"
L13_1 = L10_1
L11_1(L12_1, L13_1)
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = tonumber
  L2_2 = source
  L1_2 = L1_2(L2_2)
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = Wait
    L1_3 = 150
    L0_3(L1_3)
    L0_3 = GetPlayerFromId
    L1_3 = L1_2
    L0_3 = L0_3(L1_3)
    L0_3 = L0_3.getJob
    L0_3 = L0_3()
    L1_3 = DISPATCH
    L1_3 = L1_3.AGENTS
    L1_3 = L1_3[L0_3]
    L2_3 = L1_2
    L1_3 = L1_3[L2_3]
    if not L1_3 then
      L1_3 = dbg
      L1_3 = L1_3.error
      L2_3 = "Non registered with id "
      L3_3 = L1_2
      L4_3 = " is attempting to exploit the dispatch"
      L2_3 = L2_3 .. L3_3 .. L4_3
      return L1_3(L2_3)
    end
    L1_3 = DISPATCH
    L1_3 = L1_3.UNITS
    L1_3 = L1_3[L0_3]
    L2_3 = A0_2
    L1_3 = L1_3[L2_3]
    L2_3 = DISPATCH
    L2_3 = L2_3.AGENTS
    L2_3 = L2_3[L0_3]
    L3_3 = L1_2
    L2_3 = L2_3[L3_3]
    L2_3 = L2_3.name
    L4_3 = L1_3
    L3_3 = L1_3.addRadioAgent
    L5_3 = L1_2
    L6_3 = L2_3
    L3_3(L4_3, L5_3, L6_3)
    L3_3 = dbg
    L3_3 = L3_3.info
    L4_3 = "Joined frequency "
    L5_3 = A0_2
    L4_3 = L4_3 .. L5_3
    L3_3(L4_3)
  end
  L2_2(L3_2)
end
L12_1 = RegisterNetEvent
L13_1 = "rcore_dispatch:server:joinFrequency"
L14_1 = L11_1
L12_1(L13_1, L14_1)
function L12_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = tonumber
  L1_2 = source
  L0_2 = L0_2(L1_2)
  L1_2 = GetPlayerFromId
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.getJob
  L1_2 = L1_2()
  L2_2 = DISPATCH
  L2_2 = L2_2.AGENTS
  L2_2 = L2_2[L1_2]
  L2_2 = L2_2[L0_2]
  if not L2_2 then
    L2_2 = dbg
    L2_2 = L2_2.error
    L3_2 = "Non registered with id "
    L4_2 = L0_2
    L5_2 = " is attempting to exploit the dispatch"
    L3_2 = L3_2 .. L4_2 .. L5_2
    return L2_2(L3_2)
  end
  L2_2 = TriggerClientEvent
  L3_2 = "rcore_dispatch:client:loadDraws"
  L4_2 = L0_2
  L5_2 = DISPATCH
  L5_2 = L5_2.DRAWS
  L5_2 = L5_2[L1_2]
  L2_2(L3_2, L4_2, L5_2)
end
L13_1 = RegisterNetEvent
L14_1 = "rcore_dispatch:server:fetchDrawsAdmin"
L15_1 = L12_1
L13_1(L14_1, L15_1)
function L13_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L3_2 = tonumber
  L4_2 = source
  L3_2 = L3_2(L4_2)
  L4_2 = GetPlayerFromId
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2.getJob
  L4_2 = L4_2()
  L5_2 = DISPATCH
  L5_2 = L5_2.AGENTS
  L5_2 = L5_2[L4_2]
  L5_2 = L5_2[L3_2]
  if not L5_2 then
    L5_2 = dbg
    L5_2 = L5_2.error
    L6_2 = "Non registered with id "
    L7_2 = L3_2
    L8_2 = " is attempting to exploit the dispatch"
    L6_2 = L6_2 .. L7_2 .. L8_2
    return L5_2(L6_2)
  end
  L5_2 = DISPATCH
  L5_2 = L5_2.DRAWS
  L5_2 = L5_2[L4_2]
  L5_2 = L5_2[A0_2]
  L6_2 = pairs
  L7_2 = DISPATCH
  L7_2 = L7_2.SAVED_DRAWS
  L7_2 = L7_2[L4_2]
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = L11_2.name
    if L12_2 == A1_2 then
      L12_2 = TriggerClientEvent
      L13_2 = "rcore_dispatch:client:notify"
      L14_2 = L3_2
      L15_2 = _U
      L16_2 = "DRAW_ALREADY_SAVED"
      L15_2, L16_2 = L15_2(L16_2)
      return L12_2(L13_2, L14_2, L15_2, L16_2)
    end
  end
  L6_2 = DISPATCH
  L6_2 = L6_2.SAVED_DRAWS
  L7_2 = {}
  L6_2[L4_2] = L7_2
  L6_2 = MySQL
  L6_2 = L6_2.Async
  L6_2 = L6_2.execute
  L7_2 = "INSERT INTO `dispatch_draws` (`name`, `job`, `data`, `url`) VALUES (@name, @job, @data, @url)"
  L8_2 = {}
  L8_2["@name"] = A1_2
  L8_2["@job"] = L4_2
  L9_2 = json
  L9_2 = L9_2.encode
  L10_2 = L5_2
  L9_2 = L9_2(L10_2)
  L8_2["@data"] = L9_2
  L8_2["@url"] = A2_2
  function L9_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    L1_3 = MySQL
    L1_3 = L1_3.Sync
    L1_3 = L1_3.fetchAll
    L2_3 = "SELECT * FROM dispatch_draws"
    L1_3 = L1_3(L2_3)
    L2_3 = 1
    L3_3 = #L1_3
    L4_3 = 1
    for L5_3 = L2_3, L3_3, L4_3 do
      L6_3 = L1_3[L5_3]
      L7_3 = L6_3.job
      L8_3 = L6_3.id
      L9_3 = L6_3.name
      L10_3 = json
      L10_3 = L10_3.decode
      L11_3 = L6_3.data
      L10_3 = L10_3(L11_3)
      L11_3 = L6_3.url
      L12_3 = table
      L12_3 = L12_3.insert
      L13_3 = DISPATCH
      L13_3 = L13_3.SAVED_DRAWS
      L13_3 = L13_3[L7_3]
      L14_3 = {}
      L14_3.id = L8_3
      L14_3.name = L9_3
      L14_3.data = L10_3
      L14_3.url = L11_3
      L12_3(L13_3, L14_3)
    end
    L2_3 = EmitToAgents
    L3_3 = "rcore_dispatch:server:refreshSavedDraws"
    L4_3 = L4_2
    L5_3 = DISPATCH
    L5_3 = L5_3.SAVED_DRAWS
    L6_3 = L4_2
    L5_3 = L5_3[L6_3]
    L2_3(L3_3, L4_3, L5_3)
  end
  L6_2(L7_2, L8_2, L9_2)
end
L14_1 = RegisterNetEvent
L15_1 = "rcore_dispatch:server:saveDraw"
L16_1 = L13_1
L14_1(L15_1, L16_1)
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = tonumber
  L2_2 = source
  L1_2 = L1_2(L2_2)
  L2_2 = GetPlayerFromId
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.getJob
  L2_2 = L2_2()
  L3_2 = DISPATCH
  L3_2 = L3_2.AGENTS
  L3_2 = L3_2[L2_2]
  L3_2 = L3_2[L1_2]
  if not L3_2 then
    L3_2 = dbg
    L3_2 = L3_2.error
    L4_2 = "Non registered with id "
    L5_2 = L1_2
    L6_2 = " is attempting to exploit the dispatch"
    L4_2 = L4_2 .. L5_2 .. L6_2
    return L3_2(L4_2)
  end
  L3_2 = dbg
  L3_2 = L3_2.info
  L4_2 = "Removing draw with id "
  L5_2 = A0_2
  L4_2 = L4_2 .. L5_2
  L3_2(L4_2)
  L3_2 = MySQL
  L3_2 = L3_2.Async
  L3_2 = L3_2.execute
  L4_2 = "DELETE FROM dispatch_draws WHERE id = @id"
  L5_2 = {}
  L6_2 = tonumber
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  L5_2["@id"] = L6_2
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L1_3 = pairs
    L2_3 = DISPATCH
    L2_3 = L2_3.SAVED_DRAWS
    L3_3 = L2_2
    L2_3 = L2_3[L3_3]
    L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
    for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
      L7_3 = tonumber
      L8_3 = L6_3.id
      L7_3 = L7_3(L8_3)
      L8_3 = tonumber
      L9_3 = A0_2
      L8_3 = L8_3(L9_3)
      if L7_3 == L8_3 then
        L7_3 = table
        L7_3 = L7_3.remove
        L8_3 = DISPATCH
        L8_3 = L8_3.SAVED_DRAWS
        L9_3 = L2_2
        L8_3 = L8_3[L9_3]
        L9_3 = L5_3
        L7_3(L8_3, L9_3)
      end
    end
    L1_3 = EmitToAgents
    L2_3 = "rcore_dispatch:server:refreshSavedDraws"
    L3_3 = L2_2
    L4_3 = DISPATCH
    L4_3 = L4_3.SAVED_DRAWS
    L5_3 = L2_2
    L4_3 = L4_3[L5_3]
    L1_3(L2_3, L3_3, L4_3)
  end
  L3_2(L4_2, L5_2, L6_2)
end
L15_1 = RegisterNetEvent
L16_1 = "rcore_dispatch:server:removeDraw"
L17_1 = L14_1
L15_1(L16_1, L17_1)
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = nil
  L3_2 = tonumber
  L4_2 = source
  L3_2 = L3_2(L4_2)
  L4_2 = GetPlayerFromId
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2.getJob
  L4_2 = L4_2()
  L5_2 = DISPATCH
  L5_2 = L5_2.AGENTS
  L5_2 = L5_2[L4_2]
  L5_2 = L5_2[L3_2]
  if not L5_2 then
    L5_2 = dbg
    L5_2 = L5_2.error
    L6_2 = "Non registered with id "
    L7_2 = L3_2
    L8_2 = " is attempting to exploit the dispatch"
    L6_2 = L6_2 .. L7_2 .. L8_2
    return L5_2(L6_2)
  end
  L5_2 = CountTableElements
  L6_2 = DISPATCH
  L6_2 = L6_2.DRAWS
  L6_2 = L6_2[L4_2]
  L6_2 = L6_2[A1_2]
  L5_2 = L5_2(L6_2)
  L6_2 = SV_CONFIG
  L6_2 = L6_2.DrawLimit
  if L5_2 >= L6_2 then
    L5_2 = TriggerClientEvent
    L6_2 = "rcore_dispatch:client:notify"
    L7_2 = L3_2
    L8_2 = _U
    L9_2 = "REACH_LIMIT"
    L8_2 = L8_2(L9_2)
    L9_2 = L8_2
    L8_2 = L8_2.format
    L10_2 = SV_CONFIG
    L10_2 = L10_2.DrawLimit
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L8_2(L9_2, L10_2)
    return L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  end
  L5_2 = pairs
  L6_2 = DISPATCH
  L6_2 = L6_2.SAVED_DRAWS
  L6_2 = L6_2[L4_2]
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    if L10_2 then
      L11_2 = tonumber
      L12_2 = L10_2.id
      L11_2 = L11_2(L12_2)
      L12_2 = tonumber
      L13_2 = A0_2
      L12_2 = L12_2(L13_2)
      if L11_2 == L12_2 then
        L2_2 = L10_2
        break
      end
    end
  end
  if L2_2 then
    L5_2 = CountTableElements
    L6_2 = L2_2.data
    L5_2 = L5_2(L6_2)
    L6_2 = CountTableElements
    L7_2 = DISPATCH
    L7_2 = L7_2.DRAWS
    L7_2 = L7_2[L4_2]
    L7_2 = L7_2[A1_2]
    L6_2 = L6_2(L7_2)
    L5_2 = L5_2 + L6_2
    L6_2 = SV_CONFIG
    L6_2 = L6_2.DrawLimit
    if L5_2 > L6_2 then
      L5_2 = TriggerClientEvent
      L6_2 = "rcore_dispatch:client:notify"
      L7_2 = L3_2
      L8_2 = _U
      L9_2 = "REACH_LIMIT"
      L8_2 = L8_2(L9_2)
      L9_2 = L8_2
      L8_2 = L8_2.format
      L10_2 = SV_CONFIG
      L10_2 = L10_2.DrawLimit
      L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L8_2(L9_2, L10_2)
      return L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    end
    L5_2 = pairs
    L6_2 = L2_2.data
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
      L11_2 = table
      L11_2 = L11_2.insert
      L12_2 = DISPATCH
      L12_2 = L12_2.DRAWS
      L12_2 = L12_2[L4_2]
      L12_2 = L12_2[A1_2]
      L13_2 = L10_2
      L11_2(L12_2, L13_2)
    end
    L5_2 = EmitToAgents
    L6_2 = "rcore_dispatch:client:loadDraws"
    L7_2 = L4_2
    L8_2 = DISPATCH
    L8_2 = L8_2.DRAWS
    L8_2 = L8_2[L4_2]
    L5_2(L6_2, L7_2, L8_2)
  end
end
L16_1 = RegisterNetEvent
L17_1 = "rcore_dispatch:server:drawSavedDraw"
L18_1 = L15_1
L16_1(L17_1, L18_1)
function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CONFIG
  L1_2 = L1_2.EnableCallsigns
  if not L1_2 then
    L1_2 = dbg
    L1_2 = L1_2.error
    L2_2 = "Callsigns are disabled"
    return L1_2(L2_2)
  end
  L1_2 = tonumber
  L2_2 = source
  L1_2 = L1_2(L2_2)
  L2_2 = GetPlayerFromId
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.getJob
  L2_2 = L2_2()
  L3_2 = DISPATCH
  L3_2 = L3_2.AGENTS
  L3_2 = L3_2[L2_2]
  L3_2 = L3_2[L1_2]
  if not L3_2 then
    L3_2 = dbg
    L3_2 = L3_2.error
    L4_2 = "Non registered with id "
    L5_2 = L1_2
    L6_2 = " is attempting to exploit the dispatch"
    L4_2 = L4_2 .. L5_2 .. L6_2
    return L3_2(L4_2)
  end
  L3_2 = DISPATCH
  L3_2 = L3_2.AGENTS
  L3_2 = L3_2[L2_2]
  L3_2 = L3_2[L1_2]
  L5_2 = L3_2
  L4_2 = L3_2.setCallsign
  L6_2 = A0_2
  L4_2(L5_2, L6_2)
  L4_2 = DISPATCH
  L4_2 = L4_2.UNITS
  L4_2 = L4_2[L2_2]
  L5_2 = L3_2.unit
  L4_2 = L4_2[L5_2]
  L6_2 = L4_2
  L5_2 = L4_2.setAgentCallsign
  L7_2 = L1_2
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = EmitToAgents
  L6_2 = "rcore_dispatch:client:updateCallsign"
  L7_2 = L2_2
  L8_2 = L1_2
  L9_2 = A0_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
end
L17_1 = RegisterNetEvent
L18_1 = "rcore_dispatch:server:changeCallsign"
L19_1 = L16_1
L17_1(L18_1, L19_1)
function L17_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = CONFIG
  L0_2 = L0_2.EnableCallsigns
  if not L0_2 then
    L0_2 = dbg
    L0_2 = L0_2.error
    L1_2 = "Callsigns are disabled"
    return L0_2(L1_2)
  end
  L0_2 = tonumber
  L1_2 = source
  L0_2 = L0_2(L1_2)
  L1_2 = GetPlayerFromId
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.getJob
  L1_2 = L1_2()
  L2_2 = DISPATCH
  L2_2 = L2_2.AGENTS
  L2_2 = L2_2[L1_2]
  L2_2 = L2_2[L0_2]
  if not L2_2 then
    L2_2 = dbg
    L2_2 = L2_2.error
    L3_2 = "Non registered with id "
    L4_2 = L0_2
    L5_2 = " is attempting to exploit the dispatch"
    L3_2 = L3_2 .. L4_2 .. L5_2
    return L2_2(L3_2)
  end
  L2_2 = DISPATCH
  L2_2 = L2_2.AGENTS
  L2_2 = L2_2[L1_2]
  L2_2 = L2_2[L0_2]
  L4_2 = L2_2
  L3_2 = L2_2.setCallsign
  L5_2 = nil
  L3_2(L4_2, L5_2)
  L3_2 = DISPATCH
  L3_2 = L3_2.UNITS
  L3_2 = L3_2[L1_2]
  L4_2 = L2_2.unit
  L3_2 = L3_2[L4_2]
  L5_2 = L3_2
  L4_2 = L3_2.setAgentCallsign
  L6_2 = L0_2
  L7_2 = nil
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = EmitToAgents
  L5_2 = "rcore_dispatch:client:updateCallsign"
  L6_2 = L1_2
  L7_2 = L0_2
  L8_2 = nil
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L18_1 = RegisterNetEvent
L19_1 = "rcore_dispatch:server:removeCallsign"
L20_1 = L17_1
L18_1(L19_1, L20_1)
