local L0_1, L1_1, L2_1, L3_1
L0_1 = false
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3
    while true do
      L0_3 = L0_1
      if L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 50
      L0_3(L1_3)
    end
    L0_3 = SendNUIMessage
    L1_3 = {}
    L2_3 = A0_2
    L1_3.action = L2_3
    L2_3 = A1_2
    L1_3.data = L2_3
    L0_3(L1_3)
  end
  L2_2(L3_2)
end
SendReactMessage = L1_1
L1_1 = RegisterNUICallback
L2_1 = "IS_READY"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = true
  L0_1 = L2_2
  L2_2 = A1_2
  L3_2 = "ok"
  return L2_2(L3_2)
end
L1_1(L2_1, L3_1)
