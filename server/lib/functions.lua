local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = GetPlayerIdentifiers
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = string
    L8_2 = L8_2.find
    L9_2 = L7_2
    L10_2 = "license:"
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 then
      return L7_2
    end
  end
  L2_2 = nil
  return L2_2
end
GetPlayerLicense = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = GetPlayerIdentifiers
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = string
    L8_2 = L8_2.find
    L9_2 = L7_2
    L10_2 = "steam:"
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 then
      return L7_2
    end
  end
  L2_2 = nil
  return L2_2
end
GetPlayerSteam = L0_1
function L0_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2
  L2_2 = {}
  L3_2, L4_2 = ...
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L0_3 = A0_2
    if "rcore_dispatch:client:updateRefs" ~= L0_3 then
      L0_3 = dbg
      L0_3 = L0_3.info
      L1_3 = "Emitting to "
      L2_3 = A1_2
      L3_3 = " agents: "
      L4_3 = A0_2
      L1_3 = L1_3 .. L2_3 .. L3_3 .. L4_3
      L0_3(L1_3)
    end
    L0_3 = A1_2
    if not L0_3 then
      L0_3 = dbg
      L0_3 = L0_3.error
      L1_3 = "No job specified"
      return L0_3(L1_3)
    end
    L0_3 = pairs
    L1_3 = DISPATCH
    L1_3 = L1_3.AGENTS
    L2_3 = A1_2
    L1_3 = L1_3[L2_3]
    L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
    for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
      L6_3 = TriggerClientEvent
      L7_3 = A0_2
      L8_3 = L4_3
      L9_3 = table
      L9_3 = L9_3.unpack
      L10_3 = L2_2
      L9_3, L10_3 = L9_3(L10_3)
      L6_3(L7_3, L8_3, L9_3, L10_3)
    end
  end
  L3_2(L4_2)
