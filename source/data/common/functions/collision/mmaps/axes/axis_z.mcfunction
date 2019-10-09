tag @s add _e.check_nearby_unoccupied
execute unless entity @s[tag=!_e.check_nearby_unoccupied,tag=FACING_WEST] if block ~ ~ ~-1.0 #server:non_solid run data modify entity @s Rotation[0] set value -180.0f
execute unless entity @s[tag=!_e.check_nearby_unoccupied,tag=FACING_WEST] if block ~ ~ ~-1.0 #server:non_solid run tag @s remove _e.check_nearby_unoccupied
execute unless entity @s[tag=!_e.check_nearby_unoccupied,tag=FACING_WEST] if block ~ ~ ~1.0 #server:non_solid run data modify entity @s Rotation[0] set value 0.0f
execute unless entity @s[tag=!_e.check_nearby_unoccupied,tag=FACING_WEST] if block ~ ~ ~1.0 #server:non_solid run tag @s remove _e.check_nearby_unoccupied

execute unless entity @s[tag=!_e.check_nearby_unoccupied,tag=FACING_EAST] if block ~ ~ ~-1.0 #server:non_solid run data modify entity @s Rotation[0] set value -180.0f
execute unless entity @s[tag=!_e.check_nearby_unoccupied,tag=FACING_EAST] if block ~ ~ ~-1.0 #server:non_solid run tag @s remove _e.check_nearby_unoccupied
execute unless entity @s[tag=!_e.check_nearby_unoccupied,tag=FACING_EAST] if block ~ ~ ~1.0 #server:non_solid run data modify entity @s Rotation[0] set value 0.0f
execute unless entity @s[tag=!_e.check_nearby_unoccupied,tag=FACING_EAST] if block ~ ~ ~1.0 #server:non_solid run tag @s remove _e.check_nearby_unoccupied

tag @s remove FACING_EAST
tag @s remove FACING_WEST