execute unless score @s iterator.y = @s end.y run function internal:common/collision/iterate_y

scoreboard players operation @s iterator.y = @s start.y
execute store result entity @s Pos[1] double 1 run scoreboard players get @s start.y
execute if score @s iterator.z > @s end.z run scoreboard players remove @s iterator.z 1
execute if score @s iterator.z < @s end.z run scoreboard players add @s iterator.z 1
execute if score @s iterator.z > @s end.z positioned ~ ~ ~-1 run function internal:common/collision/iterate_z
execute if score @s iterator.z < @s end.z positioned ~ ~ ~1 run function internal:common/collision/iterate_z