end
EmitToAgents = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetPlayerFromId
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.getJob
  L4_2 = L4_2()
  L5_2 = DISPATCH
  L5_2 = L5_2.AGENTS
  L5_2 = L5_2[L4_2]
  L6_2 = tonumber
  L7_2 = L2_2
  L6_2 = L6_2(L7_2)
  L5_2 = L5_2[L6_2]
  if not L5_2 then
    L6_2 = dbg
    L6_2 = L6_2.error
    L7_2 = "Agent "
    L8_2 = L2_2
    L9_2 = " not found"
    L7_2 = L7_2 .. L8_2 .. L9_2
    return L6_2(L7_2)
  end
  L6_2 = DISPATCH
  L6_2 = L6_2.UNITS
  L6_2 = L6_2[L4_2]
  L6_2 = L6_2[A1_2]
  if not L6_2 then
    L6_2 = dbg
    L6_2 = L6_2.error
    L7_2 = "Unit "
    L8_2 = A1_2
    L9_2 = " not found"
    L7_2 = L7_2 .. L8_2 .. L9_2
    return L6_2(L7_2)
  end
  L6_2 = DISPATCH
  L6_2 = L6_2.UNITS
  L6_2 = L6_2[L4_2]
  L7_2 = L5_2.unit
  L6_2 = L6_2[L7_2]
  L7_2 = DISPATCH
  L7_2 = L7_2.UNITS
  L7_2 = L7_2[L4_2]
  L7_2 = L7_2[A1_2]
  if not L7_2 then
    L8_2 = dbg
    L8_2 = L8_2.error
    L9_2 = "Unit "
    L10_2 = A1_2
    L11_2 = " not found"
    L9_2 = L9_2 .. L10_2 .. L11_2
    return L8_2(L9_2)
  end
  L8_2 = CreateThread
  function L9_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3
    L0_3 = pairs
    L1_3 = DISPATCH
    L1_3 = L1_3.ALERTS
    L2_3 = L4_2
    L1_3 = L1_3[L2_3]
    L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
    for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
      L6_3 = L5_3.id
      L7_3 = pairs
      L8_3 = L5_3.units
      L7_3, L8_3, L9_3, L10_3 = L7_3(L8_3)
      for L11_3, L12_3 in L7_3, L8_3, L9_3, L10_3 do
        L13_3 = "USER-"
        L14_3 = L2_2
        L13_3 = L13_3 .. L14_3
        if L12_3 == L13_3 then
          L13_3 = L5_3.units
          L13_3[L11_3] = nil
          L13_3 = EmitToAgents
          L14_3 = "rcore_dispatch:client:updateAlert"
          L15_3 = L4_2
          L16_3 = "removeunits"
          L17_3 = L6_3
          L18_3 = L12_3
          L13_3(L14_3, L15_3, L16_3, L17_3, L18_3)
        end
      end
    end
  end
  L8_2(L9_2)
  L9_2 = L6_2
  L8_2 = L6_2.removeAgent
  L10_2 = {}
  L11_2 = tonumber
  L12_2 = L2_2
  L11_2 = L11_2(L12_2)
  L10_2.id = L11_2
  L8_2(L9_2, L10_2)
  L9_2 = L7_2
  L8_2 = L7_2.addAgent
  L10_2 = {}
  L11_2 = L5_2.name
  L10_2.name = L11_2
  L11_2 = tonumber
  L12_2 = L2_2
  L11_2 = L11_2(L12_2)
  L10_2.id = L11_2
  L11_2 = L5_2.rank
  L10_2.rank = L11_2
  L10_2.job = L4_2
  L11_2 = L5_2.callsign
  L10_2.callsign = L11_2
  L11_2 = L5_2.available
  L10_2.available = L11_2
  L8_2(L9_2, L10_2)
  L8_2 = dbg
  L8_2 = L8_2.info
  L9_2 = "Agent "
  L10_2 = L5_2.name
  L11_2 = " has been changed to unit "
  L12_2 = L7_2.name
  L9_2 = L9_2 .. L10_2 .. L11_2 .. L12_2
  L8_2(L9_2)
  L8_2 = EmitToAgents
  L9_2 = "rcore_dispatch:client:changeUnit"
  L10_2 = L4_2
  L11_2 = DISPATCH
  L11_2 = L11_2.AGENTS
  L11_2 = L11_2[L4_2]
  L11_2 = L11_2[L2_2]
  L12_2 = L7_2.name
  L13_2 = L6_2.name
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  L8_2 = L7_2.shared_jobs
  if L8_2 then
    L8_2 = pairs
    L9_2 = L7_2.shared_jobs
    L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
    for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
      L14_2 = DISPATCH
      L14_2 = L14_2.UNITS
      L14_2 = L14_2[L13_2]
      if L14_2 then
        L14_2 = DISPATCH
        L14_2 = L14_2.UNITS
        L14_2 = L14_2[L13_2]
        L15_2 = L7_2.name
        L14_2 = L14_2[L15_2]
        L15_2 = L14_2
        L14_2 = L14_2.addAgent
        L16_2 = {}
        L17_2 = L5_2.name
        L16_2.name = L17_2
        L17_2 = tonumber
        L18_2 = L2_2
        L17_2 = L17_2(L18_2)
        L16_2.id = L17_2
        L17_2 = L5_2.rank
        L16_2.rank = L17_2
        L16_2.job = L4_2
        L17_2 = L5_2.callsign
        L16_2.callsign = L17_2
        L17_2 = L5_2.available
        L16_2.available = L17_2
        L14_2(L15_2, L16_2)
        L14_2 = EmitToAgents
        L15_2 = "rcore_dispatch:client:changeUnit"
        L16_2 = L13_2
        L17_2 = DISPATCH
        L17_2 = L17_2.AGENTS
        L17_2 = L17_2[L4_2]
        L17_2 = L17_2[L2_2]
        L18_2 = L7_2.name
        L19_2 = L6_2.name
        L14_2(L15_2, L16_2, L17_2, L18_2, L19_2)
      end
    end
  end
  L8_2 = L6_2.shared_jobs
  if L8_2 then
    L8_2 = pairs
    L9_2 = L6_2.shared_jobs
    L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
    for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
      L14_2 = DISPATCH
      L14_2 = L14_2.UNITS
      L14_2 = L14_2[L13_2]
      if L14_2 then
        L14_2 = DISPATCH
        L14_2 = L14_2.UNITS
        L14_2 = L14_2[L13_2]
        L15_2 = L6_2.name
        L14_2 = L14_2[L15_2]
        L15_2 = L14_2
        L14_2 = L14_2.removeAgent
        L16_2 = {}
        L17_2 = tonumber
        L18_2 = L2_2
        L17_2 = L17_2(L18_2)
        L16_2.id = L17_2
        L14_2(L15_2, L16_2)
        L14_2 = EmitToAgents
        L15_2 = "rcore_dispatch:client:changeUnit"
        L16_2 = L13_2
        L17_2 = DISPATCH
        L17_2 = L17_2.AGENTS
        L17_2 = L17_2[L4_2]
        L17_2 = L17_2[L2_2]
        L18_2 = L7_2.name
        L19_2 = L6_2.name
        L14_2(L15_2, L16_2, L17_2, L18_2, L19_2)
      end
    end
  end
