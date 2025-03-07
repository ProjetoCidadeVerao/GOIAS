shared_script "@EQPG/shared.lua"

fx_version 'bodacious'
games { 'gta5' }

ui_page 'front/index.html'

client_scripts {
    "@EQPG/tunnel/U_.lua",
    "client/*.lua"
}

files {
	"front/*",
    "front/index.html",
    "front/style.css",
    "front/app.js"
}