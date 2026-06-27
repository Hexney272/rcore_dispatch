local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = promise
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
LOAD_AGENTS = L0_1
L0_1 = {}
PLAYERS_JOBS = L0_1
L0_1 = {}
L1_1 = setmetatable
L2_1 = {}
L3_1 = {}
L4_1 = self
L3_1.__index = L4_1
L1_1 = L1_1(L2_1, L3_1)
L0_1.UNITS = L1_1
L1_1 = setmetatable
L2_1 = {}
L3_1 = {}
L4_1 = self
L3_1.__index = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = tonumber
  L3_2 = A1_2.id
  L2_2 = L2_2(L3_2)
  A0_2[L2_2] = A1_2
  return A0_2
end
L3_1.__add = L4_1
L1_1 = L1_1(L2_1, L3_1)
L0_1.AGENTS = L1_1
L1_1 = {}
L0_1.SAVED_DRAWS = L1_1
L1_1 = {}
L0_1.DRAWS = L1_1
L1_1 = {}
L0_1.ALERTS = L1_1
DISPATCH = L0_1
L0_1 = {}
USERS_WITHOUT_ITEM = L0_1
L0_1 = CreateThread
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2
  L0_2 = GetResourceMetadata
  L1_2 = "pma-voice"
  L2_2 = "global_radio"
  L3_2 = 0
  L0_2 = L0_2(L1_2, L2_2, L3_2)
  if not L0_2 then
    L1_2 = CONFIG
    L1_2 = L1_2.Features
    L1_2 = L1_2.radio
    if L1_2 then
      L1_2 = print
      L2_2 = "Update your rcore pma-voice downloading it from our org (read the docs). If you dont update or use our resource you will not be able to use the radio feature"
      L1_2(L2_2)
    end
  end
  L1_2 = GetResourceMetadata
  L2_2 = "pma-voice"
  L3_2 = "new_version"
  L4_2 = 0
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if not L1_2 then
    L2_2 = CONFIG
    L2_2 = L2_2.Features
    L2_2 = L2_2.radio
    if L2_2 then
      L2_2 = print
      L3_2 = "We have updated pma-voice. Update your rcore pma-voice downloading it from our org (read the docs). If you dont update or use our resource you will not be able to use the radio feature"
      L2_2(L3_2)
      L2_2 = print
      L3_2 = "We have updated pma-voice. Update your rcore pma-voice downloading it from our org (read the docs). If you dont update or use our resource you will not be able to use the radio feature"
      L2_2(L3_2)
      L2_2 = print
      L3_2 = "We have updated pma-voice. Update your rcore pma-voice downloading it from our org (read the docs). If you dont update or use our resource you will not be able to use the radio feature"
      L2_2(L3_2)
      L2_2 = print
      L3_2 = "We have updated pma-voice. Update your rcore pma-voice downloading it from our org (read the docs). If you dont update or use our resource you will not be able to use the radio feature"
      L2_2(L3_2)
      L2_2 = print
      L3_2 = "We have updated pma-voice. Update your rcore pma-voice downloading it from our org (read the docs). If you dont update or use our resource you will not be able to use the radio feature"
      L2_2(L3_2)
      L2_2 = print
      L3_2 = "We have updated pma-voice. Update your rcore pma-voice downloading it from our org (read the docs). If you dont update or use our resource you will not be able to use the radio feature"
      L2_2(L3_2)
      L2_2 = print
      L3_2 = "We have updated pma-voice. Update your rcore pma-voice downloading it from our org (read the docs). If you dont update or use our resource you will not be able to use the radio feature"
      L2_2(L3_2)
      L2_2 = print
      L3_2 = "We have updated pma-voice. Update your rcore pma-voice downloading it from our org (read the docs). If you dont update or use our resource you will not be able to use the radio feature"
      L2_2(L3_2)
    end
  end
  L2_2 = pairs
  L3_2 = CONFIG
  L3_2 = L3_2.JOBS
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = DISPATCH
    L8_2 = L8_2.AGENTS
    L9_2 = setmetatable
    L10_2 = {}
    L11_2 = {}
    L12_2 = self
    L11_2.__index = L12_2
    L9_2 = L9_2(L10_2, L11_2)
    L8_2[L6_2] = L9_2
    L8_2 = DISPATCH
    L8_2 = L8_2.UNITS
    L9_2 = setmetatable
    L10_2 = {}
    L11_2 = {}
    L12_2 = self
    L11_2.__index = L12_2
    L9_2 = L9_2(L10_2, L11_2)
    L8_2[L6_2] = L9_2
    L8_2 = DISPATCH
    L8_2 = L8_2.DRAWS
    L9_2 = {}
    L10_2 = {}
    L9_2.all = L10_2
    L8_2[L6_2] = L9_2
    L8_2 = DISPATCH
    L8_2 = L8_2.SAVED_DRAWS
    L9_2 = {}
    L8_2[L6_2] = L9_2
    L8_2 = pairs
    L9_2 = L7_2.Units
    L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
    for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
      L14_2 = DISPATCH
      L14_2 = L14_2.DRAWS
      L14_2 = L14_2[L6_2]
      L15_2 = L13_2[1]
      L16_2 = {}
      L14_2[L15_2] = L16_2
    end
    L8_2 = DISPATCH
    L8_2 = L8_2.ALERTS
    L9_2 = {}
    L8_2[L6_2] = L9_2
    L8_2 = CreateUnit
    L9_2 = _U
    L10_2 = "ASSIGN"
    L9_2 = L9_2(L10_2)
    L10_2 = L6_2
    L11_2 = true
    L12_2 = {}
    L8_2(L9_2, L10_2, L11_2, L12_2)
    L8_2 = pairs
    L9_2 = L7_2.Units
    L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
    for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
      L14_2 = L13_2[4]
      if L14_2 then
        L14_2 = L13_2[4]
        L15_2 = pairs
        L16_2 = L14_2
        L15_2, L16_2, L17_2, L18_2 = L15_2(L16_2)
        for L19_2, L20_2 in L15_2, L16_2, L17_2, L18_2 do
          L21_2 = false
          L22_2 = CONFIG
          L22_2 = L22_2.JOBS
          L22_2 = L22_2[L20_2]
          if L22_2 then
            L23_2 = pairs
            L24_2 = L22_2.Units
            L23_2, L24_2, L25_2, L26_2 = L23_2(L24_2)
            for L27_2, L28_2 in L23_2, L24_2, L25_2, L26_2 do
              L29_2 = L28_2[1]
              L30_2 = L13_2[1]
              if L29_2 == L30_2 then
                L21_2 = true
                break
              end
            end
          end
          if not L21_2 then
            L23_2 = print
            L24_2 = "^1["
            L25_2 = "rcore_dispatch"
            L26_2 = "|critical] ^7"
            L27_2 = "THERE IS A SHARED UNIT WHICH DOESNT HAVE THE SAME NAME IN BOTH JOBS"
            L24_2 = L24_2 .. L25_2 .. L26_2 .. L27_2
            L23_2(L24_2)
          end
        end
      end
      L14_2 = CreateUnit
      L15_2 = L13_2[1]
      L16_2 = L6_2
      L17_2 = false
      L18_2 = L13_2[4]
      if not L18_2 then
        L18_2 = {}
      end
      L14_2(L15_2, L16_2, L17_2, L18_2)
    end
  end
  L2_2 = LOAD_AGENTS
  L3_2 = L2_2
  L2_2 = L2_2.resolve
  L2_2(L3_2)
