
fx_version 'cerulean'
lua54 'yes'
game 'gta5'
ui_page 'web/build/index.html'
client_scripts {
    '@vrp/lib/utils.lua',
    'config.lua',
    'client.lua'
}
server_scripts {
    'token.lua',
    '@vrp/lib/utils.lua',
    'config.lua',
    'server.lua'
}
files {
    'web/build/index.html',
    'web/build/*',
    'web/build/**',
}