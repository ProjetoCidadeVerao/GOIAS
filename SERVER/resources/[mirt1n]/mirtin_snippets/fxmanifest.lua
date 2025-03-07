shared_script "@EQPG/shared.lua"

fx_version 'adamant'
game 'gta5'
ui_page 'web-site/nui/ui.html'
shared_script "config/config.lua"
client_script {
   '@vrp/lib/utils.lua',
   'others-client/main.lua',
}
server_script {
   '@vrp/lib/utils.lua',
   'others-server/main.lua',
}
files {
	'web-site/nui/**/*',
	'web-site/nui/*'
}
                                          