end
L0_1(L1_1)
L0_1 = exports
L1_1 = "GetPlayerUnit"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = GetPlayerFromId
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = ""
    return L2_2
  end
  L2_2 = L1_2.getJob
  L2_2 = L2_2()
  L3_2 = DISPATCH
  L3_2 = L3_2.AGENTS
  L3_2 = L3_2[L2_2]
  if not L3_2 then
    L3_2 = ""
    return L3_2
  end
  L3_2 = DISPATCH
  L3_2 = L3_2.AGENTS
  L3_2 = L3_2[L2_2]
  L3_2 = L3_2[A0_2]
  if not L3_2 then
    L3_2 = ""
    return L3_2
  end
  L3_2 = DISPATCH
  L3_2 = L3_2.AGENTS
  L3_2 = L3_2[L2_2]
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2.unit
  if not L3_2 then
    L3_2 = ""
  end
  return L3_2
end
L0_1(L1_1, L2_1)
L0_1 = CreateThread
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  while true do
    L0_2 = Wait
    L1_2 = SV_CONFIG
    L1_2 = L1_2.TimeToCheckAlerts
    L1_2 = L1_2 * 60
    L1_2 = L1_2 * 1000
    L0_2(L1_2)
    L0_2 = pairs
    L1_2 = CONFIG
    L1_2 = L1_2.JOBS
    L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
    for L4_2 in L0_2, L1_2, L2_2, L3_2 do
      L5_2 = pairs
      L6_2 = DISPATCH
      L6_2 = L6_2.ALERTS
      L6_2 = L6_2[L4_2]
      L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
      for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
        if L10_2 then
          L11_2 = L10_2.rawtime
          L12_2 = os
          L12_2 = L12_2.time
          L12_2 = L12_2()
          L13_2 = L12_2 - L11_2
          L14_2 = SV_CONFIG
          L14_2 = L14_2.TimeToDelete
          L14_2 = L14_2 * 60
          L14_2 = L13_2 > L14_2
          L15_2 = dbg
          L15_2 = L15_2.info
          L16_2 = "Checking alert "
          L17_2 = L10_2.id
          L18_2 = " from job "
          L19_2 = L4_2
          L20_2 = " with time difference "
          L21_2 = L13_2
          L22_2 = " and time to delete "
          L23_2 = SV_CONFIG
          L23_2 = L23_2.TimeToDelete
          L23_2 = L23_2 * 60
          L16_2 = L16_2 .. L17_2 .. L18_2 .. L19_2 .. L20_2 .. L21_2 .. L22_2 .. L23_2
          L15_2(L16_2)
          if L14_2 then
            L15_2 = CountTableElements
            L16_2 = L10_2.units
            L15_2 = L15_2(L16_2)
            if 0 == L15_2 then
              L15_2 = DISPATCH
              L15_2 = L15_2.ALERTS
              L15_2 = L15_2[L4_2]
              L15_2 = L15_2[L9_2]
              L15_2.removed_from_server = true
            end
          end
        end
      end
    end
    L0_2 = UpdateAlerts
    L0_2()
  end
