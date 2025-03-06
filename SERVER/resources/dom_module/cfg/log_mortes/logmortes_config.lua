-- [ CONFIGURAÇÕES GERAIS ] --
cfglogmortes = {}

-- [ WEBHOOKS ] --
cfglogmortes.logmortes = "https://discord.com/api/webhooks/1343287914611605544/dLG9Oc-DToHzjpbSbUxZBkjpxqDGHJz7pG5b69pxxIYVs_i2CIebraIS-Ezif0ugMRkj" -- WEBHOOK LOG DE MORTES
cfglogmortes.logscreenshot = "https://discord.com/api/webhooks/1343287914611605544/dLG9Oc-DToHzjpbSbUxZBkjpxqDGHJz7pG5b69pxxIYVs_i2CIebraIS-Ezif0ugMRkj" -- WEBHOOK LOG DE SCREENSHOTS (NECESSÁRIO SOMENTE SE VOCÊ HABILITAR A OPÇÃO DE SCREENSHOT)

-- [ FEED DE MORTES IN GAME ] --
cfglogmortes.notify = "notifykill" -- **false** desativa, **chat** receberá via chat, **notify** via notify em cima do mini-mapa e **notifykill** via notify com imagem
cfglogmortes.feedOnOff = "founder.permissao" -- permissão para ativar ou desativar as notificações in-game, exemplo abaixo:
-- utilizando o comando in-game "/feedmortes chat" altera para modo chat
-- utilizando o comando in-game "/feedmortes notify" altera para modo notificação em cima do mini-mapa
-- utilizando o comando in-game "/feedmortes notifykill" altera para modo notificação com imagem
-- utilizando o comando in-game "/feedmortes" desativa o feed
cfglogmortes.permissao = "staff.permissao" -- permissão para receber as notificações in-game

-- [ SCREENSHOT ] --
cfglogmortes.screenshot = false -- Habilitar caso queira tirar print da tela de quem matou (OBS: requer o script "DISCORD-SCREENSHOT")

-- [ DIMENSÕES ] --
cfglogmortes.dimensions = false -- **true** receberá as logs de mortes que ocorrerem dentro de TODAS as dimensões, **false** desativará todas as logs fora da dimensão padrão (0)

-- [ SAFEZONES ] --
cfglogmortes.safezone = true -- Para habilitar a detecção de morte em safezone alterar para TRUE

cfglogmortes.safes = {
	{ ['x'] = 196.15780639648, ['y'] = -932.81182861328, ['z'] = 30.687440872192, ['range'] = 92, ['nome'] = "Praça" },
	{ ['x'] = 230.94702148438, ['y'] = -776.00927734375, ['z'] = 30.259489059448, ['range'] = 40, ['nome'] = "Garagem 4" },
}

