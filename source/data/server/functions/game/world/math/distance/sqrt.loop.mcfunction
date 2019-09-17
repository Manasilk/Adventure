scoreboard players operation @s root_x += @s root_i
scoreboard players add @s distance 1
scoreboard players add @s root_i 2
execute if score @s TEMP > @s root_x run function server:game/math/marker/sqrt.loop