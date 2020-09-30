#clear all existing targets from our distance area
execute if entity @s[tag=QUEST_OBJECTIVE_TRIGGER] run tag @a[tag=ENTITY_FLAG_QUEST_TARGET,distance=0..3.999] remove ENTITY_FLAG_QUEST_TARGET
execute if entity @s[tag=QUEST_OBJECTIVE_TALK_TO] run tag @a[tag=ENTITY_FLAG_QUEST_TARGET,distance=0..5.999] remove ENTITY_FLAG_QUEST_TARGET

#get link owner
scoreboard players operation #temp TEMP = @s quest_id
execute positioned 0 0 0 as @e[type=#internal:area_trigger,tag=AREA_TRIGGER_QUEST_LINK,distance=0..1.000] if score @s quest_id = #temp TEMP run tag @s add area_trigger.linked_to_quest
scoreboard players operation #temp TEMP = @s owner_id
execute positioned 0 0 0 as @e[type=#internal:area_trigger,tag=area_trigger.linked_to_quest,distance=0..1.000] if score @s owner_id = #temp TEMP run tag @s add area_trigger.linked_to_owner

execute positioned 0 0 0 run scoreboard players add @e[type=#internal:area_trigger,tag=area_trigger.linked_to_owner,distance=0..1.000,limit=1] task_pobj_count 1
execute positioned 0 0 0 if entity @e[type=#internal:area_trigger,tag=area_trigger.linked_to_owner,distance=0..1.000,limit=1] run kill @s
scoreboard players set #temp TEMP 0