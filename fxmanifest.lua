fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name 'mddev_umidmenu'
author 'mddev'
version '1.0'
--license 'GPL-3.0 license'
--repository 'https://github.com/alp1x/um-idcard-menu'

shared_scripts {
	'shared/*.lua',
	'@ox_lib/init.lua',
}

client_scripts {
	'client/createnpc.lua',
	'client/drawtext.lua',
	'client/libmenu.lua'
}

server_scripts {
	'server/server.lua',
}

dependencies {
	'um-idcard',
	'ox_lib'
}
