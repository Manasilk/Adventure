scoreboard players operation #dbc.temp TEMP = @s owner_id
execute positioned 0 0 0 as @e[type=#server:area_trigger,tag=ENTITY_FLAG_QUEST_TRIGGER,distance=0..1.000] if score @s owner_id = #dbc.temp TEMP run tag @s add _e.get_owned_by
scoreboard players operation #dbc.temp TEMP = @s quest_id
execute positioned 0 0 0 as @e[type=#server:area_trigger,tag=_e.get_owned_by,distance=0..1.000,limit=1] if score @s quest_id = #dbc.temp TEMP run tag @s add _e.get_linked_to

execute positioned 0 0 0 run scoreboard players add @e[type=#server:area_trigger,tag=_e.get_linked_to,distance=0..1.000,limit=1] task_pobj_count 1
execute positioned 0 0 0 if entity @e[type=#server:area_trigger,tag=_e.get_linked_to,distance=0..1.000,limit=1] run kill @s
scoreboard players set #dbc.temp TEMP 0