end
ChangeUnit = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = 0
  end
  L3_2 = GetPlayerFromId
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.getRank
  L4_2, L5_2 = L4_2()
  L6_2 = CONFIG
  L6_2 = L6_2.JOBS
  L6_2 = L6_2[A1_2]
  L6_2 = L6_2.Ranks
  L6_2 = L6_2[L4_2]
  if not L6_2 then
    L6_2 = ""
  end
  L7_2 = L3_2.getSurname
  L7_2 = L7_2()
  if not L7_2 then
    L7_2 = ""
  end
  L8_2 = L6_2
  L9_2 = " "
  L10_2 = L7_2
  L8_2 = L8_2 .. L9_2 .. L10_2
  L9_2 = NewAgent
  L10_2 = L2_2
  L11_2 = A1_2
  L12_2 = L8_2
  L13_2 = L4_2
  L14_2 = _U
  L15_2 = "ASSIGN"
  L14_2 = L14_2(L15_2)
  L15_2 = _U
  L16_2 = "ASSIGN"
  L15_2, L16_2 = L15_2(L16_2)
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L10_2 = PLAYERS_JOBS
  L10_2[L2_2] = A1_2
  L10_2 = dbg
  L10_2 = L10_2.success
  L11_2 = "Agent "
  L12_2 = L9_2.name
  L13_2 = " with job "
  L14_2 = A1_2
  L15_2 = " has been subscribed to the server."
  L11_2 = L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2
  L10_2(L11_2)
