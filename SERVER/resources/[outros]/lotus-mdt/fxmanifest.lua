shared_script "@EQPG/shared.lua"






lua54 'yes'
fx_version 'bodacious'
game 'gta5'
author 'decibel#0001'
ui_page_preload 'yes'
ui_page 'web/index.html'
client_scripts {
    '@vrp/lib/utils.lua',
    'init.lua',
    'client/*'
}

server_scripts {
    '@vrp/lib/utils.lua',
    'init.lua',
    'server/**/**'
}

files {
    'web/**/**/*',
    'web/*.html'
}
              