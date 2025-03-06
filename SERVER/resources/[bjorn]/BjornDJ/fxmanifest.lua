shared_script '@comida/ai_module_fg-obfuscated.lua'
shared_script '@comida/shared_fg-obfuscated.lua'
fx_version "bodacious"
game "gta5"
lua54 "yes"
dependency "xsound"

ui_page "ui/index.html"


shared_scripts {
    "@vrp/lib/utils.lua",
    "config.lua",
}


client_scripts {
	"client.lua",
}

server_scripts {
	"server.lua",
}

files {
	"ui/index.html",
	"ui/script.js",
	"ui/styles.css",
	"ui/images/*"
}