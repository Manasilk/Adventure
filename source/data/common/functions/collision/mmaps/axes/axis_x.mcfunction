tag @s add _e.check_nearby_unoccupied
execute unless entity @s[tag=!_e.check_nearby_unoccupied,tag=FACING_NORTH] if block ~-1.0 ~ ~ #server:non_solid run data modify entity @s Rotation[0] set value 90.0f
execute unless entity @s[tag=!_e.check_nearby_unoccupied,tag=FACING_NORTH] if block ~-1.0 ~ ~ #server:non_solid run tag @s remove _e.check_nearby_unoccupied
execute unless entity @s[tag=!_e.check_nearby_unoccupied,tag=FACING_NORTH] if block ~-1.0 ~ ~ #server:non_solid run tag @s add _e.set_mov_axis_x
execute unless entity @s[tag=!_e.check_nearby_unoccupied,tag=FACING_NORTH] if block ~1.0 ~ ~ #server:non_solid run data modify entity @s Rotation[0] set value -90.0f
execute unless entity @s[tag=!_e.check_nearby_unoccupied,tag=FACING_NORTH] if block ~1.0 ~ ~ #server:non_solid run tag @s remove _e.check_nearby_unoccupied
execute unless entity @s[tag=!_e.check_nearby_unoccupied,tag=FACING_NORTH] if block ~1.0 ~ ~ #server:non_solid run tag @s add _e.set_mov_axis_x

execute unless entity @s[tag=!_e.check_nearby_unoccupied,tag=FACING_SOUTH] if block ~-1.0 ~ ~ #server:non_solid run data modify entity @s Rotation[0] set value 90.0f
execute unless entity @s[tag=!_e.check_nearby_unoccupied,tag=FACING_SOUTH] if block ~-1.0 ~ ~ #server:non_solid run tag @s remove _e.check_nearby_unoccupied
execute unless entity @s[tag=!_e.check_nearby_unoccupied,tag=FACING_SOUTH] if block ~-1.0 ~ ~ #server:non_solid run tag @s add _e.set_mov_axis_x
execute unless entity @s[tag=!_e.check_nearby_unoccupied,tag=FACING_SOUTH] if block ~1.0 ~ ~ #server:non_solid run data modify entity @s Rotation[0] set value -90.0f
execute unless entity @s[tag=!_e.check_nearby_unoccupied,tag=FACING_SOUTH] if block ~1.0 ~ ~ #server:non_solid run tag @s remove _e.check_nearby_unoccupied
execute unless entity @s[tag=!_e.check_nearby_unoccupied,tag=FACING_SOUTH] if block ~1.0 ~ ~ #server:non_solid run tag @s add _e.set_mov_axis_x

tag @s remove FACING_NORTH
tag @s remove FACING_SOUTH
tag @s add _e.set_mov_axis_x