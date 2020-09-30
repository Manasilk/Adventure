scoreboard players operation @s start.x = #temp start.x
scoreboard players operation @s start.y = #temp start.y
scoreboard players operation @s start.z = #temp start.z
scoreboard players operation @s end.x = #temp end.x
scoreboard players operation @s end.y = #temp end.y
scoreboard players operation @s end.z = #temp end.z

scoreboard players operation @s iterator.x = @s start.x
scoreboard players operation @s iterator.y = @s start.y
scoreboard players operation @s iterator.z = @s start.z

scoreboard players reset #temp start.x
scoreboard players reset #temp start.y
scoreboard players reset #temp start.z
scoreboard players reset #temp end.x
scoreboard players reset #temp end.y
scoreboard players reset #temp end.z
tag @s add area_trigger.initialized_spawn_data