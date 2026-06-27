local L0_1, L1_1
L0_1 = {}
L0_1.__index = L0_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L7_2 = setmetatable
  L8_2 = {}
  L9_2 = tonumber
  L10_2 = A0_2
  L9_2 = L9_2(L10_2)
  L8_2.id = L9_2
  L8_2.job = A1_2
  L8_2.name = A2_2
  L8_2.rank = A3_2
  L8_2.unit = A4_2
  L9_2 = vector3
  L10_2 = 0
  L11_2 = 0
  L12_2 = 0
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L8_2.coords = L9_2
  L8_2.ref = true
  L8_2.available = true
  L8_2.radio = A5_2
  L8_2.callsign = A6_2
  L9_2 = L0_1
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = DISPATCH
  L8_2 = L8_2.AGENTS
  L8_2 = L8_2[A1_2]
  L9_2 = tonumber
  L10_2 = A0_2
  L9_2 = L9_2(L10_2)
  L8_2[L9_2] = L7_2
  L8_2 = DISPATCH
  L8_2 = L8_2.UNITS
  L8_2 = L8_2[A1_2]
  L8_2 = L8_2[A4_2]
  L9_2 = L8_2
  L8_2 = L8_2.addAgent
  L10_2 = {}
  L10_2.name = A2_2
  L11_2 = tonumber
  L12_2 = A0_2
  L11_2 = L11_2(L12_2)
  L10_2.id = L11_2
  L10_2.available = true
  L10_2.rank = A3_2
  L10_2.job = A1_2
  L10_2.callsign = A6_2
  L8_2(L9_2, L10_2)
  return L7_2
end
NewAgent = L1_1
function L1_1(A0_2, A1_2)
  A0_2.coords = A1_2
end
L0_1.setCoords = L1_1
function L1_1(A0_2, A1_2)
  A0_2.callsign = A1_2
end
L0_1.setCallsign = L1_1
function L1_1(A0_2, A1_2)
  A0_2.unit = A1_2
  A0_2.radio = A1_2
end
L0_1.changeUnit = L1_1
function L1_1(A0_2, A1_2)
  A0_2.ref = A1_2
end
L0_1.toggleRef = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2.available
  L1_2 = not L1_2
  A0_2.available = L1_2
  L1_2 = DISPATCH
  L1_2 = L1_2.UNITS
  L2_2 = A0_2.job
  L1_2 = L1_2[L2_2]
  L2_2 = A0_2.unit
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.agents
  L2_2 = tonumber
  L3_2 = A0_2.id
  L2_2 = L2_2(L3_2)
  L1_2 = L1_2[L2_2]
  L2_2 = A0_2.available
  L1_2.available = L2_2
  L1_2 = EmitToAgents
  L2_2 = "rcore_dispatch:client:toggleAvailable"
  L3_2 = A0_2.job
  L4_2 = A0_2.id
  L5_2 = A0_2.available
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = DISPATCH
  L1_2 = L1_2.UNITS
  L2_2 = A0_2.job
  L1_2 = L1_2[L2_2]
  L2_2 = A0_2.unit
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.shared_jobs
  if L1_2 then
    L1_2 = pairs
    L2_2 = DISPATCH
    L2_2 = L2_2.UNITS
    L3_2 = A0_2.job
    L2_2 = L2_2[L3_2]
    L3_2 = A0_2.unit
    L2_2 = L2_2[L3_2]
    L2_2 = L2_2.shared_jobs
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = DISPATCH
      L7_2 = L7_2.UNITS
      L7_2 = L7_2[L6_2]
      if L7_2 then
        L7_2 = DISPATCH
        L7_2 = L7_2.UNITS
        L7_2 = L7_2[L6_2]
        L8_2 = DISPATCH
        L8_2 = L8_2.UNITS
        L9_2 = A0_2.job
        L8_2 = L8_2[L9_2]
        L9_2 = A0_2.unit
        L8_2 = L8_2[L9_2]
        L8_2 = L8_2.name
        L7_2 = L7_2[L8_2]
        L7_2 = L7_2.agents
        L8_2 = tonumber
        L9_2 = A0_2.id
        L8_2 = L8_2(L9_2)
        L7_2 = L7_2[L8_2]
        L8_2 = A0_2.available
        L7_2.available = L8_2
        L7_2 = EmitToAgents
        L8_2 = "rcore_dispatch:client:toggleAvailable"
        L9_2 = L6_2
        L10_2 = A0_2.id
        L11_2 = A0_2.available
        L7_2(L8_2, L9_2, L10_2, L11_2)
      end
    end
  end
end
L0_1.toggleAvailable = L1_1
