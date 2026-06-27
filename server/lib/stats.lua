local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = {}
STATS_CACHE = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = os
  L0_2 = L0_2.date
  L1_2 = "%Y-%m-%d"
  L2_2 = os
  L2_2 = L2_2.time
  L2_2 = L2_2()
  L3_2 = SV_CONFIG
  L3_2 = L3_2.DaysToSaveStats
  L3_2 = L3_2 * 24
  L3_2 = L3_2 * 60
  L3_2 = L3_2 * 60
  L2_2 = L2_2 - L3_2
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = "DELETE FROM dispatch_stats_table WHERE date < @oldest_date"
  L2_2 = MySQL
  L2_2 = L2_2.Sync
  L2_2 = L2_2.execute
  L3_2 = L1_2
  L4_2 = {}
  L4_2["@oldest_date"] = L0_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = dbg
  L3_2 = L3_2.info
  L4_2 = "Cleaned "
  L5_2 = L2_2.affectedRows
  L6_2 = " rows from dispatch_stats_table due to old data."
  L4_2 = L4_2 .. L5_2 .. L6_2
  L3_2(L4_2)
end
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = MySQL
  L0_2 = L0_2.Sync
  L0_2 = L0_2.fetchAll
  L1_2 = "SELECT * FROM dispatch_stats_table"
  L0_2 = L0_2(L1_2)
  L1_2 = 1
  L2_2 = #L0_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L0_2[L4_2]
    L6_2 = L5_2.date
    L6_2 = L6_2 / 1000
    L7_2 = os
    L7_2 = L7_2.date
    L8_2 = "%Y-%m-%d"
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = type
    L9_2 = L5_2.alert_coords
    L8_2 = L8_2(L9_2)
    if "table" == L8_2 then
      L8_2 = dbg
      L8_2 = L8_2.error
      L9_2 = "The alert_coords column in dispatch_stats_table is not a string."
      return L8_2(L9_2)
    end
    L8_2 = type
    L9_2 = L5_2.radar_coords
    L8_2 = L8_2(L9_2)
    if "table" == L8_2 then
      L8_2 = dbg
      L8_2 = L8_2.error
      L9_2 = "The radar_coords column in dispatch_stats_table is not a string."
      return L8_2(L9_2)
    end
    L8_2 = STATS_CACHE
    L9_2 = {}
    L10_2 = L5_2.alerts
    L9_2.alerts = L10_2
    L10_2 = L5_2.car_robberies
    L9_2.car_robberies = L10_2
    L10_2 = L5_2.bank_robberies
    L9_2.bank_robberies = L10_2
    L10_2 = L5_2.shop_robberies
    L9_2.shop_robberies = L10_2
    L10_2 = json
    L10_2 = L10_2.decode
    L11_2 = L5_2.alert_coords
    L10_2 = L10_2(L11_2)
    L9_2.alert_coords = L10_2
    L10_2 = json
    L10_2 = L10_2.decode
    L11_2 = L5_2.radar_coords
    L10_2 = L10_2(L11_2)
    L9_2.radar_coords = L10_2
    L8_2[L7_2] = L9_2
  end
end
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = MySQL
  L0_2 = L0_2.Sync
  L0_2 = L0_2.fetchAll
  L1_2 = "SELECT * FROM dispatch_draws"
  L0_2 = L0_2(L1_2)
  L1_2 = 1
  L2_2 = #L0_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L0_2[L4_2]
    L6_2 = type
    L7_2 = L5_2.data
    L6_2 = L6_2(L7_2)
    if "table" == L6_2 then
      L6_2 = dbg
      L6_2 = L6_2.error
      L7_2 = "The data column in dispatch_draws is not a string."
      return L6_2(L7_2)
    end
    L6_2 = L5_2.job
    L7_2 = L5_2.id
    L8_2 = L5_2.name
    L9_2 = json
    L9_2 = L9_2.decode
    L10_2 = L5_2.data
    L9_2 = L9_2(L10_2)
    L10_2 = L5_2.url
    L11_2 = table
    L11_2 = L11_2.insert
    L12_2 = DISPATCH
    L12_2 = L12_2.SAVED_DRAWS
    L12_2 = L12_2[L6_2]
    L13_2 = {}
    L13_2.id = L7_2
    L13_2.name = L8_2
    L13_2.data = L9_2
    L13_2.url = L10_2
    L11_2(L12_2, L13_2)
  end
  L1_2 = dbg
  L1_2 = L1_2.info
  L2_2 = "Loaded saved draws from database."
  L1_2(L2_2)
