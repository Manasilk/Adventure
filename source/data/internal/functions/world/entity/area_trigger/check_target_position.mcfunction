execute store result entity @s Pos[0] double 1 run scoreboard players get #temp map_pos.x
execute store result entity @s Pos[1] double 1 run scoreboard players get #temp map_pos.y
execute store result entity @s Pos[2] double 1 run scoreboard players get #temp map_pos.z
execute at @s align xyz run teleport @s ~0.5 ~ ~0.5
execute at @s if block ~ ~ ~ #internal:collision/vmap if block ~ ~1 ~ #internal:collision/vmap run tag @s add area_trigger.target_position_ok