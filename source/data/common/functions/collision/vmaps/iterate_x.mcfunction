function common:collision/vmaps/check_condition
#function common:debugging/info/scan_data

execute if score @s iterator.x > @s end.x run scoreboard players remove @s iterator.x 1
execute if score @s iterator.x < @s end.x run scoreboard players add @s iterator.x 1
execute if score @s iterator.x > @s end.x positioned ~-1 ~ ~ run function common:collision/vmaps/iterate_x
execute if score @s iterator.x < @s end.x positioned ~1 ~ ~ run function common:collision/vmaps/iterate_x