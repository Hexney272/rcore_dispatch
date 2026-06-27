local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = 0
L1_1 = {}
L2_1 = {}
L3_1 = {}
OVERLAY = nil
function L4_1()
  local L0_2, L1_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L0_3 = GLOBALS
    L0_3 = L0_3.MAP_HANDLE
    if L0_3 > 9 then
      return
    end
    L0_3 = 1
    L1_3 = 10
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = "zones.gfx"
      L5_3 = "zones.gfx"
      L6_3 = AddMinimapOverlay
      L7_3 = L4_3
      L6_3 = L6_3(L7_3)
      OVERLAY = L6_3
      L6_3 = RequestStreamedTextureDict
      L7_3 = L5_3
      L6_3(L7_3)
      while true do
        L6_3 = HasMinimapOverlayLoaded
        L7_3 = OVERLAY
        L6_3 = L6_3(L7_3)
        if L6_3 then
          break
        end
        L6_3 = Wait
        L7_3 = 0
        L6_3(L7_3)
      end
      L6_3 = Wait
      L7_3 = 40
      L6_3(L7_3)
      L6_3 = GLOBALS
      L7_3 = OVERLAY
      L6_3.MAP_HANDLE = L7_3
    end
    L0_3 = pairs
    L1_3 = CL_CONFIG
    L1_3 = L1_3.Colors
    L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
    for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
      L6_3 = Scaleform
      L6_3 = L6_3.CallFunction
      L7_3 = GLOBALS
      L7_3 = L7_3.MAP_HANDLE
      L8_3 = false
      L9_3 = "ADD_GANG_COLOR"
      L10_3 = L5_3[2]
      L11_3 = L5_3[1]
      L11_3 = L11_3[1]
      L12_3 = L5_3[1]
      L12_3 = L12_3[2]
      L13_3 = L5_3[1]
      L13_3 = L13_3[3]
      L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
    end
    L0_3 = dbg
    L0_3 = L0_3.info
    L1_3 = "Map loaded"
    L0_3(L1_3)
  end
  L0_2(L1_2)
end
LoadMap = L4_1
L4_1 = CL_CONFIG
L4_1 = L4_1.Colors
L4_1 = #L4_1
L4_1 = L4_1 + 1
function L5_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2 = L0_2 + 1
  L4_1 = L0_2
  L0_2 = L4_1
  L1_2 = CL_CONFIG
  L1_2 = L1_2.Colors
  L1_2 = #L1_2
  if L0_2 > L1_2 then
    L0_2 = 1
    L4_1 = L0_2
  end
  L0_2 = CL_CONFIG
  L0_2 = L0_2.Colors
  L1_2 = L4_1
  L0_2 = L0_2[L1_2]
  L0_2 = L0_2[2]
  if not L0_2 then
    L0_2 = "RED"
  end
  return L0_2
