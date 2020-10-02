#
# @ANTICHEAT
function internal:world/general/managers/anticheat
#
# @BUILDER
function internal:world/general/managers/world_builder
# 
# @SCHEDULER
scoreboard players add #world world_tick 1
scoreboard players add #garbage garbage_tick 1

execute if score #world world_tick > #const UPD_CYCLE run scoreboard players set #world world_tick 0
execute if score #garbage garbage_tick > #const UPD_CYCLE run scoreboard players set #garbage garbage_tick 0
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
execute if score #world world_tick matches 20 run function internal:world/general/managers/advancements
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
#
# @TRIM
#execute as @a[limit=1] if score #world trim_stat matches 1 run function internal:worldserver/load/trim_shared
#scoreboard players operation #world TEMP = #world world_version
#execute if score #world world_version = #world TEMP as @a[limit=1] run function internal:worldserver/update_dataversion