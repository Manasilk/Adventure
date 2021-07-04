

function internal:configuration/setup/uninstall
#Set setup state to SETUP_STATE_DOES_NOT_EXIST (is set to SETUP_STATE_UNINSTALLED in function above (prevents setup on reload))
data modify storage internal:world setup[].state set value 0
tag @a remove player.initialized_spawn_data
reload