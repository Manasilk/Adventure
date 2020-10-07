# 
# @SCHEDULER
function internal:world/general/time/update_tick
#
# @ANTICHEAT
function internal:world/general/managers/anticheat
#
# @BUILDER
function internal:world/general/managers/world_builder
#
# @AI
execute if score #world world_tick matches 0.. run function internal:world/general/managers/scripted_behavior
#
# @MANAGERS
execute if score #world world_tick matches 0.. run function internal:world/general/world
execute if score #world world_tick matches 0.. run function internal:world/general/managers/account
execute if score #world world_tick matches 0 run function internal:world/general/managers/combat
execute if score #world world_tick matches 1.. run function internal:world/general/managers/conversation
execute if score #world world_tick matches 0.. run function internal:world/general/managers/area_trigger
execute if score #world world_tick matches 0.. run function internal:world/general/managers/player
execute if score #world world_tick matches 0.. run function internal:world/general/managers/creature
execute if score #world world_tick matches 0.. run function internal:world/general/managers/object
execute if score #world world_tick matches 1.. run function internal:world/general/managers/combat_log
execute if score #world world_tick matches 19 run function internal:world/general/managers/advancements
execute if score #world world_tick matches 0 run function internal:world/general/managers/spells
execute if score #world world_tick matches 0.. run function internal:world/general/managers/quests
execute if score #world world_tick matches 0.. run function internal:world/general/managers/movement
execute if score #world world_tick matches 0.. run function internal:world/general/managers/transport
execute if score #world world_tick matches 1 run function internal:world/general/managers/weather
#
# @VMAPS
execute if score #world world_tick matches 0.. run function internal:common/collision/vmaps_mgr
#
# @SCRIPTS
execute if score #world world_tick matches 0.. run function internal:scripts/world/world_script_loader