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
	"web-side/**/*"
}
exports {
	"AddButton","SetTitle"
}                                          