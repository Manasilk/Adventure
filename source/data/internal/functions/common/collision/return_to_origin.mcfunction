execute store result entity @s Pos[0] double 1 run scoreboard players get @s start.x
execute store result entity @s Pos[1] double 1 run scoreboard players get @s start.y
execute store result entity @s Pos[2] double 1 run scoreboard players get @s start.z
scoreboard players operation @s iterator.x = @s start.x
scoreboard players operation @s iterator.y = @s start.y
scoreboard players operation @s iterator.z = @s start.z