shared_script "@EQPG/shared.lua"

fx_version 'cerulean'
game 'gta5'

server_scripts {
    "@vrp/lib/Utils.lua",
    'config.lua',
    'server/main.lua',
}

shared_script {
    'config.lua',
}

lua54 'yes'