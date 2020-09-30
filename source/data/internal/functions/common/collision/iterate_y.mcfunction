execute unless score @s iterator.x = @s end.x run function internal:common/collision/iterate_x

scoreboard players operation @s iterator.x = @s start.x
execute store result entity @s Pos[0] double 1 run scoreboard players get @s start.x
execute if score @s iterator.y > @s end.y run scoreboard players remove @s iterator.y 1
execute if score @s iterator.y < @s end.y run scoreboard players add @s iterator.y 1
execute if score @s iterator.y > @s end.y positioned ~ ~-1 ~ run function internal:common/collision/iterate_y
execute if score @s iterator.y < @s end.y positioned ~ ~1 ~ run function internal:common/collision/iterate_y