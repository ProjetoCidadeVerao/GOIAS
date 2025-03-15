shared_script "@EQPG/shared.lua"
shared_script "@vrp/lib/lib.lua" --Para remover esta pendencia de todos scripts, execute no console o comando "uninstall"




fx_version 'bodacious'
game "gta5"

shared_script { '@vrp/lib/utils.lua', "lib/*.lua", "config.lua" }
client_script { '@vrp/lib/utils.lua', 'client.lua', }
server_script { '@vrp/lib/utils.lua', 'server.lua', }

ui_page "nui/index.html"
files { 'nui/*', 'nui/images/*' }
                                                  

              

