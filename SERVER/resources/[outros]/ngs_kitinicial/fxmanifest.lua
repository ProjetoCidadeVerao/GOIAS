shared_script "@vrp/lib/lib.lua" --Para remover esta pendencia de todos scripts, execute no console o comando "uninstall"

-------------------------------------------
---- ┳┓┏┓┏┳┓  ┏┓┏┓┳┳┓┏┓┏┓  ┏┓┏┳┓┏┓┳┓┏┓ ----
---- ┃┃┣  ┃ ━━┃┓┣┫┃┃┃┣ ┗┓━━┗┓ ┃ ┃┃┣┫┣  ----
---- ┛┗┗┛ ┻   ┗┛┛┗┛ ┗┗┛┗┛  ┗┛ ┻ ┗┛┛┗┗┛ ----
------------------------------------------- 
fx_version 'bodacious'
game 'gta5'

ui_page "nui/ui.html"
shared_script { 'ngs_cf.lua' } 
client_scripts { "@vrp/lib/utils.lua", "ngs_cl.lua" }
server_scripts { "@vrp/lib/utils.lua", "ngs_sv.lua" }

files { "nui/images/*.png",
	"nui/ui.html",     
	"nui/ui.js",           
	"nui/ui.css"
}
-------------------------------------------
---- ┳┓┏┓┏┳┓  ┏┓