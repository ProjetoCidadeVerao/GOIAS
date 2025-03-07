shared_script "@EQPG/shared.lua"
fx_version 'bodacious'
game 'gta5'

lua54 'on'

files  {
	"data/**/*",
	"audio/*",
	"audio/**/*",
}

data_file "HANDLING_FILE"            "data/**/handling.meta"
data_file "VEHICLE_METADATA_FILE"            "data/**/vehicles.meta"
data_file "CARCOLS_FILE"            "data/**/carcols.meta"
data_file "VEHICLE_VARIATION_FILE"            "data/**/carvariations.meta"
data_file "VEHICLE_LAYOUTS_FILE"            "data/**/vehiclelayouts.meta"


data_file "CLIP_SETS_FILE" 			"data/**/clip_sets.xml"


-- data_file 'AUDIO_WAVEPACK' 'audio/ea888/dlc_ea888'
-- data_file 'AUDIO_GAMEDATA' 'audio/ea888/ea888_game.dat'
-- data_file 'AUDIO_SOUNDDATA' 'audio/ea888/ea888_sounds.dat'