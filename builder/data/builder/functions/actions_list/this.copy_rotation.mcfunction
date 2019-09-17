execute store result entity @s Rotation[0] float 1 run scoreboard players get @s wb_rot.x
execute store result entity @s Rotation[1] float 1 run scoreboard players get @s wb_rot.y
scoreboard players reset @s wb_rot.x
scoreboard players reset @s wb_rot.y
tag @s remove _e.wb_update_npc
tag @a[tag=_e.wb_update_npc] remove _e.wb_update_npc