end
SubscribeAgent = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L0_3 = A1_2
    if not L0_3 then
      L0_3 = dbg
      L0_3 = L0_3.error
      L1_3 = "No job specified"
      return L0_3(L1_3)
    end
    L0_3 = CONFIG
    L0_3 = L0_3.JOBS
    L1_3 = A1_2
    L0_3 = L0_3[L1_3]
    if not L0_3 then
      L0_3 = dbg
      L0_3 = L0_3.warning
      L1_3 = "Job "
      L2_3 = A1_2
      L3_3 = " not found"
      L1_3 = L1_3 .. L2_3 .. L3_3
      return L0_3(L1_3)
    end
    L0_3 = UnloadPlayer
    L1_3 = tonumber
    L2_3 = A0_2
    L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3 = L1_3(L2_3)
    L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
    L1_3 = tonumber
    L2_3 = A0_2
    L1_3 = L1_3(L2_3)
    if L0_3 then
      L2_3 = SubscribeAgent
      L3_3 = L1_3
      L4_3 = A1_2
      L2_3(L3_3, L4_3)
      L2_3 = TriggerClientEvent
      L3_3 = "rcore_dispatch:client:receiveData"
      L4_3 = L1_3
      L5_3 = {}
      L6_3 = DISPATCH
      L6_3 = L6_3.UNITS
      L7_3 = A1_2
      L6_3 = L6_3[L7_3]
      L5_3.UNITS = L6_3
      L6_3 = DISPATCH
      L6_3 = L6_3.AGENTS
      L7_3 = A1_2
      L6_3 = L6_3[L7_3]
      L5_3.AGENTS = L6_3
      L6_3 = DISPATCH
      L6_3 = L6_3.DRAWS
      L7_3 = A1_2
      L6_3 = L6_3[L7_3]
      L5_3.DRAWS = L6_3
      L6_3 = DISPATCH
      L6_3 = L6_3.ALERTS
      L7_3 = A1_2
      L6_3 = L6_3[L7_3]
      L5_3.ALERTS = L6_3
      L6_3 = DISPATCH
      L6_3 = L6_3.SAVED_DRAWS
      L7_3 = A1_2
      L6_3 = L6_3[L7_3]
      L5_3.SAVED_DRAWS = L6_3
      L6_3 = STATS_CACHE
      L2_3(L3_3, L4_3, L5_3, L6_3)
      L2_3 = Wait
      L3_3 = 100
      L2_3(L3_3)
      L2_3 = DISPATCH
      L2_3 = L2_3.AGENTS
      L3_3 = A1_2
      L2_3 = L2_3[L3_3]
      L2_3 = L2_3[L1_3]
      if not L2_3 then
        L2_3 = dbg
        L2_3 = L2_3.warning
        L3_3 = "Agent "
        L4_3 = L1_3
        L5_3 = " is not registered on the server"
        L3_3 = L3_3 .. L4_3 .. L5_3
        return L2_3(L3_3)
      end
      L2_3 = EmitToAgents
      L3_3 = "rcore_dispatch:client:registerAgent"
      L4_3 = A1_2
      L5_3 = DISPATCH
      L5_3 = L5_3.AGENTS
      L6_3 = A1_2
      L5_3 = L5_3[L6_3]
      L5_3 = L5_3[L1_3]
      L2_3(L3_3, L4_3, L5_3)
      L2_3 = CONFIG
      L2_3 = L2_3.Features
      L2_3 = L2_3.radio
      if L2_3 then
        L2_3 = CONFIG
        L2_3 = L2_3.RelatedJobs
        L2_3 = #L2_3
        if L2_3 > 0 then
          L2_3 = pairs
          L3_3 = CONFIG
          L3_3 = L3_3.JOBS
          L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
          for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
            L8_3 = L7_3.Jobname
            L9_3 = A1_2
            if L8_3 ~= L9_3 then
              L8_3 = EmitToAgents
              L9_3 = "rcore_dispatch:client:registerRelatedAgent"
              L10_3 = L7_3.Jobname
              L11_3 = {}
              L11_3.id = L1_3
              L12_3 = A1_2
              L11_3.job = L12_3
              L8_3(L9_3, L10_3, L11_3)
            end
          end
        end
      end
      L2_3 = TriggerClientEvent
      L3_3 = "rcore_dispatch:client:loadClient"
      L4_3 = L1_3
      L2_3(L3_3, L4_3)
      L2_3 = TriggerClientEvent
      L3_3 = "rcore_dispatch:client:loadDraws"
      L4_3 = L1_3
      L5_3 = DISPATCH
      L5_3 = L5_3.DRAWS
      L6_3 = A1_2
      L5_3 = L5_3[L6_3]
      L2_3(L3_3, L4_3, L5_3)
      L2_3 = true
      return L2_3
    end
  end
  L2_2(L3_2)
