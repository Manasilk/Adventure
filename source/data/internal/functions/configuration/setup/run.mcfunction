function internal:common/scoreboards/constants
function internal:common/scoreboards/world
function internal:common/scoreboards/chat
function internal:common/scoreboards/compute
function internal:common/scoreboards/sounds
function internal:common/scoreboards/combat
function internal:common/scoreboards/player
function internal:common/scoreboards/entity
function internal:common/scoreboards/spells
function internal:common/scoreboards/quests
function internal:common/scoreboards/teams
function internal:common/scoreboards/collision
function internal:common/scoreboards/commands
function internal:common/scoreboards/anticheat
function internal:common/scoreboards/debug
function internal:common/scoreboards/world_builder
function internal:common/scoreboards/preset
function internal:configuration/setup/scoreboards/worldspawn
function internal:configuration/setup/scoreboards/constants
function internal:configuration/setup/scoreboards/world
function internal:configuration/setup/scoreboards/compute
function internal:configuration/setup/scoreboards/preset
function internal:configuration/setup/scoreboards/entity
function internal:configuration/setup/dimensions
function internal:configuration/setup/miscellaneous/world_storage


#Update world configuration
function internal:configuration/world

data modify storage internal:world setup[].state set value 1
#states:
#STATE_SETUP_DOES_NOT_EXIST = 0, //empty or 0 (first load always empty)
#STATE_SETUP_COMPLETE       = 1,
#STATE_SETUP_INCOMPLETE     = 2,