local L0_1, L1_1, L2_1, L3_1
function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L0_3 = GLOBALS
    L0_3 = L0_3.CHARACTER
    L0_3 = L0_3.JOB
    if not L0_3 or "" == L0_3 then
      return
    end
    L1_3 = A0_2
    if not L1_3 then
      return
    end
    if "" == L0_3 then
      return
    end
    L1_3 = CONFIG
    L1_3 = L1_3.JOBS
    L1_3 = L1_3[L0_3]
    L1_3 = L1_3.Blips
    if not L1_3 then
      return
    end
    L2_3 = pairs
    L3_3 = A0_2
    L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
    for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
      L8_3 = CONFIG
      L8_3 = L8_3.JOBS
      L9_3 = L7_3.job
      L8_3 = L8_3[L9_3]
      L8_3 = L8_3.Blips
      L9_3 = L7_3.vehicle
      L8_3 = L8_3[L9_3]
      if not L8_3 then
        L8_3 = L1_3.none
      end
      L7_3.url = L8_3
    end
    L2_3 = SendReactMessage
    L3_3 = "HANDLE_REFS"
    L4_3 = A0_2
    L2_3(L3_3, L4_3)
  end
  L1_2(L2_2)
end
L1_1 = RegisterNetEvent
L2_1 = "rcore_dispatch:client:updateRefs"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = pcall
  L2_2 = L0_1
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = dbg
    L1_2 = L1_2.critical
    L2_2 = "Failed to update refs"
    L1_2(L2_2)
  end
end
L1_1(L2_1, L3_1)