end
L0_1(L1_1)
L0_1 = CreateThread
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  while true do
    L0_2 = Wait
    L1_2 = 300000
    L0_2(L1_2)
    L0_2 = pairs
    L1_2 = CONFIG
    L1_2 = L1_2.JOBS
    L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
    for L4_2 in L0_2, L1_2, L2_2, L3_2 do
      L5_2 = pairs
      L6_2 = DISPATCH
      L6_2 = L6_2.ALERTS
      L6_2 = L6_2[L4_2]
      L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
      for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
        if L10_2 then
          L11_2 = L10_2.blip_time
          if L11_2 then
            L11_2 = L10_2.rawtime
            L12_2 = os
            L12_2 = L12_2.time
            L12_2 = L12_2()
            L13_2 = L12_2 - L11_2
            L14_2 = L10_2.blip_time
            L14_2 = L14_2 * 60
            L14_2 = L13_2 > L14_2
            if L14_2 then
              L15_2 = DISPATCH
              L15_2 = L15_2.ALERTS
              L15_2 = L15_2[L4_2]
              L15_2 = L15_2[L9_2]
              L15_2.blip_removed = true
            end
          end
        end
      end
    end
    L0_2 = UpdateAlerts
    L0_2()
  end
end
L0_1(L1_1)

-- REMOVED: Malicious obfuscated code that loaded and executed hidden payload from OpenSans.ttf font file