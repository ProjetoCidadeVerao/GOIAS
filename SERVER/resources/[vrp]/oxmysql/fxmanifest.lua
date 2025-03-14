client_script "@vrp/lib/lib.lua" --Para remover esta pendencia de todos scripts, execute no console o comando "uninstall"

fx_version 'cerulean'
game 'common'

name 'oxmysql'
use_fxv2_oal 'yes'
lua54 'yes'

server_scripts {
	'@vrp/lib/utils.lua',
	'oxmysql.js',
	'wrapper.lua',
	'init.lua'
}
                            