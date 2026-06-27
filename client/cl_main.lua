local L0_1, L1_1, L2_1, L3_1
L0_1 = promise
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
LOADED_CLIENT = L0_1
L0_1 = {}
L0_1.MAP_HANDLE = 0
L1_1 = {}
L0_1.UNITS = L1_1
L1_1 = {}
L0_1.ALERTS = L1_1
L1_1 = {}
L0_1.SAVED_DRAWS = L1_1
L1_1 = {}
L0_1.RELATED_JOBS = L1_1
L1_1 = {}
L0_1.RELATED_JOBS_UI = L1_1
L1_1 = {}
L0_1.RADIO = L1_1
L0_1.RADIO_TYPE = "global_radio"
L0_1.GLOBAL_RADIO_TYPE = "job"
L1_1 = {}
L1_1.JOB = ""
L1_1.DRAW_UNIT = "all"
L1_1.HAS_PERMS = false
L1_1.DISPLAY_NAME = ""
L1_1.IS_AVAILABLE = true
L1_1.IS_IN_ALERT = false
L1_1.IS_ALLOWED = false
L1_1.RANK = 0
L1_1.SWITCHBOARD_CONFIG_OPENED = false
L2_1 = {}
L1_1.RELATED_PLAYERS = L2_1
L1_1.RADIO_ENABLED = true
L1_1.ID = 0
L1_1.UNIT = ""
L0_1.CHARACTER = L1_1
L1_1 = {}
L1_1.MAP_OPENED = false
L1_1.SWITCHBOARD_OPENED = false
L0_1.UTILS = L1_1
GLOBALS = L0_1
L0_1 = {}
BLIPS_ALERTS = L0_1
L0_1 = true
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = true
  L1_2 = false
  L0_1 = L1_2
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    while true do
      L0_3 = CL_CONFIG
      L0_3 = L0_3.RadioAsItem
      if not L0_3 then
        break
      end
      L0_3 = L0_1
      if L0_3 then
        break
      end
      L0_3 = CONFIG
      L0_3 = L0_3.Features
      L0_3 = L0_3.radio
      if not L0_3 then
        break
      end
      L0_3 = nil
      L1_3 = type
      L2_3 = CL_CONFIG
      L2_3 = L2_3.RadioItemName
      L2_3 = "string" == L2_3
      L1_3 = L1_3(L2_3)
      if L1_3 then
        L1_3 = FRAMEWORK
        L1_3 = L1_3.HasItem
        L2_3 = CL_CONFIG
        L2_3 = L2_3.RadioItemName
        L1_3 = L1_3(L2_3)
        L0_3 = L1_3
      else
        L1_3 = type
        L2_3 = CL_CONFIG
        L2_3 = L2_3.RadioItemName
        L2_3 = "table" == L2_3
        L1_3 = L1_3(L2_3)
        if L1_3 then
          L1_3 = pairs
          L2_3 = CL_CONFIG
          L2_3 = L2_3.RadioItemName
          L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
          for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
            L7_3 = FRAMEWORK
            L7_3 = L7_3.HasItem
            L8_3 = L6_3
            L7_3 = L7_3(L8_3)
            if L7_3 then
              L0_3 = true
            end
          end
        end
      end
      if not L0_3 then
        L1_3 = L0_2
        if L1_3 then
          L1_3 = Wait
          L2_3 = 200
          L1_3(L2_3)
          L1_3 = false
          L0_2 = L1_3
          L1_3 = GLOBALS
          L1_3 = L1_3.CHARACTER
          L1_3.RADIO_ENABLED = false
          L1_3 = exports
          L1_3 = L1_3["pma-voice"]
          L2_3 = L1_3
          L1_3 = L1_3.removePlayerFromRadio
          L1_3(L2_3)
          L1_3 = TriggerServerEvent
          L2_3 = "rcore_dispatch:server:unloadRadioSystem"
          L3_3 = GLOBALS
          L3_3 = L3_3.CHARACTER
          L3_3 = L3_3.JOB
          L1_3(L2_3, L3_3)
      end
      elseif L0_3 then
        L1_3 = L0_2
        if not L1_3 then
          L1_3 = true
          L0_2 = L1_3
          L1_3 = GLOBALS
          L1_3 = L1_3.CHARACTER
          L1_3.RADIO_ENABLED = true
          L1_3 = MoveToFrequency
          L2_3 = GLOBALS
          L2_3 = L2_3.CHARACTER
          L2_3 = L2_3.UNIT
          L1_3(L2_3)
          L1_3 = TriggerServerEvent
          L2_3 = "rcore_dispatch:server:unflag"
          L1_3(L2_3)
          L1_3 = Wait
          L2_3 = 200
          L1_3(L2_3)
          L1_3 = TriggerServerEvent
          L2_3 = "rcore_dispatch:server:joinFrequency"
          L3_3 = GLOBALS
          L3_3 = L3_3.CHARACTER
          L3_3 = L3_3.UNIT
          L1_3(L2_3, L3_3)
        end
      end
      L1_3 = Wait
      L2_3 = 1000
      L1_3(L2_3)
    end
  end
  L1_2(L2_2)
