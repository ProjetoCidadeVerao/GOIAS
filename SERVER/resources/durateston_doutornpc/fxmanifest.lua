shared_script "@EQPG/shared.lua"



fx_version 'adamant'
game 'gta5'


client_scripts {
    "@vrp/lib/utils.lua",
    'config.lua',
    'client.lua'
}

server_scripts {
    "@vrp/lib/utils.lua",
    'config.lua',
    'server.lua'
}

shared_scripts {
    'config.lua'
} 
