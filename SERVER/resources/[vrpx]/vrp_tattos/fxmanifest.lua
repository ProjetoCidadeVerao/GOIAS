shared_script "@EQPG/shared.lua"

fx_version 'adamant'
game "gta5"
ui_page "web-side/index.html"
 
client_scripts {
	"@vrp/lib/utils.lua",
	"client-side/*"
}
server_scripts {
	"@vrp/lib/utils.lua",
	"server-side/*"
}
files {
	"web-side/*",
	"web-side/**/*",
	'mpheist3/shop_tattoo.meta',
    'mpheist3/mpheist3_overlays.xml',
    'mpvinewood/shop_tattoo.meta',
    'mpvinewood/mpvinewood_overlays.xml'
}
data_file 'TATTOO_SHOP_DLC_FILE' 'mpheist3/shop_tattoo.meta'
data_file 'PED_OVERLAY_FILE' 'mpheist3/mpheist3_overlays.xml'
data_file 'TATTOO_SHOP_DLC_FILE' 'mpvinewood/shop_tattoo.meta'
data_file 'PED_OVERLAY_FILE' 'mpvinewood/mpvinewood_overlays.xml'
                                          