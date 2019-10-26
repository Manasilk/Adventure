execute unless score @s iterator.y = @s end.y run function common:collision/vmaps/iterate_y

scoreboard players operation @s iterator.y = @s start.y
execute store result entity @s Pos[1] double 1 run scoreboard players get @s start.y
execute if score @s iterator.z > @s end.z run scoreboard players remove @s iterator.z 1
execute if score @s iterator.z < @s end.z run scoreboard players add @s iterator.z 1
execute at @s if score @s iterator.z > @s end.z run teleport @s ~ ~ ~-1
execute at @s if score @s iterator.z < @s end.z run teleport @s ~ ~ ~1
execute at @s if score @s iterator.z > @s end.z run function common:collision/vmaps/iterate_z
execute at @s if score @s iterator.z < @s end.z run function common:collision/vmaps/iterate_z