end
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = Wait
  L1_2 = 500
  L0_2(L1_2)
  L0_2 = dbg
  L0_2 = L0_2.info
  L1_2 = "Initializing stats..."
  L0_2(L1_2)
  L0_2 = MySQL
  L0_2 = L0_2.Sync
  L0_2 = L0_2.execute
  L1_2 = [[
        CREATE TABLE IF NOT EXISTS dispatch_stats_table (
            date DATE PRIMARY KEY,
            alerts INT,
            car_robberies INT,
            bank_robberies INT,
            shop_robberies INT,
            alert_coords JSON,
            radar_coords JSON
        );
    ]]
  L0_2 = L0_2(L1_2)
  L1_2 = MySQL
  L1_2 = L1_2.Sync
  L1_2 = L1_2.execute
  L2_2 = [[
        CREATE TABLE IF NOT EXISTS `dispatch_draws` (
            `id` INT(11) NOT NULL AUTO_INCREMENT,
            `name` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
            `data` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb4_bin',
            `url` VARCHAR(500) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
            `job` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
            PRIMARY KEY (`id`) USING BTREE,
            INDEX `name` (`name`) USING BTREE
        );
    ]]
  L1_2 = L1_2(L2_2)
  L2_2 = L0_2.warningStatus
  if 0 == L2_2 then
    L2_2 = dbg
    L2_2 = L2_2.success
    L3_2 = "Successfully created dispatch_stats_table table."
    L2_2(L3_2)
  else
    L2_2 = dbg
    L2_2 = L2_2.info
    L3_2 = "The stats table already exists."
    L2_2(L3_2)
  end
  L2_2 = L1_2.warningStatus
  if 0 == L2_2 then
    L2_2 = dbg
    L2_2 = L2_2.success
    L3_2 = "Successfully created dispatch_draws table."
    L2_2(L3_2)
  else
    L2_2 = dbg
    L2_2 = L2_2.info
    L3_2 = "The dispatch_draws table already exists."
    L2_2(L3_2)
  end
  L2_2 = Wait
  L3_2 = 50
  L2_2(L3_2)
  L2_2 = os
  L2_2 = L2_2.date
  L3_2 = "%Y-%m-%d"
  L2_2 = L2_2(L3_2)
  L3_2 = MySQL
  L3_2 = L3_2.Sync
  L3_2 = L3_2.fetchScalar
  L4_2 = "SELECT COUNT(*) FROM dispatch_stats_table WHERE date = @date"
  L5_2 = {}
  L5_2["@date"] = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if 0 == L3_2 then
    L4_2 = "INSERT INTO dispatch_stats_table (date, alerts, car_robberies, bank_robberies, shop_robberies, alert_coords, radar_coords) VALUES (@date, 0, 0, 0, 0, \"[]\", \"[]\")"
    L5_2 = MySQL
    L5_2 = L5_2.Sync
    L5_2 = L5_2.execute
    L6_2 = L4_2
    L7_2 = {}
    L7_2["@date"] = L2_2
    L5_2(L6_2, L7_2)
  end
  L4_2 = L0_1
  L4_2()
  L4_2 = RunAt
  L5_2 = 0
  L6_2 = 0
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = MySQL
    L0_3 = L0_3.Sync
    L0_3 = L0_3.fetchScalar
    L1_3 = "SELECT COUNT(*) FROM dispatch_stats_table WHERE date = @date"
    L2_3 = {}
    L3_3 = L2_2
    L2_3["@date"] = L3_3
    L0_3 = L0_3(L1_3, L2_3)
    if 0 == L0_3 then
      L1_3 = "INSERT INTO dispatch_stats_table (date, alerts, car_robberies, bank_robberies, shop_robberies, alert_coords, radar_coords) VALUES (@date, 0, 0, 0, 0, \"[]\", \"[]\")"
      L2_3 = MySQL
      L2_3 = L2_3.Sync
      L2_3 = L2_3.execute
      L3_3 = L1_3
      L4_3 = {}
      L5_3 = L2_2
      L4_3["@date"] = L5_3
      L2_3(L3_3, L4_3)
    end
    L1_3 = os
    L1_3 = L1_3.date
    L2_3 = "%Y-%m-%d"
    L1_3 = L1_3(L2_3)
    L2_3 = STATS_CACHE
    L3_3 = {}
    L3_3.alerts = 0
    L3_3.car_robberies = 0
    L3_3.bank_robberies = 0
    L3_3.shop_robberies = 0
    L4_3 = {}
    L3_3.alert_coords = L4_3
    L4_3 = {}
    L3_3.radar_coords = L4_3
    L2_3[L1_3] = L3_3
    L2_3 = dbg
    L2_3 = L2_3.success
    L3_3 = "Successfully initialized dispatch_stats_table at 00:01"
    L2_3(L3_3)
  end
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = L1_1
  L4_2()
  L4_2 = L2_1
  L4_2()
  L4_2 = dbg
  L4_2 = L4_2.success
  L5_2 = "Successfully initialized dispatch_stats_table."
  L4_2(L5_2)
