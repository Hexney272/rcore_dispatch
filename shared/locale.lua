local L0_1, L1_1, L2_1
L0_1 = rdebug
L0_1 = L0_1()
L1_1 = L0_1.setupPrefix
L2_1 = GetCurrentResourceName
L2_1 = L2_1()
L1_1(L2_1)
L1_1 = {}
Locales = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CONFIG
  L1_2 = L1_2.Locale
  if nil == L1_2 then
    L1_2 = L0_1.critical
    L2_2 = "Cannot found in CONFIG Locale"
    L1_2(L2_2)
    L1_2 = "not_found_CONFIG"
    return L1_2
  end
  L1_2 = Locales
  L2_2 = CONFIG
  L2_2 = L2_2.Locale
  L1_2 = L1_2[L2_2]
  if nil == L1_2 then
    L1_2 = L0_1.critical
    L2_2 = "Cannot found locale %s"
    L3_2 = CONFIG
    L3_2 = L3_2.Locale
    L1_2(L2_2, L3_2)
    L1_2 = "not_found_locale"
    return L1_2
  end
  L1_2 = Locales
  L2_2 = CONFIG
  L2_2 = L2_2.Locale
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2[A0_2]
  if nil == L1_2 then
    L1_2 = L0_1.critical
    L2_2 = "Cannot found locale string %s in locale %s"
    L3_2 = A0_2
    L4_2 = CONFIG
    L4_2 = L4_2.Locale
    L1_2(L2_2, L3_2, L4_2)
    return A0_2
  end
  L1_2 = Locales
  L2_2 = CONFIG
  L2_2 = L2_2.Locale
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2[A0_2]
  return L1_2
end
_U = L1_1
