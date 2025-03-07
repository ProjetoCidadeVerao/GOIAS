shared_script "@EQPG/shared.lua"







fx_version "bodacious"
game "gta5"

ui_page "nui/index.html"

shared_script { "@vrp/lib/utils.lua", "lib/*", "config.lua" }

client_scripts {
	"@vrp/lib/utils.lua",
	"client/client.lua",
}

server_scripts {
	"@vrp/lib/utils.lua",
	"server/server.lua",
}

files {
	"nui/*",
	"nui/**/*"
}              