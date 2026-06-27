local L0_1, L1_1, L2_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L0_2 = Wait
  L1_2 = 4500
  L0_2(L1_2)
  L0_2 = SV_CONFIG
  L0_2 = L0_2.JobBlipsEnabled
  if not L0_2 then
    return
  end
  while true do
    L0_2 = pairs
    L1_2 = CONFIG
    L1_2 = L1_2.JOBS
    L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
    for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
      L6_2 = {}
      L7_2 = CONFIG
      L7_2 = L7_2.JOBS
      L7_2 = L7_2[L4_2]
      L7_2 = L7_2.SharedBlips
      if L7_2 then
        L7_2 = pairs
        L8_2 = DISPATCH
        L8_2 = L8_2.AGENTS
        L8_2 = L8_2[L4_2]
        L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
        for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
          L6_2[L11_2] = L12_2
        end
        L7_2 = pairs
        L8_2 = CONFIG
        L8_2 = L8_2.JOBS
        L8_2 = L8_2[L4_2]
        L8_2 = L8_2.SharedBlips
        L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
        for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
          L13_2 = pairs
          L14_2 = DISPATCH
          L14_2 = L14_2.AGENTS
          L14_2 = L14_2[L12_2]
          L13_2, L14_2, L15_2, L16_2 = L13_2(L14_2)
          for L17_2, L18_2 in L13_2, L14_2, L15_2, L16_2 do
            L19_2 = tonumber
            L20_2 = L18_2.id
            L19_2 = L19_2(L20_2)
            L6_2[L19_2] = L18_2
          end
        end
      else
        L7_2 = DISPATCH
        L7_2 = L7_2.AGENTS
        L6_2 = L7_2[L4_2]
      end
      L7_2 = {}
      L8_2 = pairs
      L9_2 = L6_2
      L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
      for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
        L14_2 = L13_2.ref
        if L14_2 then
          L14_2 = GetPlayerPed
          L15_2 = L12_2
          L14_2 = L14_2(L15_2)
          L15_2 = {}
          L15_2.coords = nil
          L15_2.vehicle = "none"
          L15_2.id = L12_2
          L16_2 = L13_2.job
          L15_2.job = L16_2
          L16_2 = L13_2.unit
          L15_2.unit = L16_2
          L16_2 = L13_2.name
          L15_2.name = L16_2
          L7_2[L12_2] = L15_2
          L15_2 = L13_2.callsign
          if L15_2 then
            L15_2 = L7_2[L12_2]
            L16_2 = L13_2.callsign
            L17_2 = " - "
            L18_2 = L13_2.name
            L16_2 = L16_2 .. L17_2 .. L18_2
            L15_2.name = L16_2
          end
          if L14_2 then
            L15_2 = GetEntityCoords
            L16_2 = L14_2
            L15_2 = L15_2(L16_2)
            L16_2 = L13_2.coords
            if L16_2 then
              L16_2 = L7_2[L12_2]
              L16_2.coords = L15_2
              L17_2 = L13_2
              L16_2 = L13_2.setCoords
              L18_2 = L15_2
              L16_2(L17_2, L18_2)
              L16_2 = GetVehiclePedIsIn
              L17_2 = L14_2
              L18_2 = false
              L16_2 = L16_2(L17_2, L18_2)
              if 0 ~= L16_2 then
                L17_2 = GetVehicleType
                L18_2 = L16_2
                L17_2 = L17_2(L18_2)
                L18_2 = L7_2[L12_2]
                L18_2.vehicle = L17_2
                L18_2 = SV_CONFIG
                L18_2 = L18_2.WhitelistedVehicles
                L18_2 = L18_2.enabled
                if L18_2 then
                  L18_2 = SV_CONFIG
                  L18_2 = L18_2.WhitelistedVehicles
                  L18_2 = L18_2.vehs
                  L19_2 = GetEntityModel
                  L20_2 = L16_2
                  L19_2 = L19_2(L20_2)
                  L18_2 = L18_2[L19_2]
                  if not L18_2 then
                    L7_2[L12_2] = nil
                  end
                end
              else
                L17_2 = SV_CONFIG
                L17_2 = L17_2.RefOnFoot
                if not L17_2 then
                  L7_2[L12_2] = nil
                end
              end
            else
              L16_2 = L7_2[L12_2]
              L16_2.coords = L15_2
              L17_2 = L13_2
              L16_2 = L13_2.setCoords
              L18_2 = L15_2
              L16_2(L17_2, L18_2)
            end
            L16_2 = SV_CONFIG
            L16_2 = L16_2.ItemNeededToUseRefs
            if L16_2 then
              L16_2 = GetPlayerFromId
              L17_2 = L12_2
              L16_2 = L16_2(L17_2)
              L17_2 = L16_2.HasItem
              L18_2 = SV_CONFIG
              L18_2 = L18_2.ItemToUseRefs
              L17_2 = L17_2(L18_2)
              if not L17_2 then
                L7_2[L12_2] = nil
              end
            end
          end
          L15_2 = L7_2[L12_2]
          if L15_2 then
            L15_2 = L7_2[L12_2]
            L15_2 = L15_2.coords
            if L15_2 then
              goto lbl_165
            end
          end
          L7_2[L12_2] = nil
        end
        ::lbl_165::
      end
      L8_2 = EmitToAgents
      L9_2 = "rcore_dispatch:client:updateRefs"
      L10_2 = L4_2
      L11_2 = L7_2
      L8_2(L9_2, L10_2, L11_2)
    end
    L0_2 = Wait
    L1_2 = 3500
    L0_2(L1_2)
  end
end
L1_1 = CreateThread
L2_1 = L0_1
L1_1(L2_1)