end
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L1_1
  L2_2 = #L2_2
  L3_2 = L2_2 + 1
  L2_2 = L1_1
  L4_2 = {}
  L4_2.shape = A0_2
  L4_2.vertex = A1_2
  L2_2[L3_2] = L4_2
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3
    L0_3 = dbg
    L0_3 = L0_3.info
    L1_3 = "Painting "
    L2_3 = A0_2
    L3_3 = " using the overlay "
    L4_3 = GLOBALS
    L4_3 = L4_3.MAP_HANDLE
    L1_3 = L1_3 .. L2_3 .. L3_3 .. L4_3
    L0_3(L1_3)
    L0_3 = A0_2
    if "polygon" ~= L0_3 then
      L0_3 = A0_2
      if "line" ~= L0_3 then
        goto lbl_113
      end
    end
    L0_3 = L5_1
    L0_3 = L0_3()
    L1_3 = 1
    L2_3 = A1_2
    L2_3 = #L2_3
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = nil
      L6_3 = A0_2
      if "polygon" == L6_3 then
        L7_3 = L4_3 + 1
        L6_3 = A1_2
        L6_3 = L6_3[L7_3]
        L5_3 = L6_3 or L5_3
        if not L6_3 then
          L6_3 = A1_2
          L5_3 = L6_3[1]
        end
      else
        L6_3 = A0_2
        if "line" == L6_3 then
          L7_3 = L4_3 + 1
          L6_3 = A1_2
          L5_3 = L6_3[L7_3]
        end
      end
      L6_3 = type
      L7_3 = L5_3
      L6_3 = L6_3(L7_3)
      if "table" == L6_3 then
        L6_3 = GetCoordinatesBetweenTwoVertex
        L7_3 = A1_2
        L7_3 = L7_3[L4_3]
        L8_3 = L5_3
        L9_3 = 0.01
        L6_3 = L6_3(L7_3, L8_3, L9_3)
        L7_3 = type
        L8_3 = L6_3
        L7_3 = L7_3(L8_3)
        if "table" == L7_3 then
          L7_3 = 1
          L8_3 = #L6_3
          L9_3 = 1
          for L10_3 = L7_3, L8_3, L9_3 do
            L11_3 = L0_1
            L11_3 = L11_3 + 1
            L0_1 = L11_3
            L11_3 = type
            L12_3 = L6_3[L10_3]
            L11_3 = L11_3(L12_3)
            if "vector3" == L11_3 then
              L11_3 = Scaleform
              L11_3 = L11_3.CallFunction
              L12_3 = GLOBALS
              L12_3 = L12_3.MAP_HANDLE
              L13_3 = false
              L14_3 = "ADD_GANG_AREA"
              L15_3 = L6_3[L10_3]
              L15_3 = L15_3.x
              L15_3 = L15_3 + 0.0
              L16_3 = L6_3[L10_3]
              L16_3 = L16_3.y
              L16_3 = L16_3 + 0.0
              L17_3 = L6_3[L10_3]
              L17_3 = L17_3.x
              L17_3 = L17_3 + 5.0
              L18_3 = L6_3[L10_3]
              L18_3 = L18_3.y
              L18_3 = L18_3 + 5.0
              L19_3 = tostring
              L20_3 = L0_1
              L19_3, L20_3 = L19_3(L20_3)
              L11_3 = L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3)
              L12_3 = Scaleform
              L12_3 = L12_3.CallFunction
              L13_3 = GLOBALS
              L13_3 = L13_3.MAP_HANDLE
              L14_3 = false
              L15_3 = "SET_GANG_AREA_OWNER"
              L16_3 = tostring
              L17_3 = L0_1
              L16_3 = L16_3(L17_3)
              L17_3 = L0_3
              L12_3 = L12_3(L13_3, L14_3, L15_3, L16_3, L17_3)
            end
          end
        end
      end
    end
    do return end
    goto lbl_151
    ::lbl_113::
    L0_3 = A0_2
    if "circle" == L0_3 then
      L0_3 = {}
      L1_3 = A1_2
      L1_3 = L1_3[1]
      L1_3 = L1_3[2]
      L0_3.x = L1_3
      L1_3 = A1_2
      L1_3 = L1_3[1]
      L1_3 = L1_3[1]
      L0_3.y = L1_3
      L1_3 = A1_2
      L1_3 = L1_3[2]
      L2_3 = AddBlipForRadius
      L3_3 = L0_3.x
      L4_3 = L0_3.y
      L5_3 = 20.0
      L6_3 = L1_3
      L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
      L3_3 = SetBlipColour
      L4_3 = L2_3
      L5_3 = 1
      L3_3(L4_3, L5_3)
      L3_3 = SetBlipHighDetail
      L4_3 = L2_3
      L5_3 = true
      L3_3(L4_3, L5_3)
      L3_3 = SetBlipAlpha
      L4_3 = L2_3
      L5_3 = 128
      L3_3(L4_3, L5_3)
      L3_3 = table
      L3_3 = L3_3.insert
      L4_3 = L2_1
      L5_3 = L2_3
      L3_3(L4_3, L5_3)
    end
    ::lbl_151::
  end
  L2_2(L3_2)
