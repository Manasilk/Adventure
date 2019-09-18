#
# @ANTICHEAT
function fairbox:runtime/main
#
# @BUILDER
# WORK IN PROGRESS, DO NOT USE
execute as @a run function builder:builder_mgr
# @SCHEDULER
#
scoreboard players add #dbc.server tick_upd_t 1
scoreboard players add #dbc.gc gc_upd_t 1
#
# @TIMERS 
execute if score #dbc.server tick_upd_t > #const UPD_CYCLE run scoreboard players set #dbc.server tick_upd_t 0
execute if score #dbc.gc gc_upd_t > #const UPD_CYCLE run scoreboard players set #dbc.gc gc_upd_t 0
#
# @MANAGERS
execute if score #dbc.server tick_upd_t matches 0.. run function server:game/world/world
execute if score #dbc.server tick_upd_t matches 0.. run function server:game/world/managers/account_mgr
execute if score #dbc.server tick_upd_t matches 0 run function server:game/world/managers/combat_mgr
execute if score #dbc.server tick_upd_t matches 0.. run function server:game/world/managers/chat_mgr
execute if score #dbc.server tick_upd_t matches 0.. run function server:game/world/managers/area_trigger_mgr
execute if score #dbc.server tick_upd_t matches 0.. run function server:game/world/managers/player_mgr
execute if score #dbc.server tick_upd_t matches 0.. run function server:game/world/managers/entity_mgr
execute if score #dbc.server tick_upd_t matches 0.. run function server:game/world/managers/object_mgr
execute if score #dbc.server tick_upd_t matches 0 run function server:game/world/managers/spell_mgr
execute if score #dbc.server tick_upd_t matches 0.. run function server:game/world/managers/quests_mgr
execute if score #dbc.server tick_upd_t matches 0.. run function server:game/world/managers/movement_mgr
execute if score #dbc.server tick_upd_t matches 0.. run function server:game/world/managers/transport_mgr
execute if score #dbc.server tick_upd_t matches 1 run function server:game/world/managers/weather_mgr
#execute if score #dbc.server tick_upd_t matches 0.. run function server:game/world/managers/misc_mgr
#
# @AI
execute if score #dbc.server tick_upd_t matches 0.. run function server:game/ai/creature_ai
#
# @VMAPS
execute if score #dbc.server tick_upd_t matches 0.. run function common:collision/vmaps/vmaps_mgr