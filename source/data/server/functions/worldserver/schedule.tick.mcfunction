#
# @ANTICHEAT
function server:game/world/managers/fairbox_mgr
#
# @BUILDER
function server:game/world/managers/builder_mgr
# 
# @SCHEDULER
scoreboard players add #dbc.server tick_upd_t 1
scoreboard players add #dbc.gc gc_upd_t 1

execute if score #dbc.server tick_upd_t > #const UPD_CYCLE run scoreboard players set #dbc.server tick_upd_t 0
execute if score #dbc.gc gc_upd_t > #const UPD_CYCLE run scoreboard players set #dbc.gc gc_upd_t 0
#
# @AI
execute if score #dbc.server tick_upd_t matches 0.. run function server:game/ai/creature_ai
#
# @MANAGERS
execute if score #dbc.server tick_upd_t matches 0.. run function server:game/world/world
execute if score #dbc.server tick_upd_t matches 0.. run function server:game/world/managers/account_mgr
execute if score #dbc.server tick_upd_t matches 0 run function server:game/world/managers/combat_mgr
execute if score #dbc.server tick_upd_t matches 0.. run function server:game/world/managers/chat_mgr
execute if score #dbc.server tick_upd_t matches 1.. run function server:game/world/managers/conversation_mgr
execute if score #dbc.server tick_upd_t matches 0.. run function server:game/world/managers/area_trigger_mgr
execute if score #dbc.server tick_upd_t matches 0.. run function server:game/world/managers/player_mgr
execute if score #dbc.server tick_upd_t matches 0.. run function server:game/world/managers/entity_mgr
execute if score #dbc.server tick_upd_t matches 0.. run function server:game/world/managers/object_mgr
execute if score #dbc.server tick_upd_t matches 1.. run function server:game/world/managers/combat_log_mgr
execute if score #dbc.server tick_upd_t matches 0 run function server:game/world/managers/spells_mgr
execute if score #dbc.server tick_upd_t matches 0.. run function server:game/world/managers/quests_mgr
execute if score #dbc.server tick_upd_t matches 0.. run function server:game/world/managers/movement_mgr
execute if score #dbc.server tick_upd_t matches 0.. run function server:game/world/managers/transport_mgr
execute if score #dbc.server tick_upd_t matches 1 run function server:game/world/managers/weather_mgr
#
# @VMAPS
execute if score #dbc.server tick_upd_t matches 0.. run function common:collision/vmaps/vmaps_mgr
#
# @SCRIPTS
execute if score #dbc.server tick_upd_t matches 0.. run function server:scripts/world/world_script_loader
#
# @TRIM
execute as @a[limit=1] if score #dbc.server trim_stat = #bool true run function server:worldserver/load/trim_shared
scoreboard players operation #dbc.server TEMP = #dbc.server world_version
execute if score #dbc.server world_version = #dbc.server TEMP as @a[limit=1] run function server:worldserver/update_dataversion