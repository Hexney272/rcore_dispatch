local L0_1, L1_1, L2_1
L0_1 = {}
L1_1 = 0
L0_1.__index = L0_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = setmetatable
  L5_2 = {}
  L5_2.name = A0_2
  L5_2.job = A1_2
  L6_2 = {}
  L5_2.agents = L6_2
  L6_2 = {}
  L5_2.radio = L6_2
  L6_2 = {}
  L5_2.alerts = L6_2
  L5_2.isAssignation = A2_2
  L5_2.assigned = false
  L5_2.alert_assigned = 0
  L6_2 = L1_1
  L5_2.id = L6_2
  L5_2.shared_jobs = A3_2
  L6_2 = L0_1
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L1_1
  L5_2 = L5_2 + 1
  L1_1 = L5_2
  L5_2 = dbg
  L5_2 = L5_2.info
  L6_2 = "Created unit "
  L7_2 = L4_2.name
  L8_2 = " with id "
  L9_2 = L4_2.id
  L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2
  L5_2(L6_2)
  L5_2 = DISPATCH
  L5_2 = L5_2.UNITS
  L5_2 = L5_2[A1_2]
  L5_2[A0_2] = L4_2
end
CreateUnit = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.agents
  L3_2 = tonumber
  L4_2 = A1_2.id
  L3_2 = L3_2(L4_2)
  L2_2[L3_2] = A1_2
  L2_2 = DISPATCH
  L2_2 = L2_2.AGENTS
  L3_2 = A1_2.job
  L2_2 = L2_2[L3_2]
  L3_2 = tonumber
  L4_2 = A1_2.id
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2[L3_2]
  L3_2 = L2_2
  L2_2 = L2_2.changeUnit
  L4_2 = A0_2.name
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.addRadioAgent
  L4_2 = tonumber
  L5_2 = A1_2.id
  L4_2 = L4_2(L5_2)
  L5_2 = A1_2.name
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = dbg
  L2_2 = L2_2.info
  L3_2 = "Added agent with id "
  L4_2 = A1_2.id
  L5_2 = " into unit "
  L6_2 = A0_2.name
  L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2
  L2_2(L3_2)
end
L0_1.addAgent = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.agents
  L3_2 = tonumber
  L4_2 = A1_2.id
  L3_2 = L3_2(L4_2)
  L2_2[L3_2] = nil
  L3_2 = A0_2
  L2_2 = A0_2.removeRadioAgent
  L4_2 = A1_2.id
  L2_2(L3_2, L4_2)
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L0_3 = 0
    L1_3 = pairs
    L2_3 = A0_2.agents
    L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
    for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
      L0_3 = L0_3 + 1
    end
    if 0 == L0_3 then
      L1_3 = A0_2.assigned
      if L1_3 then
        L1_3 = A0_2.alert_assigned
        L2_3 = nil
        L3_3 = pairs
        L4_3 = DISPATCH
        L4_3 = L4_3.ALERTS
        L5_3 = A0_2.job
        L4_3 = L4_3[L5_3]
        L3_3, L4_3, L5_3, L6_3 = L3_3(L4_3)
        for L7_3, L8_3 in L3_3, L4_3, L5_3, L6_3 do
          L9_3 = tonumber
          L10_3 = L8_3.id
          L9_3 = L9_3(L10_3)
          L10_3 = tonumber
          L11_3 = L1_3
          L10_3 = L10_3(L11_3)
          if L9_3 == L10_3 then
            L2_3 = L8_3
            break
          end
        end
        L3_3 = A0_2.name
        L4_3 = DISPATCH
        L4_3 = L4_3.UNITS
        L5_3 = A0_2.job
        L4_3 = L4_3[L5_3]
        L4_3 = L4_3[L3_3]
        L5_3 = pairs
        L6_3 = L2_3.units
        L5_3, L6_3, L7_3, L8_3 = L5_3(L6_3)
        for L9_3, L10_3 in L5_3, L6_3, L7_3, L8_3 do
          if L10_3 == L3_3 then
            L11_3 = L2_3.units
            L11_3[L9_3] = nil
          end
        end
        L6_3 = L4_3
        L5_3 = L4_3.setAssignedToAlert
        L7_3 = false
        L5_3(L6_3, L7_3)
        L5_3 = EmitToAgents
        L6_3 = "rcore_dispatch:client:updateAlert"
        L7_3 = A0_2.job
        L8_3 = "removeunits"
        L9_3 = L1_3
        L10_3 = L3_3
        L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
      end
    end
  end
  L2_2(L3_2)
  L2_2 = dbg
  L2_2 = L2_2.info
  L3_2 = "Removed agent with id "
  L4_2 = A1_2.id
  L5_2 = " from unit "
  L6_2 = A0_2.name
  L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2
  L2_2(L3_2)
