scoreboard players operation #dbc.temp entity_rot.x += #MATH TURN_180
scoreboard players set #dbc.temp entity_rot.y 0
execute store result entity @s Rotation[0] float 1 run scoreboard players get #dbc.temp entity_rot.x
execute store result entity @s Rotation[1] float 1 run scoreboard players get #dbc.temp entity_rot.y
scoreboard players reset #dbc.temp entity_rot.x
scoreboard players reset #dbc.temp entity_rot.y

tag @s add _e.get_fleeing_rotation