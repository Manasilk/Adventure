scoreboard players operation @s wb_biome_id = @e[type=#server:area_trigger,tag=TEMP_BUILDER_OBJECT,distance=0..0.001,limit=1] wb_biome_id
scoreboard players operation @s wb_gob_type = @e[type=#server:area_trigger,tag=TEMP_BUILDER_OBJECT,distance=0..0.001,limit=1] wb_gob_type
scoreboard players operation @s wb_gob_id = @e[type=#server:area_trigger,tag=TEMP_BUILDER_OBJECT,distance=0..0.001,limit=1] wb_gob_id
scoreboard players operation @s owner_id = @e[type=#server:area_trigger,tag=TEMP_BUILDER_OBJECT,distance=0..0.001,limit=1] owner_id

execute if entity @e[type=#server:area_trigger,tag=TEMP_BUILDER_OBJECT,tag=FACING_NORTH,distance=0..0.001] run tag @s add FACING_NORTH
execute if entity @e[type=#server:area_trigger,tag=TEMP_BUILDER_OBJECT,tag=FACING_SOUTH,distance=0..0.001] run tag @s add FACING_SOUTH
execute if entity @e[type=#server:area_trigger,tag=TEMP_BUILDER_OBJECT,tag=FACING_EAST,distance=0..0.001] run tag @s add FACING_EAST
execute if entity @e[type=#server:area_trigger,tag=TEMP_BUILDER_OBJECT,tag=FACING_WEST,distance=0..0.001] run tag @s add FACING_WEST

scoreboard players add #dbc.object entity_guid 1
scoreboard players operation @s entity_guid = #dbc.object entity_guid

execute store result score @s wb_pos.x run data get entity @s Pos[0] 1
execute store result score @s wb_pos.y run data get entity @s Pos[1] 1
execute store result score @s wb_pos.z run data get entity @s Pos[2] 1

tag @s add _e.initialized_data