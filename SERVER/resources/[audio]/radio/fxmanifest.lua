shared_script "@EQPG/shared.lua"

shared_script '@likizao_ac/client/library.lua'
fx_version 'adamant'
games { 'gta5' }
ui_page 'html/index.html'
files {
	'html/icons/properties.png',
	'html/icons/properties2.png',
	'html/icons/decrypt.png',
	'html/icons/groups.png',
	'html/icons/blackmarkettasks.png',
	'html/icons/delivery.png',
	'html/icons/stocks.png',
	'html/icons/camera.png',
	'html/icons/help.png',
	'html/icons/csms.png',
	'html/icons/home.png',
	'html/icons/call.png',
	'html/icons/call2.png',
	'html/icons/chathistory.png',
	'html/icons/trash.png',
	'html/icons/account.png',
	'html/icons/car.png',
	'html/icons/jobalerts.png',
	'html/icons/twatter.png',
	'html/icons/contacts.png',
	'html/icons/gps.png',
	'html/icons/internet.png',
	'html/icons/newsms.png',
	'html/icons/notepad.png',
	'html/icons/pager.png',
	'html/icons/pager2.png',
	'html/icons/pager3.png',
	'html/icons/phone.png',
	'html/icons/phonenumber.png',
	'html/icons/sms.png',
	'html/icons/yellowpages.png',
	'html/icons/packages.png',
	'html/icons/trucker.png',
	'html/index.html',
	'html/gurgle.png',
	'html/pricedown.ttf',
	'html/cursor.png',
	'html/background.png',
	'html/backgroundwhite.png',
	'html/style.css',
	'html/scripts.js',
	'html/nui.png',
	'html/debounce.min.js'
}
client_scripts {
	'@vrp/lib/Utils.lua',
	'client/main.lua'
}
server_scripts {
    '@vrp/lib/Utils.lua',
	'server.lua'
}                                          