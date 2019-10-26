execute align xyz run teleport @s ~0.5 ~ ~0.5
execute store result score #dbc.temp end.x run data get entity @s Pos[0] 1
execute store result score #dbc.temp end.y run data get entity @s Pos[1] 1
execute store result score #dbc.temp end.z run data get entity @s Pos[2] 1
scoreboard players reset @s wb_struct_itr