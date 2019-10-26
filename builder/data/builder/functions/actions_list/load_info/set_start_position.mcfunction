execute align xyz run teleport @s ~0.5 ~ ~0.5
execute store result score #dbc.temp start.x run data get entity @s Pos[0] 1
execute store result score #dbc.temp start.y run data get entity @s Pos[1] 1
execute store result score #dbc.temp start.z run data get entity @s Pos[2] 1