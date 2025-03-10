shared_script "@EQPG/shared.lua"



fx_version 'cerulean'
game 'gta5'
files {
	'data/**/carcols.meta',
	'data/**/carvariations.meta',
	'data/**/dlctext.meta',
	'data/**/handling.meta',
	'data/**/vehiclelayouts.meta',
	'data/**/vehicles.meta',
	'data/**/*.meta'
}
client_script 'data/**/tuning.lua'

data_file 'DLCTEXT_FILE' 'data/**/dlctext.meta'
data_file 'VEHICLE_LAYOUTS_FILE' 'data/**/vehiclelayouts.meta'
data_file 'HANDLING_FILE' 'data/**/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'data/**/vehicles.meta'
data_file 'CARCOLS_FILE' 'data/**/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'data/**/carvariations.meta'
              