end
L0_1.removeAgent = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2
  A0_2.assigned = A1_2
  L3_2 = A2_2 or L3_2
  if not A2_2 then
    L3_2 = 0
  end
  A0_2.alert_assigned = L3_2
end
L0_1.setAssignedToAlert = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2.agents
  L4_2 = tonumber
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L3_2 = L3_2[L4_2]
  L3_2.callsign = A2_2
end
L0_1.setAgentCallsign = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = CONFIG
  L3_2 = L3_2.Features
  L3_2 = L3_2.radio
  if not L3_2 then
    return
  end
  L3_2 = USERS_WITHOUT_ITEM
  L4_2 = tonumber
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L3_2 = L3_2[L4_2]
  if L3_2 then
    L3_2 = dbg
    L3_2 = L3_2.info
    L4_2 = "Agent "
    L5_2 = A1_2
    L6_2 = " cant join radio because he doesnt have the item"
    L4_2 = L4_2 .. L5_2 .. L6_2
    L3_2(L4_2)
    return
  end
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L0_3 = pairs
    L1_3 = A0_2.radio
    L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
    for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
      L6_3 = tonumber
      L7_3 = L5_3.id
      L6_3 = L6_3(L7_3)
      L7_3 = tonumber
      L8_3 = A1_2
      L7_3 = L7_3(L8_3)
      if L6_3 == L7_3 then
        L6_3 = dbg
        L6_3 = L6_3.security
        L7_3 = "Inserted radio agent with id "
        L8_3 = A1_2
        L9_3 = " into unit repeated "
        L10_3 = A0_2.name
        L7_3 = L7_3 .. L8_3 .. L9_3 .. L10_3
        L6_3(L7_3)
        L6_3 = EmitToAgents
        L7_3 = "rcore_dispatch:client:removeRadioAgent"
        L8_3 = A0_2.job
        L9_3 = A1_2
        L6_3(L7_3, L8_3, L9_3)
        L6_3 = table
        L6_3 = L6_3.remove
        L7_3 = A0_2.radio
        L8_3 = L4_3
        L6_3(L7_3, L8_3)
      end
    end
    L0_3 = DISPATCH
    L0_3 = L0_3.AGENTS
    L1_3 = A0_2.job
    L0_3 = L0_3[L1_3]
    L1_3 = tonumber
    L2_3 = A1_2
    L1_3 = L1_3(L2_3)
    L0_3 = L0_3[L1_3]
    if not L0_3 then
      L1_3 = A0_2.shared_jobs
      if not L1_3 then
        L1_3 = dbg
        L1_3 = L1_3.error
        L2_3 = "Agent "
        L3_3 = A1_2
        L4_3 = " not found in unit "
        L5_3 = A0_2.name
        L2_3 = L2_3 .. L3_3 .. L4_3 .. L5_3
        L1_3(L2_3)
        return
      end
      L1_3 = pairs
      L2_3 = A0_2.shared_jobs
      L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
      for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
        L7_3 = DISPATCH
        L7_3 = L7_3.AGENTS
        L7_3 = L7_3[L6_3]
        L8_3 = tonumber
        L9_3 = A1_2
        L8_3 = L8_3(L9_3)
        L0_3 = L7_3[L8_3]
        if L0_3 then
          break
        end
      end
    end
    if not L0_3 then
      L1_3 = dbg
      L1_3 = L1_3.error
      L2_3 = "Agent "
      L3_3 = A1_2
      L4_3 = " not found in unit "
      L5_3 = A0_2.name
      L2_3 = L2_3 .. L3_3 .. L4_3 .. L5_3
      L1_3(L2_3)
      return
    end
    L1_3 = table
    L1_3 = L1_3.insert
    L2_3 = A0_2.radio
    L3_3 = {}
    L4_3 = tonumber
    L5_3 = A1_2
    L4_3 = L4_3(L5_3)
    L3_3.id = L4_3
    L4_3 = A2_2
    L3_3.name = L4_3
    L4_3 = L0_3.available
    L3_3.available = L4_3
    L4_3 = A0_2.name
    L3_3.unit = L4_3
    L4_3 = L0_3.job
    L3_3.job = L4_3
    L1_3(L2_3, L3_3)
    L1_3 = EmitToAgents
    L2_3 = "rcore_dispatch:client:addRadioAgent"
    L3_3 = A0_2.job
    L4_3 = tonumber
    L5_3 = A1_2
    L4_3 = L4_3(L5_3)
    L5_3 = A2_2
    L6_3 = A0_2.name
    L7_3 = L0_3.available
    L8_3 = L0_3.job
    L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
    L1_3 = dbg
    L1_3 = L1_3.info
    L2_3 = "Added radio agent with id "
    L3_3 = A1_2
    L4_3 = " into unit "
    L5_3 = A0_2.name
    L2_3 = L2_3 .. L3_3 .. L4_3 .. L5_3
    L1_3(L2_3)
  end
  L3_2(L4_2)