end
LoadPlayer = L0_1
L0_1 = exports
L1_1 = "LoadPlayer"
L2_1 = LoadPlayer
L0_1(L1_1, L2_1)
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L2_2 = DISPATCH
  L2_2 = L2_2.UNITS
  L2_2 = L2_2[A1_2]
  if not L2_2 then
    return
  end
  L2_2 = DISPATCH
  L2_2 = L2_2.AGENTS
  L2_2 = L2_2[A1_2]
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.unit
  L3_2 = DISPATCH
  L3_2 = L3_2.UNITS
  L3_2 = L3_2[A1_2]
  L3_2 = L3_2[L2_2]
  L3_2 = L3_2.shared_jobs
  if L3_2 then
    L4_2 = #L3_2
    if L4_2 > 0 then
      L4_2 = pairs
      L5_2 = L3_2
      L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
      for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
        L10_2 = pairs
        L11_2 = DISPATCH
        L11_2 = L11_2.UNITS
        L11_2 = L11_2[L9_2]
        L11_2 = L11_2[L2_2]
        L11_2 = L11_2.radio
        L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
        for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
          L16_2 = tonumber
          L17_2 = L15_2.id
          L16_2 = L16_2(L17_2)
          L17_2 = tonumber
          L18_2 = A0_2
          L17_2 = L17_2(L18_2)
          if L16_2 == L17_2 then
            L16_2 = DISPATCH
            L16_2 = L16_2.UNITS
            L16_2 = L16_2[L9_2]
            L16_2 = L16_2[L2_2]
            L17_2 = L16_2
            L16_2 = L16_2.removeRadioAgent
            L18_2 = A0_2
            L19_2 = true
            L16_2(L17_2, L18_2, L19_2)
          end
        end
      end
    end
  end
  L4_2 = CreateThread
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    L0_3 = pairs
    L1_3 = DISPATCH
    L1_3 = L1_3.UNITS
    L2_3 = A1_2
    L1_3 = L1_3[L2_3]
    L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
    for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
      L6_3 = pairs
      L7_3 = L5_3.radio
      L6_3, L7_3, L8_3, L9_3 = L6_3(L7_3)
      for L10_3, L11_3 in L6_3, L7_3, L8_3, L9_3 do
        L12_3 = tonumber
        L13_3 = L11_3.id
        L12_3 = L12_3(L13_3)
        L13_3 = tonumber
        L14_3 = A0_2
        L13_3 = L13_3(L14_3)
        if L12_3 == L13_3 then
          L12_3 = DISPATCH
          L12_3 = L12_3.UNITS
          L13_3 = A1_2
          L12_3 = L12_3[L13_3]
          L13_3 = L5_3.name
          L12_3 = L12_3[L13_3]
          L13_3 = L12_3
          L12_3 = L12_3.removeRadioAgent
          L14_3 = A0_2
          L12_3(L13_3, L14_3)
          break
        end
      end
    end
  end
  L4_2(L5_2)
