shared_script "@EQPG/shared.lua"


-- 
fx_version "adamant"
game 'gta5'
lua54 'yes'

files {
	'data/carcols.meta',
	'data/carvariations.meta',
	'data/dlctext.meta',
	'data/handling.meta',
	'data/vehiclelayouts.meta',
	'data/vehicles.meta',
	'data/*.meta'
	-- "audio/*",
	-- "audio/**/**",
	-- "audio/**/**/*.awc"
}
-- client_script 'data/**/tuning.lua'

data_file 'HANDLING_FILE' 'data/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'data/vehicles.meta'
data_file 'CARCOLS_FILE' 'data/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'data/carvariations.meta'

-- data_file "AUDIO_GAMEDATA" "audio/ea825_game.dat"
-- data_file "AUDIO_SOUNDDATA" "audio/ea825_sounds.dat"
-- data_file "AUDIO_WAVEPACK" "audio/dlc_ea825"              