shared_script "@EQPG/shared.lua"

fx_version 'adamant'
game 'gta5'
ui_page "nui/index.html"
client_script {
    "@vrp/lib/utils.lua",
    "client.lua",
    "config.lua"
}
server_script {
    "@vrp/lib/utils.lua",
    "server.lua",
    "config.lua"
}               
files {
	"nui/images/background.png",
	"nui/index.html",
	"nui/jquery.js",
	"nui/css.css"
}                                                        