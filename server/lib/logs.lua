local L0_1, L1_1, L2_1
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L3_2 = SV_CONFIG
  L3_2 = L3_2.Logs
  L3_2 = L3_2.enabled
  if not L3_2 then
    return
  end
  if not A0_2 then
    return
  end
  L3_2 = source
  if not L3_2 then
    L3_2 = A2_2
  end
  L4_2 = GetPlayerName
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = "Unknown"
  end
  L5_2 = GetPlayerLicense
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = "Unknown"
  end
  L6_2 = GetPlayerSteam
  L7_2 = L3_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = "Unknown"
  end
  L7_2 = SV_CONFIG
  L7_2 = L7_2.Logs
  L7_2 = L7_2.actions
  L7_2 = L7_2[A0_2]
  if not L7_2 then
    L7_2 = dbg
    L7_2 = L7_2.critical
    L8_2 = "Action "
    L9_2 = A0_2
    L10_2 = " not found"
    L8_2 = L8_2 .. L9_2 .. L10_2
    return L7_2(L8_2)
  end
  if A1_2 then
    L7_2 = SV_CONFIG
    L7_2 = L7_2.Logs
    L7_2 = L7_2.actions
    L7_2 = L7_2[A0_2]
    L8_2 = L7_2
    L7_2 = L7_2.format
    L9_2 = tostring
    L10_2 = A1_2
    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L9_2(L10_2)
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    A1_2 = L7_2
  else
    L7_2 = SV_CONFIG
    L7_2 = L7_2.Logs
    L7_2 = L7_2.actions
    A1_2 = L7_2[A0_2]
  end
  L7_2 = string
  L7_2 = L7_2.upper
  L8_2 = string
  L8_2 = L8_2.sub
  L9_2 = A0_2
  L10_2 = 1
  L11_2 = 1
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L8_2(L9_2, L10_2, L11_2)
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L8_2 = string
  L8_2 = L8_2.sub
  L9_2 = A0_2
  L10_2 = 2
  L8_2 = L8_2(L9_2, L10_2)
  L7_2 = L7_2 .. L8_2
  L8_2 = json
  L8_2 = L8_2.encode
  L9_2 = {}
  L9_2.username = "rcore_dispatch"
  L10_2 = {}
  L11_2 = {}
  L12_2 = L7_2
  L13_2 = " Log"
  L12_2 = L12_2 .. L13_2
  L11_2.title = L12_2
  L11_2.type = "rich"
  L11_2.color = 5080
  L12_2 = {}
  L12_2.text = "Support Discord | https://discord.com/invite/F28PfsY"
  L12_2.icon_url = "https://media.discordapp.net/attachments/966032493851578462/1111394098516078703/spaces2F-M9hVoNAzbDHyIiKyOjt2Favatar-1592051217799.png?width=281&height=281"
  L11_2.footer = L12_2
  L12_2 = {}
  L13_2 = {}
  L13_2.name = "Player Id"
  L13_2.value = L3_2
  L13_2.inline = true
  L14_2 = {}
  L14_2.name = "Player Name"
  L14_2.value = L4_2
  L14_2.inline = true
  L15_2 = {}
  L15_2.name = "Steam"
  L15_2.value = L6_2
  L15_2.inline = true
  L16_2 = {}
  L16_2.name = "License"
  L16_2.value = L5_2
  L16_2.inline = true
  L17_2 = {}
  L17_2.name = "Text"
  L17_2.value = A1_2
  L17_2.inline = false
  L12_2[1] = L13_2
  L12_2[2] = L14_2
  L12_2[3] = L15_2
  L12_2[4] = L16_2
  L12_2[5] = L17_2
  L11_2.fields = L12_2
  L10_2[1] = L11_2
  L9_2.embeds = L10_2
  L8_2 = L8_2(L9_2)
  L9_2 = PerformHttpRequest
  L10_2 = SV_CONFIG
  L10_2 = L10_2.Logs
  L10_2 = L10_2.webhook
  function L11_2(A0_3, A1_3, A2_3)
  end
  L12_2 = "POST"
  L13_2 = L8_2
  L14_2 = {}
  L14_2["Content-Type"] = "application/json"
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
end
SendDiscordLog = L0_1
L0_1 = RegisterNetEvent
L1_1 = "rcore_dispatch:server:sendLog"
L2_1 = SendDiscordLog
L0_1(L1_1, L2_1)
