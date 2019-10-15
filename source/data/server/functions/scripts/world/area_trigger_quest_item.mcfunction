scoreboard players operation @s[tag=!_e.get_initial_spawn] entity_upd_t = #dbc.server cfg.quest_t
tag @s[tag=!_e.get_initial_spawn] add _e.get_initial_spawn

execute unless entity @e[type=minecraft:item,tag=REQ_QUEST_TARGET,distance=0..31.999] run tag @s add _e.get_spawn
execute if score @s[tag=_e.get_spawn] entity_upd_t = #dbc.server cfg.quest_t run function server:scripts/quests/item_spawn/get_spawn_list
execute if entity @s run function server:game/time/update_respawn

function server:game/quests/get_quest_status
execute if score @s task_pobj_count >= @s task_objectives run scoreboard players set @s quest_status 1
execute if score @s quest_status = #dbc.enum QUEST_COMPLETE run function server:game/quests/get_reward_target