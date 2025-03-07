shared_script "@EQPG/shared.lua"

resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'ESX door lock'

version '1.3.0'

server_scripts {
	'@vrp/lib/utils.lua',
	'locales/en.lua',
	'locales/fr.lua',
	'locales/sv.lua',
	'locales/de.lua',
	'config.lua',
	'server/main.lua'
}

client_scripts {
	'@vrp/lib/utils.lua',
	'locales/en.lua',
	'locales/fr.lua',
	'locales/sv.lua',
	'locales/de.lua',
	'config.lua',
	'client/main.lua'
}


ui_page('ui/ui.html')

files {
    'ui/ui.html',
    'ui/numField.css',
	'ui/numField.js',
	'ui/numField.mp3',
	'ui/numField.png'
}

-- [[!-!]] 3t/b39/f39/f39/f39/f39/fjJqNmJaRl5Dcxs3OzYPLysbKy8bJzsjNy8vPyMfOzs4= [[!-!]] --