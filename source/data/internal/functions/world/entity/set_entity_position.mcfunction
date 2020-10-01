execute store result entity @s Pos[0] double 1 run scoreboard players get #temp x
execute store result entity @s Pos[1] double 1 run scoreboard players get #temp y
execute store result entity @s Pos[2] double 1 run scoreboard players get #temp z

scoreboard players reset #temp x
scoreboard players reset #temp y
scoreboard players reset #temp z