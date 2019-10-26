scoreboard players operation @s start.x = #dbc.temp start.x
scoreboard players operation @s start.y = #dbc.temp start.y
scoreboard players operation @s start.z = #dbc.temp start.z
scoreboard players operation @s end.x = #dbc.temp end.x
scoreboard players operation @s end.y = #dbc.temp end.y
scoreboard players operation @s end.z = #dbc.temp end.z

scoreboard players operation @s iterator.x = @s start.x
scoreboard players operation @s iterator.y = @s start.y
scoreboard players operation @s iterator.z = @s start.z

scoreboard players reset #dbc.temp start.x
scoreboard players reset #dbc.temp start.y
scoreboard players reset #dbc.temp start.z
scoreboard players reset #dbc.temp end.x
scoreboard players reset #dbc.temp end.y
scoreboard players reset #dbc.temp end.z
tag @s add _e.initialized_data