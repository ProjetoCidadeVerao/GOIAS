fx_version 'cerulean'
game 'gta5'
lua54 'yes'
ac 'EQUIPE GUARD'
dev 'goianox'
discord 'https://discord.gg/t9Rh4e6Aa8'

ui_page 'front/index.html'

shared_scripts {
	"tunnel/U_.lua",
	"tunnel/vRP.lua",
	"shared.lua",
	"adapter.lua",
	"config/*.lua"
}

server_scripts {
	"tunnel/U_.lua",
    "server/*.lua",
}

client_scripts {
	"tunnel/U_.lua",
    "client/*.lua",
}

files {
	"tunnel/Tu_.lua",
	"tunnel/P_.lua",
	"tunnel/T_.lua",
	"front/*",
    "front/index.html",
    "front/style.css",
    "front/script.js",
	"config/*.json"
}