end
AddShapeBlip = L6_1
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = SendReactMessage
  L1_2 = "REMOVE_DRAWS"
  L0_2(L1_2)
  L0_2 = 1
  L1_2 = L0_1
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = Scaleform
    L4_2 = L4_2.CallFunction
    L5_2 = GLOBALS
    L5_2 = L5_2.MAP_HANDLE
    L6_2 = false
    L7_2 = "REMOVE_AREA"
    L8_2 = tostring
    L9_2 = L3_2
    L8_2, L9_2 = L8_2(L9_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  end
  L0_2 = pairs
  L1_2 = L2_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = RemoveBlip
    L7_2 = L5_2
    L6_2(L7_2)
  end
  L0_2 = 0
  L0_1 = L0_2
end
RemoveAllBlips = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = 1
  L3_2 = #A0_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2[L5_2]
    L6_2 = L6_2.lat
    L7_2 = A0_2[L5_2]
    L7_2 = L7_2.lng
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L1_2
    L10_2 = {}
    L10_2.x = L7_2
    L10_2.y = L6_2
    L8_2(L9_2, L10_2)
  end
  return L1_2
end
ConvertLatLngToVector2 = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  if not A0_2 or not A1_2 then
    L3_2 = {}
    return L3_2
  end
  L3_2 = vector3
  L4_2 = A0_2.x
  L5_2 = A0_2.y
  L6_2 = 0.0
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = vector3
  L5_2 = A1_2.x
  L6_2 = A1_2.y
  L7_2 = 0.0
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = {}
  L6_2 = 0
  L7_2 = 1
  L8_2 = A2_2 or L8_2
  if not A2_2 then
    L8_2 = 0.01
  end
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = Lerp
    L11_2 = L3_2
    L12_2 = L4_2
    L13_2 = L9_2
    L10_2 = L10_2(L11_2, L12_2, L13_2)
    L11_2 = #L5_2
    L11_2 = L11_2 + 1
    L5_2[L11_2] = L10_2
  end
  return L5_2
end
GetCoordinatesBetweenTwoVertex = L6_1
L6_1 = RegisterNUICallback
L7_1 = "ADD_MAP_PAINTING"
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if not A0_2 then
    return
  end
  L2_2 = A0_2.type
  if "circle" ~= L2_2 then
    L2_2 = CountTableElements
    L3_2 = A0_2.vertices
    L3_2 = L3_2[1]
    L2_2 = L2_2(L3_2)
    L3_2 = CL_CONFIG
    L3_2 = L3_2.MaxDrawVertices
    if L2_2 > L3_2 then
      L2_2 = A1_2
      L3_2 = "ok"
      L2_2(L3_2)
      L2_2 = SendReactMessage
      L3_2 = "NOTIFY"
      L4_2 = _U
      L5_2 = "MAX_VERTICES"
      L4_2, L5_2 = L4_2(L5_2)
      return L2_2(L3_2, L4_2, L5_2)
    end
  end
  L2_2 = TriggerServerEvent
  L3_2 = "rcore_dispatch:server:sendLog"
  L4_2 = "add_paint"
  L2_2(L3_2, L4_2)
  L2_2 = A0_2
  L3_2 = GLOBALS
  L3_2 = L3_2.CHARACTER
  L3_2 = L3_2.DRAW_UNIT
  L2_2.selected = L3_2
  L3_2 = TriggerServerEvent
  L4_2 = "rcore_dispatch:server:updatePaint"
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
end
L6_1(L7_1, L8_1)
L6_1 = RegisterNUICallback
L7_1 = "REMOVE_MAP_PAINTINGS"
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = TriggerServerEvent
    L1_3 = "rcore_dispatch:server:sendLog"
    L2_3 = "remove_paint"
    L0_3(L1_3, L2_3)
    L0_3 = TriggerServerEvent
    L1_3 = "rcore_dispatch:server:removePaints"
    L2_3 = A0_2.data
    L3_3 = GLOBALS
    L3_3 = L3_3.CHARACTER
    L3_3 = L3_3.DRAW_UNIT
    L0_3(L1_3, L2_3, L3_3)
  end
  L2_2(L3_2)
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L6_1(L7_1, L8_1)
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = GLOBALS
  L1_2 = L1_2.CHARACTER
  L1_2 = L1_2.DRAW_UNIT
  if "all" ~= L1_2 then
    L1_2 = A0_2.selected
    L2_2 = GLOBALS
    L2_2 = L2_2.CHARACTER
    L2_2 = L2_2.DRAW_UNIT
    if L1_2 == L2_2 then
      L1_2 = SendReactMessage
      L2_2 = "SET_DRAW"
      L3_2 = {}
      L4_2 = A0_2.type
      L3_2.type = L4_2
      L4_2 = A0_2.vertices
      L3_2.vertices = L4_2
      L4_2 = A0_2.selected
      L3_2.selected = L4_2
      L1_2(L2_2, L3_2)
    end
    return
  end
  L1_2 = A0_2.selected
  if "all" ~= L1_2 then
    L1_2 = A0_2.selected
    L2_2 = GLOBALS
    L2_2 = L2_2.CHARACTER
    L2_2 = L2_2.UNIT
    if L1_2 ~= L2_2 then
      goto lbl_72
    end
  end
  L1_2 = A0_2.type
  if "polygon" == L1_2 then
    L1_2 = AddShapeBlip
    L2_2 = A0_2.type
    L3_2 = ConvertLatLngToVector2
    L4_2 = A0_2.vertices
    L4_2 = L4_2[1]
    L3_2, L4_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = A0_2.type
    if "line" == L1_2 then
      L1_2 = AddShapeBlip
      L2_2 = "line"
      L3_2 = ConvertLatLngToVector2
      L4_2 = A0_2.vertices
      L3_2, L4_2 = L3_2(L4_2)
      L1_2(L2_2, L3_2, L4_2)
    else
      L1_2 = A0_2.type
      if "circle" == L1_2 then
        L1_2 = AddShapeBlip
        L2_2 = "circle"
        L3_2 = A0_2.vertices
        L1_2(L2_2, L3_2)
      end
    end
  end
  L1_2 = SendReactMessage
  L2_2 = "SET_DRAW"
  L3_2 = {}
  L4_2 = A0_2.type
  L3_2.type = L4_2
  L4_2 = A0_2.vertices
  L3_2.vertices = L4_2
  L4_2 = A0_2.selected
  L3_2.selected = L4_2
  L1_2(L2_2, L3_2)
  ::lbl_72::
end
AddPaint = L6_1
L6_1 = RegisterNetEvent
L7_1 = "rcore_dispatch:client:updatePaint"
L8_1 = AddPaint
L6_1(L7_1, L8_1)
