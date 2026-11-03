fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name 'pigeon-no-auto-helmet'
author 'Pigeon Studios'
description 'Stops GTA putting a helmet on players automatically when they get on a bike or into an aircraft.'
version '1.0.0'
repository 'https://github.com/pigeon-studios-uk/pigeon-no-auto-helmet'

-- Pigeon Studios version registry entry, read by server/version_check.lua.
pigeon_slug 'pigeon-no-auto-helmet'

client_scripts {
    'configuration/config.lua',
    'client/main.lua',
}

server_scripts {
    'server/version_check.lua',
}
