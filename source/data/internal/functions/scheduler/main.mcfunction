#
# @SCHEDULER
function internal:world/general/time/update_tick
#
# @ANTICHEAT
function internal:world/general/managers/anticheat
#
# @BUILDER
execute if entity @a[tag=account.builder] run function internal:world/general/managers/world_builder
#
# @AI
function internal:world/general/managers/scripted_behavior
#
# @SCRIPTS
function internal:scripts/world/world_script_loader
#
# @MANAGERS
function internal:world/general/world
function internal:world/general/managers/account
execute if score #world world_tick matches 0 run function internal:world/general/managers/combat
function internal:world/general/managers/area_trigger
function internal:world/general/managers/player
function internal:world/general/managers/creature
function internal:world/general/managers/object
execute if score #world world_tick matches 0 run function internal:world/general/managers/advancements
execute if score #world world_tick matches 0 run function internal:world/general/managers/spells
function internal:world/general/managers/quests
function internal:world/general/managers/combat_log
function internal:world/general/managers/movement
function internal:world/general/managers/transport
execute if score #world world_tick matches 0 run function internal:world/general/managers/weather
#
# @VMAPS
function internal:common/collision/vmaps_mgr