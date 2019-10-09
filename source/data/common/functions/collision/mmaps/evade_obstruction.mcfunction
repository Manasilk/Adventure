tag @s[tag=!_e.initialize_check,y_rotation=135.0..-134.9] add FACING_NORTH
tag @s[tag=!_e.initialize_check,y_rotation=-44.9..44.9] add FACING_SOUTH
tag @s[tag=!_e.initialize_check,y_rotation=-135.0..-45.0] add FACING_EAST
tag @s[tag=!_e.initialize_check,y_rotation=45.0..134.9] add FACING_WEST
tag @s[tag=!_e.initialize_check] add _e.initialize_check
tag @s[tag=_e.set_mov_axis_x] remove _e.set_mov_axis_x


execute if entity @s[tag=FACING_NORTH] run function common:collision/mmaps/axes/axis_x
execute if entity @s[tag=FACING_SOUTH] run function common:collision/mmaps/axes/axis_x
execute unless entity @s[tag=_e.set_mov_axis_x] run function common:collision/mmaps/axes/axis_z
execute unless blocks ^ ^ ^ ^ ^1 ^1 0 255 0 all run function common:collision/mmaps/axes/axis_y