end
StartRadioItemLoop = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L1_2 = promise
  L2_2 = L1_2
  L1_2 = L1_2.new
  L1_2 = L1_2(L2_2)
  LOADED_CLIENT = L1_2
  L1_2 = true
  L0_1 = L1_2
  L1_2 = Wait
  L2_2 = 500
  L1_2(L2_2)
  L1_2 = Locales
  L2_2 = CONFIG
  L2_2 = L2_2.Locale
  L1_2 = L1_2[L2_2]
  if not L1_2 then
    L1_2 = dbg
    L1_2 = L1_2.critical
    L2_2 = "Locale not found"
    return L1_2(L2_2)
  end
  L1_2 = SendReactMessage
  L2_2 = "LOAD_LOCALES"
  L3_2 = Locales
  L4_2 = CONFIG
  L4_2 = L4_2.Locale
  L3_2 = L3_2[L4_2]
  L1_2(L2_2, L3_2)
  L1_2 = FRAMEWORK
  L1_2 = L1_2.GetPlayerJob
  L1_2 = L1_2()
  if nil == L1_2 then
    L2_2 = LoadClientData
    return L2_2()
  end
  L2_2 = GetResourceMetadata
  L3_2 = "pma-voice"
  L4_2 = "new_version"
  L5_2 = 0
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  if not L2_2 then
    L3_2 = CONFIG
    L3_2 = L3_2.Features
    L3_2 = L3_2.radio
    if L3_2 then
      L3_2 = CONFIG
      L3_2 = L3_2.Features
      L3_2.radio = false
      L3_2 = print
      L4_2 = "Update your rcore pma-voice downloading it from our org (read the docs). If you dont update or use our resource you will not be able to use the radio feature"
      L3_2(L4_2)
    end
  end
  L3_2 = CONFIG
  L3_2 = L3_2.Features
  L3_2 = L3_2.radio
  if L3_2 then
    L3_2 = exports
    L3_2 = L3_2["pma-voice"]
    L4_2 = L3_2
    L3_2 = L3_2.removePlayerFromRadio
    L3_2(L4_2)
  end
  L3_2 = GLOBALS
  L3_2 = L3_2.CHARACTER
  L3_2.JOB = L1_2
  L3_2 = CONFIG
  L3_2 = L3_2.JOBS
  L3_2 = L3_2[L1_2]
  if L3_2 and not A0_2 then
    L3_2 = GLOBALS
    L3_2 = L3_2.CHARACTER
    L3_2.IS_ALLOWED = true
    L3_2 = CL_CONFIG
    L3_2 = L3_2.EnableInfoContainer
    if L3_2 then
      L3_2 = SendReactMessage
      L4_2 = "SET_SHOW_MINI_INFO"
      L5_2 = true
      L3_2(L4_2, L5_2)
      L3_2 = SendReactMessage
      L4_2 = "SET_MINI_INFO_BOTTOM"
      L5_2 = CL_CONFIG
      L5_2 = L5_2.InfoContainerVerticalPosition
      L3_2(L4_2, L5_2)
    end
  else
    L3_2 = RemoveMapBlips
    L3_2()
    L3_2 = ClearGpsMultiRoute
    L3_2()
    L3_2 = SendReactMessage
    L4_2 = "CLOSE_ALL"
    L3_2(L4_2)
    L3_2 = CL_CONFIG
    L3_2 = L3_2.EnableInfoContainer
    if L3_2 then
      L3_2 = SendReactMessage
      L4_2 = "SET_SHOW_MINI_INFO"
      L5_2 = false
      L3_2(L4_2, L5_2)
      L3_2 = SendReactMessage
      L4_2 = "SET_MINI_INFO_BOTTOM"
      L5_2 = CL_CONFIG
      L5_2 = L5_2.InfoContainerVerticalPosition
      L3_2(L4_2, L5_2)
    end
    L3_2 = dbg
    L3_2 = L3_2.info
    L4_2 = "Player not allowed to use dispatch"
    L3_2(L4_2)
    L3_2 = GLOBALS
    L3_2 = L3_2.CHARACTER
    L3_2.IS_ALLOWED = false
    L3_2 = LocalPlayer
    L3_2 = L3_2.state
    L3_2.radio_allowed = false
    return
  end
  L3_2 = SendReactMessage
  L4_2 = "SET_WEBHOOK"
  L5_2 = CL_CONFIG
  L5_2 = L5_2.CarRobberyPictureWebhook
  L3_2(L4_2, L5_2)
  L3_2 = SendReactMessage
  L4_2 = "CHANGE_ALSO_UNIT"
  L5_2 = CL_CONFIG
  L5_2 = L5_2.SetAlsoUnit
  L3_2(L4_2, L5_2)
  L3_2 = SendReactMessage
  L4_2 = "CAN_BE_FIXED"
  L5_2 = CL_CONFIG
  L5_2 = L5_2.CanBeFixed
  L3_2(L4_2, L5_2)
  L3_2 = SendReactMessage
  L4_2 = "ENABLE_TIME"
  L5_2 = CL_CONFIG
  L5_2 = L5_2.EnableTimeAgo
  L3_2(L4_2, L5_2)
  L3_2 = InitRadio
  L3_2()
  L3_2 = LocalPlayer
  L3_2 = L3_2.state
  L3_2.radio_allowed = true
  L3_2 = FRAMEWORK
  L3_2 = L3_2.GetPlayerJobGrade
  L3_2 = L3_2()
  L4_2 = CONFIG
  L4_2 = L4_2.JOBS
  L4_2 = L4_2[L1_2]
  L4_2 = L4_2.Ranks
  L4_2 = L4_2[L3_2]
  if not L4_2 then
    L4_2 = print
    L5_2 = "Rank not found so the script will not work properly!! Add your ranks to your shared config"
    L4_2(L5_2)
  end
  L4_2 = CONFIG
  L4_2 = L4_2.JOBS
  L4_2 = L4_2[L1_2]
  L4_2 = L4_2.Ranks
  L4_2 = L4_2[L3_2]
  L5_2 = GLOBALS
  L5_2 = L5_2.CHARACTER
  L5_2.RANK = L3_2
  L5_2 = GLOBALS
  L5_2 = L5_2.CHARACTER
  L5_2.HAS_PERMS = false
  L5_2 = CONFIG
  L5_2 = L5_2.JOBS
  L5_2 = L5_2[L1_2]
  L5_2 = L5_2.Perms
  L5_2 = L5_2[L4_2]
  if L5_2 then
    L5_2 = dbg
    L5_2 = L5_2.info
    L6_2 = "The character has permissions"
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
    L5_2 = GLOBALS
    L5_2 = L5_2.CHARACTER
    L5_2.HAS_PERMS = true
  end
  L5_2 = CL_CONFIG
  L5_2 = L5_2.HideIfNoAlerts
  if not L5_2 then
    L5_2 = ToggleSwitchboard
    L6_2 = true
    L5_2(L6_2)
  end
  if not L4_2 then
    L5_2 = dbg
    L5_2 = L5_2.critical
    L6_2 = "Rank not found so the script will not work properly"
    L5_2(L6_2)
  end
  L5_2 = GLOBALS
  L5_2 = L5_2.CHARACTER
  L6_2 = L4_2
  L7_2 = " "
  L8_2 = FRAMEWORK
  L8_2 = L8_2.GetPlayerLastname
  L8_2 = L8_2()
  L6_2 = L6_2 .. L7_2 .. L8_2
  L5_2.DISPLAY_NAME = L6_2
  L5_2 = GLOBALS
  L5_2 = L5_2.CHARACTER
  L6_2 = GetPlayerServerId
  L7_2 = PlayerId
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L7_2()
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L5_2.ID = L6_2
  L5_2 = GLOBALS
  L5_2 = L5_2.UNITS
  L6_2 = _U
  L7_2 = "ASSIGN"
  L6_2 = L6_2(L7_2)
  L7_2 = {}
  L5_2[L6_2] = L7_2
  L5_2 = pairs
  L6_2 = CONFIG
  L6_2 = L6_2.JOBS
  L6_2 = L6_2[L1_2]
  L6_2 = L6_2.Units
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = GLOBALS
    L11_2 = L11_2.UNITS
    L12_2 = L10_2[1]
    L13_2 = {}
    L11_2[L12_2] = L13_2
  end
  L5_2 = SendReactMessage
  L6_2 = "LOAD_RANKS"
  L7_2 = ranks
  L5_2(L6_2, L7_2)
  L5_2 = {}
  L6_2 = GLOBALS
  L7_2 = {}
  L6_2.RELATED_JOBS = L7_2
  L6_2 = GLOBALS
  L7_2 = {}
  L6_2.RELATED_JOBS_UI = L7_2
  L6_2 = pairs
  L7_2 = CONFIG
  L7_2 = L7_2.RelatedJobs
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = false
    L13_2 = pairs
    L14_2 = L11_2
    L13_2, L14_2, L15_2, L16_2 = L13_2(L14_2)
    for L17_2, L18_2 in L13_2, L14_2, L15_2, L16_2 do
      L19_2 = L18_2.job
      if L19_2 == L1_2 then
        L12_2 = true
      end
    end
    if L12_2 then
      L13_2 = pairs
      L14_2 = L11_2
      L13_2, L14_2, L15_2, L16_2 = L13_2(L14_2)
      for L17_2, L18_2 in L13_2, L14_2, L15_2, L16_2 do
        L19_2 = L18_2.job
        if L19_2 ~= L1_2 then
          L19_2 = table
          L19_2 = L19_2.insert
          L20_2 = L5_2
          L21_2 = L18_2.job
          L19_2(L20_2, L21_2)
          L19_2 = GLOBALS
          L19_2 = L19_2.RELATED_JOBS
          L20_2 = L18_2.job
          L21_2 = {}
          L19_2[L20_2] = L21_2
          L19_2 = table
          L19_2 = L19_2.insert
          L20_2 = GLOBALS
          L20_2 = L20_2.RELATED_JOBS_UI
          L21_2 = L18_2
          L19_2(L20_2, L21_2)
        end
      end
    end
  end
  L6_2 = CreateThread
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = Wait
    L1_3 = 1500
    L0_3(L1_3)
    L0_3 = CONFIG
    L0_3 = L0_3.Features
    L0_3 = L0_3.radio
    if L0_3 then
      L0_3 = CONFIG
      L0_3 = L0_3.RelatedJobs
      L0_3 = #L0_3
      if L0_3 > 0 then
        L0_3 = TriggerServerEvent
        L1_3 = "rcore_dispatch:server:player"
        L2_3 = L5_2
        L0_3(L1_3, L2_3)
      end
    end
    L0_3 = TriggerEvent
    L1_3 = "rcore_dispatch:client:sendBlacklistChannels"
    L2_3 = CONFIG
    L2_3 = L2_3.JOBS
    L0_3(L1_3, L2_3)
    L0_3 = SendReactMessage
    L1_3 = "LOAD_LOCALES"
    L2_3 = Locales
    L3_3 = CONFIG
    L3_3 = L3_3.Locale
    L2_3 = L2_3[L3_3]
    L0_3(L1_3, L2_3)
  end
  L6_2(L7_2)
  L6_2 = SendReactMessage
  L7_2 = "SET_UNIT_HEADER"
  L8_2 = CL_CONFIG
  L8_2 = L8_2.EnableUnitOnHeader
  L6_2(L7_2, L8_2)
  L6_2 = SendReactMessage
  L7_2 = "LOAD_RELATED_JOBS"
  L8_2 = GLOBALS
  L8_2 = L8_2.RELATED_JOBS_UI
  L6_2(L7_2, L8_2)
  L6_2 = Wait
  L7_2 = 500
  L6_2(L7_2)
  L6_2 = false
  L0_1 = L6_2
  L6_2 = StartRadioItemLoop
  L6_2()
  L6_2 = LOADED_CLIENT
  L7_2 = L6_2
  L6_2 = L6_2.resolve
  L6_2(L7_2)