end
UnloadFromRadioSystem = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = source
  if not A0_2 or not L1_2 then
    return
  end
  L2_2 = USERS_WITHOUT_ITEM
  L3_2 = tonumber
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  L2_2[L3_2] = true
  L2_2 = UnloadFromRadioSystem
  L3_2 = L1_2
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
end
UnloadRadioSystem = L0_1
L0_1 = RegisterNetEvent
L1_1 = "rcore_dispatch:server:unloadRadioSystem"
L2_1 = UnloadRadioSystem
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "rcore_dispatch:server:unflag"
function L2_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = source
  L1_2 = USERS_WITHOUT_ITEM
  L2_2 = tonumber
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  L1_2[L2_2] = nil
end
L0_1(L1_1, L2_1)
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L3_2 = tonumber
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = PLAYERS_JOBS
  L4_2 = L4_2[L3_2]
  L5_2 = UnloadFromRadioSystem
  L6_2 = L3_2
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  if not L4_2 then
    L5_2 = true
    return L5_2
  end
  L5_2 = CONFIG
  L5_2 = L5_2.JOBS
  L5_2 = L5_2[L4_2]
  if L5_2 then
    L5_2 = DISPATCH
    L5_2 = L5_2.AGENTS
    L5_2 = L5_2[L4_2]
    if not L5_2 then
      L5_2 = true
      return L5_2
    end
    L5_2 = DISPATCH
    L5_2 = L5_2.AGENTS
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2[L3_2]
    if not L5_2 then
      L5_2 = true
      return L5_2
    end
    L5_2 = DISPATCH
    L5_2 = L5_2.AGENTS
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2[L3_2]
    L5_2 = L5_2.unit
    L6_2 = DISPATCH
    L6_2 = L6_2.UNITS
    L6_2 = L6_2[L4_2]
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.shared_jobs
    if L6_2 then
      L7_2 = #L6_2
      if L7_2 > 0 then
        L7_2 = pairs
        L8_2 = L6_2
        L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
        for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
          L13_2 = DISPATCH
          L13_2 = L13_2.UNITS
          L13_2 = L13_2[L12_2]
          L13_2 = L13_2[L5_2]
          if L13_2 then
            L13_2 = DISPATCH
            L13_2 = L13_2.UNITS
            L13_2 = L13_2[L12_2]
            L13_2 = L13_2[L5_2]
            L14_2 = L13_2
            L13_2 = L13_2.removeAgent
            L15_2 = {}
            L15_2.id = L3_2
            L13_2(L14_2, L15_2)
            L13_2 = EmitToAgents
            L14_2 = "rcore_dispatch:client:removeAgent"
            L15_2 = L12_2
            L16_2 = {}
            L16_2.id = L3_2
            L16_2.unit = L5_2
            L13_2(L14_2, L15_2, L16_2)
          end
        end
      end
    end
    L7_2 = CreateThread
    function L8_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3
      L0_3 = pairs
      L1_3 = DISPATCH
      L1_3 = L1_3.ALERTS
      L2_3 = L4_2
      L1_3 = L1_3[L2_3]
      L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
      for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
        L6_3 = L5_3.id
        L7_3 = pairs
        L8_3 = L5_3.units
        L7_3, L8_3, L9_3, L10_3 = L7_3(L8_3)
        for L11_3, L12_3 in L7_3, L8_3, L9_3, L10_3 do
          L13_3 = "USER-"
          L14_3 = L3_2
          L13_3 = L13_3 .. L14_3
          if L12_3 == L13_3 then
            L13_3 = L5_3.units
            L13_3[L11_3] = nil
            L13_3 = EmitToAgents
            L14_3 = "rcore_dispatch:client:updateAlert"
            L15_3 = L4_2
            L16_3 = "removeunits"
            L17_3 = L6_3
            L18_3 = L12_3
            L13_3(L14_3, L15_3, L16_3, L17_3, L18_3)
            break
          end
        end
      end
    end
    L7_2(L8_2)
    L7_2 = EmitToAgents
    L8_2 = "rcore_dispatch:client:removeAgent"
    L9_2 = L4_2
    L10_2 = {}
    L10_2.id = L3_2
    L10_2.unit = L5_2
    L7_2(L8_2, L9_2, L10_2)
    if L3_2 then
      L7_2 = DISPATCH
      L7_2 = L7_2.UNITS
      L7_2 = L7_2[L4_2]
      L7_2 = L7_2[L5_2]
      L7_2 = L7_2.agents
      L7_2[L3_2] = nil
      L7_2 = DISPATCH
      L7_2 = L7_2.AGENTS
      L7_2 = L7_2[L4_2]
      L7_2[L3_2] = nil
    end
  end
  L5_2 = CONFIG
  L5_2 = L5_2.Features
  L5_2 = L5_2.radio
  if L5_2 then
    L5_2 = CONFIG
    L5_2 = L5_2.RelatedJobs
    L5_2 = #L5_2
    if L5_2 > 0 then
      L5_2 = pairs
      L6_2 = CONFIG
      L6_2 = L6_2.JOBS
      L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
      for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
        L11_2 = L10_2.Jobname
        if L11_2 ~= L4_2 then
          L11_2 = EmitToAgents
          L12_2 = "rcore_dispatch:client:removeRelatedAgent"
          L13_2 = L10_2.Jobname
          L14_2 = {}
          L14_2.id = L3_2
          L14_2.job = L4_2
          L11_2(L12_2, L13_2, L14_2)
        end
      end
    end
  end
  if A1_2 then
    if L3_2 then
      L5_2 = PLAYERS_JOBS
      L5_2[L3_2] = A1_2
    end
    L5_2 = TriggerClientEvent
    L6_2 = "rcore_dispatch:client:reloadClient"
    L7_2 = L3_2
    L8_2 = A2_2 or L8_2
    if not A2_2 then
      L8_2 = nil
    end
    L5_2(L6_2, L7_2, L8_2)
  end
  L5_2 = dbg
  L5_2 = L5_2.success
  L6_2 = "Agent "
  L7_2 = L3_2
  L8_2 = " has been unregistered from the server"
  L6_2 = L6_2 .. L7_2 .. L8_2
  L5_2(L6_2)
  L5_2 = true
  return L5_2
