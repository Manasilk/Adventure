scoreboard players set @s root_i 1
scoreboard players set @s root_x 0
scoreboard players set @s distance 0
execute if score @s TEMP > @s root_x run function server:game/math/marker/sqrt.loop