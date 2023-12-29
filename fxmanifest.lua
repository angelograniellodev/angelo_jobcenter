-- Resource Metadata
fx_version 'cerulean'
games { 'gta5' }
lua54 'yes'

author '@devangelo25 on discord contactangelograniello@gmail.com'
description 'Job Center UI Advanced For FiveM ESX'
version '1.0.0'

-- What to run

shared_scripts {
    "configs/*.lua",
    '@ox_lib/init.lua',
}

client_scripts {
    "client/*.lua",
}

server_scripts {
    "server/*lua",
}

ui_page {
    "dist/index.html"
}

files {
	'dist/index.html',
	'dist/files/css/*.css',
    'dist/files/js/*.js',
    'dist/files/assets/*.png',
    'configs/*.js',
}