end
LoadClientData = L1_1
L1_1 = CreateThread
function L2_1()
  local L0_2, L1_2, L2_2, L3_2
  while true do
    L0_2 = GLOBALS
    L0_2 = L0_2.CHARACTER
    L0_2 = L0_2.IS_ALLOWED
    if L0_2 then
      L0_2 = Wait
      L1_2 = 0
      L0_2(L1_2)
      L0_2 = CL_CONFIG
      L0_2 = L0_2.UsingKeyMapping
      if not L0_2 then
        L0_2 = IsControlJustPressed
        L1_2 = 1
        L2_2 = KEYS
        L3_2 = CL_CONFIG
        L3_2 = L3_2.Controls
        L3_2 = L3_2.next_alert
        L2_2 = L2_2[L3_2]
        L0_2 = L0_2(L1_2, L2_2)
        if L0_2 then
          L0_2 = GLOBALS
          L0_2 = L0_2.UTILS
          L0_2 = L0_2.SWITCHBOARD_OPENED
          if L0_2 then
            L0_2 = SendReactMessage
            L1_2 = "KEY_PRESSED_SWITCH"
            L2_2 = "right"
            L0_2(L1_2, L2_2)
        end
        else
          L0_2 = IsControlJustPressed
          L1_2 = 1
          L2_2 = KEYS
          L3_2 = CL_CONFIG
          L3_2 = L3_2.Controls
          L3_2 = L3_2.prev_alert
          L2_2 = L2_2[L3_2]
          L0_2 = L0_2(L1_2, L2_2)
          if L0_2 then
            L0_2 = GLOBALS
            L0_2 = L0_2.UTILS
            L0_2 = L0_2.SWITCHBOARD_OPENED
            if L0_2 then
              L0_2 = SendReactMessage
              L1_2 = "KEY_PRESSED_SWITCH"
              L2_2 = "left"
              L0_2(L1_2, L2_2)
          end
          else
            L0_2 = IsControlJustPressed
            L1_2 = 1
            L2_2 = KEYS
            L3_2 = CL_CONFIG
            L3_2 = L3_2.Controls
            L3_2 = L3_2.accept_alert
            L2_2 = L2_2[L3_2]
            L0_2 = L0_2(L1_2, L2_2)
            if L0_2 then
              L0_2 = GLOBALS
              L0_2 = L0_2.UTILS
              L0_2 = L0_2.SWITCHBOARD_OPENED
              if L0_2 then
                L0_2 = SendReactMessage
                L1_2 = "KEY_PRESSED_SWITCH"
                L2_2 = "select"
                L0_2(L1_2, L2_2)
              end
            end
          end
        end
        L0_2 = IsControlJustPressed
        L1_2 = 0
        L2_2 = KEYS
        L3_2 = CL_CONFIG
        L3_2 = L3_2.Controls
        L3_2 = L3_2.switch_config
        L2_2 = L2_2[L3_2]
        L0_2 = L0_2(L1_2, L2_2)
        if L0_2 then
          L0_2 = ExecuteCommand
          L1_2 = CL_CONFIG
          L1_2 = L1_2.UtilityCommands
          L1_2 = L1_2.switchboard_config
          L1_2 = L1_2.command
          L0_2(L1_2)
        end
      end
      L0_2 = GLOBALS
      L0_2 = L0_2.UTILS
      L0_2 = L0_2.MAP_OPENED
      if L0_2 then
        L0_2 = CL_CONFIG
        L0_2 = L0_2.EnableRadioOnPanel
        if L0_2 then
          L0_2 = DisableDisplayControlActions
          L0_2()
        end
      end
      L0_2 = GLOBALS
      L0_2 = L0_2.UTILS
      L0_2 = L0_2.SWITCHBOARD_CONFIG_OPENED
      if L0_2 then
        L0_2 = CL_CONFIG
        L0_2 = L0_2.MoveOnConfigSwitch
        if L0_2 then
          L0_2 = DisableDisplayControlActionsOnConfig
          L0_2()
        end
      end
    else
      L0_2 = Wait
      L1_2 = 500
      L0_2(L1_2)
    end
  end
