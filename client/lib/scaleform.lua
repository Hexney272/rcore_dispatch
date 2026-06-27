local L0_1, L1_1
L0_1 = {}
Scaleform = L0_1
L0_1 = Scaleform
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = RequestScaleformMovie
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  while true do
    L2_2 = HasScaleformMovieLoaded
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      break
    end
    L2_2 = Citizen
    L2_2 = L2_2.Wait
    L3_2 = 0
    L2_2(L3_2)
  end
  return L1_2
end
L0_1.Request = L1_1
L0_1 = Scaleform
function L1_1(A0_2, A1_2, A2_2, ...)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = BeginScaleformMovieMethod
  L4_2 = A0_2
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L3_2 = CallMinimapScaleformFunction
  L4_2 = A0_2
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L3_2 = {}
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = ...
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L3_2[4] = L7_2
  L3_2[5] = L8_2
  L3_2[6] = L9_2
  L3_2[7] = L10_2
  L3_2[8] = L11_2
  if nil ~= L3_2 then
    L4_2 = 1
    L5_2 = #L3_2
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = type
      L9_2 = L3_2[L7_2]
      L8_2 = L8_2(L9_2)
      if "boolean" == L8_2 then
        L9_2 = ScaleformMovieMethodAddParamBool
        L10_2 = L3_2[L7_2]
        L9_2(L10_2)
      elseif "number" == L8_2 then
        L9_2 = string
        L9_2 = L9_2.find
        L10_2 = L3_2[L7_2]
        L11_2 = "%."
        L9_2 = L9_2(L10_2, L11_2)
        if not L9_2 then
          L9_2 = ScaleformMovieMethodAddParamInt
          L10_2 = L3_2[L7_2]
          L9_2(L10_2)
        else
          L9_2 = ScaleformMovieMethodAddParamFloat
          L10_2 = L3_2[L7_2]
          L9_2(L10_2)
        end
      elseif "string" == L8_2 then
        L9_2 = _ENV
        L10_2 = "ScaleformMovieMethodAddParamTextureNameString"
        L9_2 = L9_2[L10_2]
        L10_2 = L3_2[L7_2]
        L9_2(L10_2)
      end
    end
    if not A1_2 then
      L4_2 = EndScaleformMovieMethod
      L4_2()
    else
      L4_2 = EndScaleformMovieMethodReturnValue
      return L4_2()
    end
  end
end
L0_1.CallFunction = L1_1
