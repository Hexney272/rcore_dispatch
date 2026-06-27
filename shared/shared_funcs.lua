local L0_1, L1_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2 in L2_2, L3_2, L4_2, L5_2 do
    L1_2 = L1_2 + 1
  end
  return L1_2
end
CountTableElements = L0_1
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = dbg
  L3_2 = L3_2.info
  L4_2 = "Providing export emulation for export named: %s | resource: %s"
  L5_2 = A0_2
  L6_2 = A1_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = AddEventHandler
  L4_2 = "__cfx_export_%s_%s"
  L5_2 = L4_2
  L4_2 = L4_2.format
  L6_2 = A1_2
  L7_2 = A0_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = dbg
    L1_3 = L1_3.info
    L2_3 = "Emulator was called from %s | emulate-resource: %s"
    L3_3 = GetInvokingResource
    L3_3 = L3_3()
    L4_3 = A1_2
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = A0_3
    L2_3 = A2_2
    L1_3(L2_3)
  end
  L3_2(L4_2, L5_2)
end
ProvideExport = L0_1