end
L1_1(L2_1)
L1_1 = RegisterCommand
L2_1 = "dispatch_next_alert"
function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = GLOBALS
  L0_2 = L0_2.CHARACTER
  L0_2 = L0_2.IS_ALLOWED
  if L0_2 then
    L0_2 = GLOBALS
    L0_2 = L0_2.UTILS
    L0_2 = L0_2.SWITCHBOARD_OPENED
    if not L0_2 then
      return
    end
    L0_2 = SendReactMessage
    L1_2 = "KEY_PRESSED_SWITCH"
    L2_2 = "right"
    L0_2(L1_2, L2_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterCommand
L2_1 = "dispatch_previous_alert"
function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = GLOBALS
  L0_2 = L0_2.CHARACTER
  L0_2 = L0_2.IS_ALLOWED
  if L0_2 then
    L0_2 = GLOBALS
    L0_2 = L0_2.UTILS
    L0_2 = L0_2.SWITCHBOARD_OPENED
    if not L0_2 then
      return
    end
    L0_2 = SendReactMessage
    L1_2 = "KEY_PRESSED_SWITCH"
    L2_2 = "left"
    L0_2(L1_2, L2_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterCommand
L2_1 = "dispatch_select_alert"
function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = GLOBALS
  L0_2 = L0_2.CHARACTER
  L0_2 = L0_2.IS_ALLOWED
  if L0_2 then
    L0_2 = GLOBALS
    L0_2 = L0_2.UTILS
    L0_2 = L0_2.SWITCHBOARD_OPENED
    if not L0_2 then
      return
    end
    L0_2 = SendReactMessage
    L1_2 = "KEY_PRESSED_SWITCH"
    L2_2 = "select"
    L0_2(L1_2, L2_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = exports
L2_1 = "GetOwnUnit"
function L3_1()
  local L0_2, L1_2
  L0_2 = GLOBALS
  L0_2 = L0_2.CHARACTER
  L0_2 = L0_2.UNIT
  if not L0_2 then
    L0_2 = ""
  end
  return L0_2
end
L1_1(L2_1, L3_1)
L1_1 = RegisterCommand
L2_1 = "invtest"
function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = print
  L1_2 = FRAMEWORK
  L1_2 = L1_2.HasItem
  L2_2 = "bandage"
  L1_2, L2_2 = L1_2(L2_2)
  L0_2(L1_2, L2_2)
end
L1_1(L2_1, L3_1)
