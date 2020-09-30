scoreboard players operation @s quest_id -= #temp TEMP
tag @s[scores={quest_id=0}] add ENTITY_FLAG_TARGET
scoreboard players add @s[tag=ENTITY_FLAG_TARGET] task_pobj_count 1