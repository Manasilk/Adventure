scoreboard players set @s[tag=!_e.get_initial_spawn] entity_upd_t 59
tag @s[tag=!_e.get_initial_spawn] add _e.get_initial_spawn

function server:game/time/update_respawn

function server:game/quests/get_quest_status
execute if score @s task_pobj_count >= @s task_objectives run scoreboard players set @s quest_status 1
execute if score @s quest_status = #dbc.enum QUEST_COMPLETE run function server:game/quests/get_reward_target