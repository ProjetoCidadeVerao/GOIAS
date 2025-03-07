shared_script "@EQPG/shared.lua"

fx_version 'adamant'
game 'gta5'
server_scripts {
    "@vrp/lib/utils.lua",
    "lux-veh-s.lua"
}
client_scripts {
    "@vrp/lib/utils.lua",
	"dispatch.lua",
    "ipls.lua",
    "lux-veh-c.lua",
    "realista.lua",
    "v-settings.lua"
}
                            
files {
	'visualsettings.dat'
}                                          