end
L0_1.addRadioAgent = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = CONFIG
  L3_2 = L3_2.Features
  L3_2 = L3_2.radio
  if not L3_2 then
    return
  end
  if A2_2 then
    L3_2 = true
    L4_2 = pairs
    L5_2 = A0_2.radio
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = tonumber
      L11_2 = L9_2.id
      L10_2 = L10_2(L11_2)
      L11_2 = tonumber
      L12_2 = A1_2
      L11_2 = L11_2(L12_2)
      if L10_2 == L11_2 then
        L10_2 = table
        L10_2 = L10_2.remove
        L11_2 = A0_2.radio
        L12_2 = L8_2
        L10_2(L11_2, L12_2)
        L3_2 = false
        break
      end
    end
    if L3_2 then
      L4_2 = dbg
      L4_2 = L4_2.warning
      L5_2 = "Already removed radio agent with id "
      L6_2 = A1_2
      L7_2 = " from unit "
      L8_2 = A0_2.name
      L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2
      L4_2(L5_2)
    else
      L4_2 = dbg
      L4_2 = L4_2.info
      L5_2 = "Removed radio agent with id "
      L6_2 = A1_2
      L7_2 = " from unit "
      L8_2 = A0_2.name
      L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2
      L4_2(L5_2)
    end
    L4_2 = EmitToAgents
    L5_2 = "rcore_dispatch:client:removeRadioAgent"
    L6_2 = A0_2.job
    L7_2 = tonumber
    L8_2 = A1_2
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2(L8_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    return
  end
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L0_3 = true
    L1_3 = pairs
    L2_3 = A0_2.radio
    L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
    for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
      L7_3 = tonumber
      L8_3 = L6_3.id
      L7_3 = L7_3(L8_3)
      L8_3 = tonumber
      L9_3 = A1_2
      L8_3 = L8_3(L9_3)
      if L7_3 == L8_3 then
        L7_3 = table
        L7_3 = L7_3.remove
        L8_3 = A0_2.radio
        L9_3 = L5_3
        L7_3(L8_3, L9_3)
        L0_3 = false
        break
      end
    end
    if L0_3 then
      L1_3 = dbg
      L1_3 = L1_3.warning
      L2_3 = "Already removed radio agent with id "
      L3_3 = A1_2
      L4_3 = " from unit "
      L5_3 = A0_2.name
      L2_3 = L2_3 .. L3_3 .. L4_3 .. L5_3
      L1_3(L2_3)
    else
      L1_3 = dbg
      L1_3 = L1_3.info
      L2_3 = "Removed radio agent with id "
      L3_3 = A1_2
      L4_3 = " from unit "
      L5_3 = A0_2.name
      L2_3 = L2_3 .. L3_3 .. L4_3 .. L5_3
      L1_3(L2_3)
    end
    L1_3 = EmitToAgents
    L2_3 = "rcore_dispatch:client:removeRadioAgent"
    L3_3 = A0_2.job
    L4_3 = tonumber
    L5_3 = A1_2
    L4_3, L5_3, L6_3, L7_3, L8_3, L9_3 = L4_3(L5_3)
    L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
  end
  L3_2(L4_2)
end
L0_1.removeRadioAgent = L2_1
