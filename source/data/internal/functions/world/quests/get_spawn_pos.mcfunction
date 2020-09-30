execute store result entity @s Pos[0] double 0.1 run scoreboard players get #world world_spawn.x
execute store result entity @s Pos[1] double 0.1 run scoreboard players get #world world_spawn.y
execute store result entity @s Pos[2] double 0.1 run scoreboard players get #world world_spawn.z
tag @s remove _e.get_spawn_pos
tag @s remove _e.check_def_pos