end
UnloadPlayer = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = pairs
  L1_2 = CONFIG
  L1_2 = L1_2.JOBS
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2 in L0_2, L1_2, L2_2, L3_2 do
    L5_2 = EmitToAgents
    L6_2 = "rcore_dispatch:client:updateAlerts"
    L7_2 = L4_2
    L8_2 = DISPATCH
    L8_2 = L8_2.ALERTS
    L8_2 = L8_2[L4_2]
    L5_2(L6_2, L7_2, L8_2)
  end
end
UpdateAlerts = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = math
  L1_2 = L1_2.random
  L2_2 = 1
  L3_2 = 99999999999
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = pairs
  L3_2 = DISPATCH
  L3_2 = L3_2.ALERTS
  L3_2 = L3_2[A0_2]
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = tonumber
    L9_2 = L7_2.id
    L8_2 = L8_2(L9_2)
    L9_2 = tonumber
    L10_2 = L1_2
    L9_2 = L9_2(L10_2)
    if L8_2 == L9_2 then
      L8_2 = GenerateAlertUniqueId
      L9_2 = A0_2
      return L8_2(L9_2)
    end
  end
  return L1_2
end
GenerateAlertUniqueId = L0_1
L0_1 = RegisterNetEvent
L1_1 = "rcore_dispatch:server:player"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = source
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = {}
    L1_3 = pairs
    L2_3 = A0_2
    L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
    for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
      L7_3 = DISPATCH
      L7_3 = L7_3.AGENTS
      L7_3 = L7_3[L6_3]
      if L7_3 then
        L7_3 = DISPATCH
        L7_3 = L7_3.AGENTS
        L7_3 = L7_3[L6_3]
        L0_3[L6_3] = L7_3
      end
    end
    L1_3 = TriggerClientEvent
    L2_3 = "rcore_dispatch:client:loadRelated"
    L3_3 = L1_2
    L4_3 = L0_3
    L1_3(L2_3, L3_3, L4_3)
  end
  L2_2(L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = {}
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if not A0_2 then
    return
  end
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L3_2 = L0_1
  L3_2[L2_2] = A1_2
  L3_2 = TriggerClientEvent
  L4_2 = "rcore_dispatch:client:getPlayerInfoCb"
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
GetPlayerData = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = tonumber
  L2_2 = source
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = L0_1
  L2_2 = L2_2[L1_2]
  if L2_2 then
    L2_2 = L0_1
    L2_2 = L2_2[L1_2]
    L3_2 = A0_2
    L2_2(L3_2)
    L2_2 = L0_1
    L2_2[L1_2] = nil
  end
end
L2_1 = RegisterNetEvent
L3_1 = "rcore_dispatch:server:getPlayerInfoCb"
L4_1 = L1_1
L2_1(L3_1, L4_1)
L2_1 = ProvideExport
L3_1 = "GetPlayerData"
L4_1 = "rcore_dispatch"
L5_1 = GetPlayerData
L2_1(L3_1, L4_1, L5_1)
L2_1 = ProvideExport
L3_1 = "GetPlayerInfo"
L4_1 = "qs-dispatch"
L5_1 = GetPlayerData
L2_1(L3_1, L4_1, L5_1)
