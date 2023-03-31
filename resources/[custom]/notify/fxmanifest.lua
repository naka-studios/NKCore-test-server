fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name "notify"
description "Simple notify script"
author "Benjamin4k"
version "1.0.0"

client_scripts {'client/*.lua'}

ui_page 'gui/dist/index.html'

files {
    'gui/dist/index.html', 'gui/dist/assets/*.css', 'gui/dist/assets/*.js',
    'gui/dist/assets/*.svg'
}
