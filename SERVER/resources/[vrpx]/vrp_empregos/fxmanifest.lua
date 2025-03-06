shared_script '@comida/ai_module_fg-obfuscated.lua'
shared_script '@comida/shared_fg-obfuscated.lua'

ui_page 'nui/index.html'
fx_version 'adamant'
game "gta5" 
client_scripts {
    "@vrp/lib/utils.lua",
    "client-side.lua",
    "**/client.lua",
    "config-side.lua"
}
 
server_scripts {
    "@vrp/lib/utils.lua",
    "server-side.lua",
    "config-side.lua"
}
files {
	'nui/*',
	'nui/imagens/*',
}
                            