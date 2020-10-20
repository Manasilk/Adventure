scoreboard players operation @s[tag=!area_trigger.summon_initial_quest_targets] entity_tick = #world cfg.quest_t
tag @s[tag=!area_trigger.summon_initial_quest_targets] add area_trigger.summon_initial_quest_targets

execute unless entity @e[type=minecraft:item,tag=REQ_QUEST_TARGET,distance=0..31.999] run tag @s add area_trigger.summon_quest_target
execute if score @s[tag=area_trigger.summon_quest_target] entity_tick = #world cfg.quest_t run function internal:scripts/quests/item_spawn/get_spawn_list
execute if entity @s run function internal:world/general/time/update_respawn

function internal:world/quests/get_quest_status
execute if score @s task_pobj_count >= @s task_objectives run scoreboard players set @s quest_status 1
execute if score @s quest_status = #preset QUEST_COMPLETE run function internal:world/quests/get_reward_target