fx_version 'cerulean'
game 'gta5'

name "popup"
description "Simple pop up menu using react"
author "Benjamin4k"
version "1.0.0"

shared_scripts {
	'shared/*.lua'
}

client_scripts {
	'client/*.lua'
}

server_scripts {
	'server/*.lua'
}

ui_page 'gui/index.html'

files {
    'gui/index.html',
    'gui/assets/*.css',
    'gui/assets/*.js',
    'gui/assets/*.svg',
}