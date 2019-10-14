scoreboard players reset @s quest_triggers
scoreboard players enable @s quest_triggers
tag @s add _e.get_entity_count

execute as @e[type=#server:area_trigger,tag=ENTITY_FLAG_QUEST_TRIGGER] run tellraw @a[tag=rbac.debugging,tag=_e.get_entity_count] {"text":"PRINT"}
tag @s remove _e.get_entity_count