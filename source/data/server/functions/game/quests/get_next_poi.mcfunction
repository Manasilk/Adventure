scoreboard players operation #dbc.temp TEMP = @s quest_chat
execute as @e[type=minecraft:villager,tag=ENTITY_FLAG_QUEST_RELATION] if score @s entity_id = #dbc.temp TEMP run tag @s add _e.quest_objective_target
teleport @s @e[type=minecraft:villager,tag=_e.quest_objective_target,limit=1]
tag @e[type=minecraft:villager,tag=_e.quest_objective_target,distance=0..0.001,limit=1] remove _e.quest_objective_target
scoreboard players set #dbc.temp TEMP 0
tag @s add _e.get_next_poi