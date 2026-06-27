local L0_1, L1_1, L2_1
function L0_1(A0_2, ...)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = (...)
  if nil == L1_2 then
    return A0_2
  end
  L2_2 = string
  L2_2 = L2_2.format
  L3_2 = A0_2
  L4_2 = ...
  return L2_2(L3_2, L4_2)
end
sprint = L0_1
function L0_1(A0_2)
  local L1_2
  L1_2 = CONFIG
  L1_2 = L1_2.Debug
  return L1_2
end
isAllowed = L0_1
function L0_1()
  local L0_2, L1_2
  L0_2 = {}
  L0_2.prefix = "rcore_dispatch"
  function L1_2(A0_3, ...)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = isAllowed
    L2_3 = "INFO"
    L1_3 = L1_3(L2_3)
    if L1_3 then
      L1_3 = print
      L2_3 = "^5["
      L3_3 = L0_2.prefix
      L4_3 = "|info] ^7"
      L5_3 = sprint
      L6_3 = A0_3
      L7_3 = ...
      L5_3 = L5_3(L6_3, L7_3)
      L2_3 = L2_3 .. L3_3 .. L4_3 .. L5_3
      L1_3(L2_3)
    end
  end
  L0_2.info = L1_2
  function L1_2(A0_3, ...)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = isAllowed
    L2_3 = "SUCCESS"
    L1_3 = L1_3(L2_3)
    if L1_3 then
      L1_3 = print
      L2_3 = "^5["
      L3_3 = L0_2.prefix
      L4_3 = "|success] ^7"
      L5_3 = sprint
      L6_3 = A0_3
      L7_3 = ...
      L5_3 = L5_3(L6_3, L7_3)
      L2_3 = L2_3 .. L3_3 .. L4_3 .. L5_3
      L1_3(L2_3)
    end
  end
  L0_2.success = L1_2
  function L1_2(A0_3, ...)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = isAllowed
    L2_3 = "CRITICAL"
    L1_3 = L1_3(L2_3)
    if L1_3 then
      L1_3 = print
      L2_3 = "^1["
      L3_3 = L0_2.prefix
      L4_3 = "|critical] ^7"
      L5_3 = sprint
      L6_3 = A0_3
      L7_3 = ...
      L5_3 = L5_3(L6_3, L7_3)
      L2_3 = L2_3 .. L3_3 .. L4_3 .. L5_3
      L1_3(L2_3)
    end
  end
  L0_2.critical = L1_2
  function L1_2(A0_3, ...)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = isAllowed
    L2_3 = "ERROR"
    L1_3 = L1_3(L2_3)
    if L1_3 then
      L1_3 = print
      L2_3 = "^1["
      L3_3 = L0_2.prefix
      L4_3 = "|error] ^7"
      L5_3 = sprint
      L6_3 = A0_3
      L7_3 = ...
      L5_3 = L5_3(L6_3, L7_3)
      L2_3 = L2_3 .. L3_3 .. L4_3 .. L5_3
      L1_3(L2_3)
    end
  end
  L0_2.error = L1_2
  function L1_2(A0_3, ...)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = isAllowed
    L2_3 = "ERROR"
    L1_3 = L1_3(L2_3)
    if L1_3 then
      L1_3 = print
      L2_3 = "^1["
      L3_3 = L0_2.prefix
      L4_3 = "|error] ^7"
      L5_3 = sprint
      L6_3 = A0_3
      L7_3 = ...
      L5_3 = L5_3(L6_3, L7_3)
      L2_3 = L2_3 .. L3_3 .. L4_3 .. L5_3
      L1_3(L2_3)
    end
  end
  L0_2.danger = L1_2
  function L1_2(A0_3, ...)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = isAllowed
    L2_3 = "SECURITY"
    L1_3 = L1_3(L2_3)
    if L1_3 then
      L1_3 = print
      L2_3 = "^3["
      L3_3 = L0_2.prefix
      L4_3 = "|security] ^7"
      L5_3 = sprint
      L6_3 = A0_3
      L7_3 = ...
      L5_3 = L5_3(L6_3, L7_3)
      L2_3 = L2_3 .. L3_3 .. L4_3 .. L5_3
      L1_3(L2_3)
    end
  end
  L0_2.warning = L1_2
  function L1_2(A0_3, ...)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = isAllowed
    L2_3 = "SECURITY"
    L1_3 = L1_3(L2_3)
    if L1_3 then
      L1_3 = print
      L2_3 = "^3["
      L3_3 = L0_2.prefix
      L4_3 = "|security] ^7"
      L5_3 = sprint
      L6_3 = A0_3
      L7_3 = ...
      L5_3 = L5_3(L6_3, L7_3)
      L2_3 = L2_3 .. L3_3 .. L4_3 .. L5_3
      L1_3(L2_3)
    end
  end
  L0_2.security = L1_2
  function L1_2(A0_3, ...)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = isAllowed
    L2_3 = "DEBUG"
    L1_3 = L1_3(L2_3)
    if L1_3 then
      L1_3 = print
      L2_3 = "^2["
      L3_3 = L0_2.prefix
      L4_3 = "|debug] ^7"
      L5_3 = sprint
      L6_3 = A0_3
      L7_3 = ...
      L5_3 = L5_3(L6_3, L7_3)
      L2_3 = L2_3 .. L3_3 .. L4_3 .. L5_3
      L1_3(L2_3)
    end
  end
  L0_2.debug = L1_2
  function L1_2(A0_3)
    local L1_3
    L0_2.prefix = A0_3
  end
  L0_2.setupPrefix = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = L0_2.prefix
    return L0_3
  end
  L0_2.getPrefix = L1_2
  return L0_2
end
rdebug = L0_1
L0_1 = exports
L1_1 = "rdebug"
L2_1 = rdebug
L0_1(L1_1, L2_1)
function L0_1(A0_2, ...)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = rdebug
  L1_2 = L1_2()
  L2_2 = L1_2.info
  L3_2 = A0_2
  L4_2 = ...
  L2_2(L3_2, L4_2)
end
dprint = L0_1
L0_1 = rdebug
L0_1 = L0_1()
dbg = L0_1
