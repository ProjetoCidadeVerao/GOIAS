shared_script '@comida/ai_module_fg-obfuscated.lua'
fx_version 'adamant'
game 'gta5'

shared_script 'RPC.lua'

server_scripts {
  'server/*',
  'server/frameworks/*',
}

client_scripts {
  'client/*'
}

files {
  'build/**/*',
  'config.json',
}