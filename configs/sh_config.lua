CONFIG = {}
CONFIG.Locale = 'en'
Framework = {
    ESX = 'esx',
    QBCore = 'qbcore',
    Custom = 'custom',
}
CONFIG.Framework = Framework.QBCore-- esx or qbcore or custom
CONFIG.AlertIcon = './assets/siren.svg'
CONFIG.Debug = false
CONFIG.RCoreStatsIntegration = false

CONFIG.Features = {
    ['radio'] = true
}

--- The key of each job should be the name of the job
CONFIG.JOBS = {
    ['police'] = {
        Jobname = 'police',
        SharedBlips = { 'ambulance' }, -- Jobs that will share the map blips
        GlobalFrequency = 1,
        Ispolice = true,
        Ranks = {
            [0] = 'Cadet',
            [1] = 'Private I',
            [2] = 'Private II',
            [3] = 'Deputy',
            [4] = 'Senior Deputy',
            [5] = 'Officer',
            [6] = 'Senior Officer',
            [7] = 'Ranger',
            [8] = 'Senior Ranger',
            [9] = 'Corporal',
            [10] = 'Sergeant',
            [11] = 'Lieutenant',
            [12] = 'D. Lieutenant',
            [13] = 'Captain',
            [14] = 'D. Jail Warden',
            [15] = 'Jail Warden',
            [16] = 'D. Game Warden',
            [17] = 'Game Warden',
            [18] = 'Undersheriff',
            [19] = 'Sheriff',
            [20] = 'Commander',
            [21] = 'Ast. Chief',
            [22] = 'Chief',
        },        
        Blips = { -- Each vehicle type has a blip, and no vehicle is equals to 'none'
            ['automobile'] =
            './assets/police-car.svg',
            ['bike'] = './assets/motorbike.svg',
            ['heli'] = './assets/helicopter.svg',
            ['none'] = './assets/police-hat.svg'
        },
        Perms = {
            ['Cadet'] = true,
            ['Private I'] = true,
            ['Private II'] = true,
            ['Deputy'] = true,
            ['Senior Deputy'] = true,
            ['Officer'] = true,
            ['Senior Officer'] = true,
            ['Ranger'] = true,
            ['Senior Ranger'] = true,
            ['Corporal'] = true,
            ['Sergeant'] = true,
            ['Lieutenant'] = true,
            ['D. Lieutenant'] = true,
            ['Captain'] = true,
            ['D. Jail Warden'] = true,
            ['Jail Warden'] = true,
            ['D. Game Warden'] = true,
            ['Game Warden'] = true,
            ['Undersheriff'] = true,
            ['Sheriff'] = true,
            ['Commander'] = true,
            ['Ast. Chief'] = true,
            ['Chief'] = true
        },
        Units = {
            { 'Patrol | 🔊', 1, true}, -- At the right side, add the jobs which aren't the same job that you want to share unit
            { 'Pursuit 1 | 🚔', 2, true}, -- At the right side, add the jobs which aren't the same job that you want to share unit
            { 'Pursuit 2 | 🚔', 3, true}, -- At the right side, add the jobs which aren't the same job that you want to share unit
            { 'Pursuit 3 | 🚔', 4, true}, -- At the right side, add the jobs which aren't the same job that you want to share unit
            { 'Store Robbery 1 | 🏪', 5.1, true}, -- At the right side, add the jobs which aren't the same job that you want to share unit
            { 'Store Robbery 2 | 🏪', 5.2, true}, -- At the right side, add the jobs which aren't the same job that you want to share unit
            { 'Store Robbery 3 | 🏪', 5.3, true}, -- At the right side, add the jobs which aren't the same job that you want to share unit
            { 'Art Heist | 🎨', 5.7, true}, -- At the right side, add the jobs which aren't the same job that you want to share unit
            { 'Yacht Heist | 🚢', 6, true}, -- At the right side, add the jobs which aren't the same job that you want to share unit
            { 'Fleeca 1 | 💸', 6.1, true}, -- At the right side, add the jobs which aren't the same job that you want to share unit
            { 'Fleeca 2 | 💸', 6.2, true}, -- At the right side, add the jobs which aren't the same job that you want to share unit
            { 'Fleeca 3 | 💸', 6.3, true}, -- At the right side, add the jobs which aren't the same job that you want to share unit
            { 'Pacific | 🏦', 6.4, true}, -- At the right side, add the jobs which aren't the same job that you want to share unit
            -- { 'Command | ⭐', 7, true}, -- At the right side, add the jobs which aren't the same job that you want to share unit
            { 'Raid | ⚠️', 7.1, true}, -- At the right side, add the jobs which aren't the same job that you want to share unit
            { 'Training | 📖', 7.7, true}, -- At the right side, add the jobs which aren't the same job that you want to share unit
            { 'FTO | 🏔️', 7.8, true}, -- At the right side, add the jobs which aren't the same job that you want to share unit
            { 'Tactical Radio | 🤫', 8, true}, -- At the right side, add the jobs which aren't the same job that you want to share unit
            { 'Detective | 🕵️', 8.1, true} -- At the right side, add the jobs which aren't the same job that you want to share unit                           -- { 'Sheriff', 19, true },
            -- { 'Detective', 1, true },
            -- { 'SWAT',     1, true },
            -- { 'Command',     11, true, { 'ambulance' } },
        }
    },
    ['ambulance'] = {
        Jobname = 'ambulance',
        Ispolice = false,
        GlobalFrequency = 11,
        SharedBlips = { 'police' }, -- Jobs that will share the map blips
        Ranks = {
            [0] = 'Trainee',
            [1] = 'EMT - Basic',
            [2] = 'Paramedic',
            [3] = 'Doctor',
            [4] = 'Senior Doctor',
            [5] = 'Lieutenant',
            [6] = 'Captain',
            [7] = 'Station Command',
            [8] = 'Ast. Chief',
            [9] = 'Chief',
        },        
        Blips = {                     -- Each vehicle type has a blip, and no vehicle is equals to 'none'
            ['automobile'] =
            './assets/ambulance.svg', -- The path of the image, you can use a link or a local path
            ['bike'] = './assets/ambulance.svg',
            ['heli'] = './assets/ambulance.svg',
            ['none'] = './assets/ambulance.svg'
        },
        Perms = {
            ['Trainee'] = true,
            ['EMT - Basic'] = true,
            ['Paramedic'] = true,
            ['Doctor'] = true,
            ['Senior Doctor'] = true,
            ['Lieutenant'] = true,
            ['Captain'] = true,
            ['Station Command'] = true,
            ['Ast. Chief'] = true,
            ['Chief'] = true
        },        
        Units = {
            { 'Patrol | 🔊', 11, true}, -- At the right side, add the jobs which aren't the same job that you want to share unit
            { 'Surgery | 💉', 11.1, true}, -- At the right side, add the jobs which aren't the same job that you want to share unit
            { 'Helicopters | 🚁', 11.2, true}, -- At the right side, add the jobs which aren't the same job that you want to share unit
            { 'Motorcycles | 🏍️', 11.3, true}, -- At the right side, add the jobs which aren't the same job that you want to share unit
            { 'FTO | 🏔️', 11.4, true}, -- At the right side, add the jobs which aren't the same job that you want to share unit
            -- { 'Paramedics', 3, true,},
            -- { 'Doctors', 4, true },
            -- { 'Surgeons',     6, true },
            -- { 'Command',     11, true },
        }
    },

}

CONFIG.EnableCallsigns = true

CONFIG.EnableOwnUnitChange = true -- If you want to enable the change of unit for the own player without permissions

CONFIG.RelatedJobs = {            -- Jobs that will share the GLOBAL RADIO
    --[[     {t
        {
            job = 'police',
            label = 'Police',
        },
        {
            job = 'ambulance',
            label = 'EMS',
        }
    }, ]]
}
