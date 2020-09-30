scoreboard players operation @e[type=#internal:area_trigger,tag=TEMP_BUILDER_OBJECT,dx=-1.0,dz=-1.0,sort=nearest,limit=1] wb.biome_id = @s wb.biome_id
scoreboard players operation @e[type=#internal:area_trigger,tag=TEMP_BUILDER_OBJECT,dx=-1.0,dz=-1.0,sort=nearest,limit=1] wb.gob_type = @s wb.gob_type
scoreboard players operation @e[type=#internal:area_trigger,tag=TEMP_BUILDER_OBJECT,dx=-1.0,dz=-1.0,sort=nearest,limit=1] wb.gob_id = @s wb.gob_id
scoreboard players operation @e[type=#internal:area_trigger,tag=TEMP_BUILDER_OBJECT,dx=-1.0,dz=-1.0,sort=nearest,limit=1] owner_id = @s owner_id

execute store result score @e[type=#internal:area_trigger,tag=TEMP_BUILDER_OBJECT,dx=-1.0,dz=-1.0,sort=nearest,limit=1] wb.pos_x run data get entity @s Pos[0] 1
execute store result score @e[type=#internal:area_trigger,tag=TEMP_BUILDER_OBJECT,dx=-1.0,dz=-1.0,sort=nearest,limit=1] wb.pos_y run data get entity @s Pos[1] 1
execute store result score @e[type=#internal:area_trigger,tag=TEMP_BUILDER_OBJECT,dx=-1.0,dz=-1.0,sort=nearest,limit=1] wb.pos_z run data get entity @s Pos[2] 1

scoreboard players set @e[type=#internal:area_trigger,tag=TEMP_BUILDER_OBJECT,dx=-1.0,dz=-1.0,sort=nearest,limit=1] wb.struct_itr 0

execute if entity @s[tag=world_builder.spawn_object] run tag @e[type=#internal:area_trigger,tag=TEMP_BUILDER_OBJECT,dx=-1.0,dz=-1.0,limit=1] add world_builder.spawn_object
execute if entity @s[tag=world_builder.despawn_object] run tag @e[type=#internal:area_trigger,tag=TEMP_BUILDER_OBJECT,dx=-1.0,dz=-1.0,limit=1] add world_builder.despawn_object

execute if entity @s[tag=FACING_NORTH] run tag @e[type=#internal:area_trigger,tag=TEMP_BUILDER_OBJECT,dx=-1.0,dz=-1.0,limit=1] add FACING_NORTH
execute if entity @s[tag=FACING_SOUTH] run tag @e[type=#internal:area_trigger,tag=TEMP_BUILDER_OBJECT,dx=-1.0,dz=-1.0,limit=1] add FACING_SOUTH
execute if entity @s[tag=FACING_EAST] run tag @e[type=#internal:area_trigger,tag=TEMP_BUILDER_OBJECT,dx=-1.0,dz=-1.0,limit=1] add FACING_EAST
execute if entity @s[tag=FACING_WEST] run tag @e[type=#internal:area_trigger,tag=TEMP_BUILDER_OBJECT,dx=-1.0,dz=-1.0,limit=1] add FACING_WEST