shared_script "@EQPG/shared.lua"

fx_version "adamant"
game "gta5" 
lua54 "yes"

escrow_ignore {
   "config.lua",
   "utils.lua",
   "utilscl.lua"
}

shared_scripts {
   "@vrp/lib/utils.lua",
   "config.lua"
}

server_scripts {
   "utils.lua",
   "server.lua",
}
client_scripts {
   "client.lua",
   "utilscl.lua",
   "chairs.lua"
}

files {
   "nui/**/**/**",
}

ui_page "nui/index.html"

dependency '/assetpacks'