-- [ LISTA DE ARMAS ] --
cfglogmortes.Weapons = {
	[joaat('WEAPON_UNARMED')] = 'Desarmado',
	[joaat('GADGET_PARACHUTE')] = 'Paraquedas',
	[joaat('WEAPON_KNIFE')] = 'Faca',
	[joaat('WEAPON_NIGHTSTICK')] = 'Machete',
	[joaat('WEAPON_HAMMER')] = 'Martelo',
	[joaat('WEAPON_BAT')] = 'Taco de Beisebol',
	[joaat('WEAPON_CROWBAR')] = 'Pé de Cabra',
	[joaat('WEAPON_GOLFCLUB')] = 'Taco de Golf',
	[joaat('WEAPON_BOTTLE')] = 'Garrafa',
	[joaat('WEAPON_DAGGER')] = 'Adaga',
	[joaat('WEAPON_HATCHET')] = 'Machado',
	[joaat('WEAPON_KNUCKLE')] = 'Soco-Inglês',
	[joaat('WEAPON_MACHETE')] = 'Machete',
	[joaat('WEAPON_FLASHLIGHT')] = 'Lanterna',
	[joaat('WEAPON_SWITCHBLADE')] = 'Canivete',
	[joaat('WEAPON_BATTLEAXE')] = 'Machado de Batalha',
	[joaat('WEAPON_POOLCUE')] = 'Taco de Sinuca',
	[joaat('WEAPON_PIPEWRENCH')] = 'Chave Grifo',
	[joaat('WEAPON_STONE_HATCHET')] = 'Machado de Pedra',
	[joaat('WEAPON_PISTOL')] = 'M1911',
	[joaat('WEAPON_PISTOL_MK2')] = 'FN Five Seven',
	[joaat('WEAPON_COMBATPISTOL')] = 'Glock G19',
	[joaat('WEAPON_PISTOL50')] = 'Pistol .50	',
	[joaat('WEAPON_SNSPISTOL')] = 'HK P7M10',
	[joaat('WEAPON_SNSPISTOL_MK2')] = 'SNS Pistol Mk2',
	[joaat('WEAPON_HEAVYPISTOL')] = 'Heavy Pistol',
	[joaat('WEAPON_VINTAGEPISTOL')] = 'M1922',
	[joaat('WEAPON_MARKSMANPISTOL')] = 'Marksman Pistol',
	[joaat('WEAPON_REVOLVER')] = 'Magnum 44',
	[joaat('WEAPON_REVOLVER_MK2')] = 'Magnum 357',
	[joaat('WEAPON_DOUBLEACTION')] = 'Double-Action Revolver',
	[joaat('WEAPON_APPISTOL')] = 'Koch VP9',
	[joaat('WEAPON_STUNGUN')] = 'Tazer',
	[joaat('WEAPON_FLAREGUN')] = 'Flare Gun',
	[joaat('WEAPON_RAYPISTOL')] = 'Up-n-Atomizer',
	[joaat('WEAPON_MICROSMG')] = 'Uzi',
	[joaat('WEAPON_MACHINEPISTOL')] = 'Tec-9',
	[joaat('WEAPON_MINISMG')] = 'Mini SMG',
	[joaat('WEAPON_SMG')] = 'MP5',
	[joaat('WEAPON_SMG_MK2')] = 'SMG Mk2	',
	[joaat('WEAPON_ASSAULTSMG')] = 'Munição de MTAR-21',
	[joaat('WEAPON_COMBATPDW')] = 'Sig Sauer MPX',
	[joaat('WEAPON_MG')] = 'MG',
	[joaat('WEAPON_COMBATMG')] = 'Combat MG',
	[joaat('WEAPON_COMBATMG_MK2')] = 'Combat MG Mk2',
	[joaat('WEAPON_GUSENBERG')] = 'Thompson',
	[joaat('WEAPON_RAYCARBINE')] = 'Unholy Deathbringer',
	[joaat('WEAPON_ASSAULTRIFLE')] = 'AK-103',
	[joaat('WEAPON_ASSAULTRIFLE_MK2')] = 'Assault Rifle Mk2',
	[joaat('WEAPON_CARBINERIFLE')] = 'M4A1',
	[joaat('WEAPON_CARBINERIFLE_MK2')] = 'Carbine Rifle Mk2',
	[joaat('WEAPON_ADVANCEDRIFLE')] = 'Advanced Rifle',
	[joaat('WEAPON_SPECIALCARBINE')] = 'Parafall',
	[joaat('WEAPON_SPECIALCARBINE_MK2')] = 'Special Carbine Mk2',
	[joaat('WEAPON_BULLPUPRIFLE')] = 'Bullpup',
	[joaat('WEAPON_BULLPUPRIFLE_MK2')] = 'Bullpup Rifle Mk2',
	[joaat('WEAPON_COMPACTRIFLE')] = 'AKS',
	[joaat('WEAPON_SNIPERRIFLE')] = 'Sniper Rifle',
	[joaat('WEAPON_HEAVYSNIPER')] = 'Heavy Sniper',
	[joaat('WEAPON_HEAVYSNIPER_MK2')] = 'Heavy Sniper Mk2',
	[joaat('WEAPON_MARKSMANRIFLE')] = 'Marksman Rifle',
	[joaat('WEAPON_MARKSMANRIFLE_MK2')] = 'Marksman Rifle Mk2',
	[joaat('WEAPON_GRENADE')] = 'Grenade',
	[joaat('WEAPON_STICKYBOMB')] = 'Sticky Bomb',
	[joaat('WEAPON_PROXMINE')] = 'Proximity Mine',
	[joaat('WEAPON_PIPEBOMB')] = 'Pipe Bomb',
	[joaat('WEAPON_SMOKEGRENADE')] = 'Tear Gas',
	[joaat('WEAPON_BZGAS')] = 'BZ Gas',
	[joaat('WEAPON_MOLOTOV')] = 'Molotov',
	[joaat('WEAPON_FIREEXTINGUISHER')] = 'Extintor de Incêndio',
	[joaat('WEAPON_PETROLCAN')] = 'Galão de Gasolina',
	[joaat('WEAPON_BALL')] = 'Ball',
	[joaat('WEAPON_SNOWBALL')] = 'Snowball',
	[joaat('WEAPON_FLARE')] = 'Flare',
	[joaat('WEAPON_GRENADELAUNCHER')] = 'Grenade Launcher',
	[joaat('WEAPON_RPG')] = 'RPG',
	[joaat('WEAPON_MINIGUN')] = 'Minigun',
	[joaat('WEAPON_FIREWORK')] = 'Firework Launcher',
	[joaat('WEAPON_RAILGUN')] = 'Railgun',
	[joaat('WEAPON_HOMINGLAUNCHER')] = 'Homing Launcher',
	[joaat('WEAPON_COMPACTLAUNCHER')] = 'Compact Grenade Launcher',
	[joaat('WEAPON_RAYMINIGUN')] = 'Widowmaker',
	[joaat('WEAPON_PUMPSHOTGUN')] = 'Remington 870',
	[joaat('WEAPON_PUMPSHOTGUN_MK2')] = 'Remington MK2',
	[joaat('WEAPON_SAWNOFFSHOTGUN')] = 'Shotgun',
	[joaat('WEAPON_BULLPUPSHOTGUN')] = 'Bullpup Shotgun',
	[joaat('WEAPON_ASSAULTSHOTGUN')] = 'Assault Shotgun',
	[joaat('WEAPON_MUSKET')] = 'Musket',
	[joaat('WEAPON_HEAVYSHOTGUN')] = 'Heavy Shotgun',
	[joaat('WEAPON_DBSHOTGUN')] = 'Double Barrel Shotgun',
	[joaat('WEAPON_SWEEPERSHOTGUN')] = 'Sweeper Shotgun',
	[joaat('WEAPON_REMOTESNIPER')] = 'Remote Sniper',
	[joaat('WEAPON_GRENADELAUNCHER_SMOKE')] = 'Smoke Grenade Launcher',
	[joaat('WEAPON_PASSENGER_ROCKET')] = 'Passenger Rocket',
	[joaat('WEAPON_AIRSTRIKE_ROCKET')] = 'Airstrike Rocket',
	[joaat('WEAPON_STINGER')] = 'Stinger [Veiculo]',
	[joaat('OBJECT')] = 'Objeto',
	[joaat('VEHICLE_WEAPON_TANK')] = 'Tank Cannon',
	[joaat('VEHICLE_WEAPON_SPACE_ROCKET')] = 'Rockets',
	[joaat('VEHICLE_WEAPON_PLAYER_LASER')] = 'Laser',
	[joaat('AMMO_RPG')] = 'Rocket',
	[joaat('AMMO_TANK')] = 'Tank',
	[joaat('AMMO_SPACE_ROCKET')] = 'Rocket',
	[joaat('AMMO_PLAYER_LASER')] = 'Laser',
	[joaat('AMMO_ENEMY_LASER')] = 'Laser',
	[joaat('WEAPON_RAMMED_BY_CAR')] = 'Atropelado por veiculo',
	[joaat('WEAPON_FIRE')] = 'Fogo',
	[joaat('WEAPON_HELI_CRASH')] = 'Acidente de Helicoptero',
	[joaat('WEAPON_RUN_OVER_BY_CAR')] = 'Atropelado por veiculo',
	[joaat('WEAPON_HIT_BY_WATER_CANNON')] = 'Canhão de Água',
	[joaat('WEAPON_EXHAUSTION')] = 'Exaustão',
	[joaat('WEAPON_EXPLOSION')] = 'Explosão',
	[joaat('WEAPON_ELECTRIC_FENCE')] = 'Cerca elétrica',
	[joaat('WEAPON_BLEEDING')] = 'Sangrando',
	[joaat('WEAPON_DROWNING_IN_VEHICLE')] = 'Afogamento em veiculo',
	[joaat('WEAPON_DROWNING')] = 'Afogamento',
	[joaat('WEAPON_BARBED_WIRE')] = 'Arame farpado',
	[joaat('WEAPON_VEHICLE_ROCKET')] = 'Vehicle Rocket',
	[joaat('VEHICLE_WEAPON_ROTORS')] = 'Rotores',
	[joaat('WEAPON_AIR_DEFENCE_GUN')] = 'Arma de defesa aérea',
	[joaat('WEAPON_ANIMAL')] = 'Animal',
	[joaat('WEAPON_COUGAR')] = 'Onça'
}

return cfglogmortes