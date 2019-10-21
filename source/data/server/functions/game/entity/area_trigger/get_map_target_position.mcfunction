execute store result entity @s Pos[0] double 1 run scoreboard players get #dbc.temp map_pos.x
execute store result entity @s Pos[1] double 1 run scoreboard players get #dbc.temp map_pos.y
execute store result entity @s Pos[2] double 1 run scoreboard players get #dbc.temp map_pos.z
execute unless block ~ ~ ~ #server:collision/vmap unless block ~ ~1 ~ #server:collision/vmap run kill @s
tag @s add _h.pos_spawn_valid