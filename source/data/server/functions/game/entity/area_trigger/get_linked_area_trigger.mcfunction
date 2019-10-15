#clear all existing targets from our distance area
execute if entity @s[tag=QUEST_OBJECTIVE_TRIGGER] run tag @a[tag=ENTITY_FLAG_QUEST_TARGET,distance=0..3.999] remove ENTITY_FLAG_QUEST_TARGET
execute if entity @s[tag=QUEST_OBJECTIVE_TALK_TO] run tag @a[tag=ENTITY_FLAG_QUEST_TARGET,distance=0..5.999] remove ENTITY_FLAG_QUEST_TARGET

#get link owner
scoreboard players operation #dbc.temp TEMP = @s quest_id
execute positioned 0 0 0 as @e[type=#server:area_trigger,tag=AREA_TRIGGER_QUEST_LINK,distance=0..1.000] if score @s quest_id = #dbc.temp TEMP run tag @s add _e.get_linked_to
scoreboard players operation #dbc.temp TEMP = @s owner_id
execute positioned 0 0 0 as @e[type=#server:area_trigger,tag=_e.get_linked_to,distance=0..1.000] if score @s owner_id = #dbc.temp TEMP run tag @s add _e.get_owned_by

execute positioned 0 0 0 run scoreboard players add @e[type=#server:area_trigger,tag=_e.get_owned_by,distance=0..1.000,limit=1] task_pobj_count 1
execute positioned 0 0 0 if entity @e[type=#server:area_trigger,tag=_e.get_owned_by,distance=0..1.000,limit=1] run kill @s
scoreboard players set #dbc.temp TEMP 0