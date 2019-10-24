execute store result entity @s Pos[0] double 1 run scoreboard players get #dbc.temp map_pos.x
execute store result entity @s Pos[1] double 1 run scoreboard players get #dbc.temp map_pos.y
execute store result entity @s Pos[2] double 1 run scoreboard players get #dbc.temp map_pos.z
execute at @s align xyz run teleport @s ~0.5 ~ ~0.5
execute at @s if block ~ ~ ~ #server:collision/vmap if block ~ ~1 ~ #server:collision/vmap run tag @s add _h.pos_spawn_valid
kill @s[tag=!_h.pos_spawn_valid]