end
L4_1 = CreateThread
L5_1 = L3_1
L4_1(L5_1)
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = os
  L0_2 = L0_2.date
  L1_2 = "%H:%M"
  L0_2 = L0_2(L1_2)
  if "00:00" == L0_2 then
    return
  end
  L1_2 = os
  L1_2 = L1_2.date
  L2_2 = "%Y-%m-%d"
  L1_2 = L1_2(L2_2)
  L2_2 = STATS_CACHE
  L2_2 = L2_2[L1_2]
  if not L2_2 then
    L3_2 = MySQL
    L3_2 = L3_2.Sync
    L3_2 = L3_2.fetchScalar
    L4_2 = "SELECT COUNT(*) FROM dispatch_stats_table WHERE date = @date"
    L5_2 = {}
    L5_2["@date"] = L1_2
    L3_2 = L3_2(L4_2, L5_2)
    if 0 == L3_2 then
      L4_2 = "INSERT INTO dispatch_stats_table (date, alerts, car_robberies, bank_robberies, shop_robberies, alert_coords, radar_coords) VALUES (@date, 0, 0, 0, 0, \"[]\", \"[]\")"
      L5_2 = MySQL
      L5_2 = L5_2.Sync
      L5_2 = L5_2.execute
      L6_2 = L4_2
      L7_2 = {}
      L7_2["@date"] = L1_2
      L5_2(L6_2, L7_2)
    end
    L4_2 = STATS_CACHE
    L5_2 = {}
    L5_2.alerts = 0
    L5_2.car_robberies = 0
    L5_2.bank_robberies = 0
    L5_2.shop_robberies = 0
    L6_2 = {}
    L5_2.alert_coords = L6_2
    L6_2 = {}
    L5_2.radar_coords = L6_2
    L4_2[L1_2] = L5_2
    L4_2 = dbg
    L4_2 = L4_2.success
    L5_2 = "Successfully initialized dispatch_stats_table at 00:01"
    L4_2(L5_2)
    return
  end
  L3_2 = "UPDATE dispatch_stats_table SET alerts = @alerts, car_robberies = @car_robberies, bank_robberies = @bank_robberies, shop_robberies = @shop_robberies, alert_coords = @alert_coords, radar_coords = @radar_coords WHERE date = @date"
  L4_2 = {}
  L4_2["@date"] = L1_2
  L5_2 = L2_2.alerts
  L4_2["@alerts"] = L5_2
  L5_2 = L2_2.car_robberies
  L4_2["@car_robberies"] = L5_2
  L5_2 = L2_2.bank_robberies
  L4_2["@bank_robberies"] = L5_2
  L5_2 = L2_2.shop_robberies
  L4_2["@shop_robberies"] = L5_2
  L5_2 = json
  L5_2 = L5_2.encode
  L6_2 = L2_2.alert_coords
  L5_2 = L5_2(L6_2)
  L4_2["@alert_coords"] = L5_2
  L5_2 = json
  L5_2 = L5_2.encode
  L6_2 = L2_2.radar_coords
  L5_2 = L5_2(L6_2)
  L4_2["@radar_coords"] = L5_2
  L5_2 = MySQL
  L5_2 = L5_2.Async
  L5_2 = L5_2.execute
  L6_2 = L3_2
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = dbg
  L5_2 = L5_2.info
  L6_2 = "Saved stats for "
  L7_2 = L1_2
  L8_2 = " in database"
  L6_2 = L6_2 .. L7_2 .. L8_2
  L5_2(L6_2)
end
SaveStats = L4_1
function L4_1()
  local L0_2, L1_2
  while true do
    L0_2 = Wait
    L1_2 = SV_CONFIG
    L1_2 = L1_2.SaveStatsTime
    L1_2 = L1_2 * 60
    L1_2 = L1_2 * 1000
    L0_2(L1_2)
    L0_2 = SaveStats
    L0_2()
  end
end
L5_1 = CreateThread
L6_1 = L4_1
L5_1(L6_1)
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2
  if 0 ~= L1_2 then
    L2_2 = dbg
    L2_2 = L2_2.error
    L3_2 = "This command is not available from a client"
    return L2_2(L3_2)
  end
  L2_2 = SaveStats
  L2_2()
end
L6_1 = RegisterCommand
L7_1 = "save_stats"
L8_1 = L5_1
L6_1(L7_1, L8_1)
