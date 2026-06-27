local L0_1, L1_1, L2_1
L0_1 = {}
L1_1 = nil
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L0_1
  L5_2 = {}
  L5_2.h = A0_2
  L5_2.m = A1_2
  L5_2.cb = A2_2
  L3_2(L4_2, L5_2)
end
RunAt = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = os
  L0_2 = L0_2.time
  L0_2 = L0_2()
  L1_2 = os
  L1_2 = L1_2.date
  L2_2 = "*t"
  L3_2 = L0_2
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.wday
  L2_2 = tonumber
  L3_2 = os
  L3_2 = L3_2.date
  L4_2 = "%H"
  L5_2 = L0_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = tonumber
  L4_2 = os
  L4_2 = L4_2.date
  L5_2 = "%M"
  L6_2 = L0_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = {}
  L4_2.d = L1_2
  L4_2.h = L2_2
  L4_2.m = L3_2
  return L4_2
end
GetTime = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = 1
  L4_2 = L0_1
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L0_1
    L7_2 = L7_2[L6_2]
    L7_2 = L7_2.h
    if L7_2 == A1_2 then
      L7_2 = L0_1
      L7_2 = L7_2[L6_2]
      L7_2 = L7_2.m
      if L7_2 == A2_2 then
        L7_2 = L0_1
        L7_2 = L7_2[L6_2]
        L7_2 = L7_2.cb
        L8_2 = A0_2
        L9_2 = A1_2
        L10_2 = A2_2
        L7_2(L8_2, L9_2, L10_2)
      end
    end
  end
end
OnTime = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = GetTime
  L0_2 = L0_2()
  L1_2 = L0_2.h
  L2_2 = L1_1.h
  if L1_2 == L2_2 then
    L1_2 = L0_2.m
    L2_2 = L1_1.m
    if L1_2 == L2_2 then
      goto lbl_17
    end
  end
  L1_2 = OnTime
  L2_2 = L0_2.d
  L3_2 = L0_2.h
  L4_2 = L0_2.m
  L1_2(L2_2, L3_2, L4_2)
  L1_1 = L0_2
  ::lbl_17::
  L1_2 = SetTimeout
  L2_2 = 60000
  L3_2 = Tick
  L1_2(L2_2, L3_2)
end
Tick = L2_1
L2_1 = GetTime
L2_1 = L2_1()
L1_1 = L2_1
L2_1 = Tick
L2_1()
