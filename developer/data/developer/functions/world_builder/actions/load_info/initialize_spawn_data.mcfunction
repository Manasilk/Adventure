scoreboard players operation @s wb.class_id = @a[tag=collision.attempt_line_of_sight_collision,distance=0..0.001,sort=nearest,limit=1] wb.class_id
scoreboard players operation @s[scores={wb.class_id=1..2}] wb.type_id = @a[tag=collision.attempt_line_of_sight_collision,distance=0..0.001,sort=nearest,limit=1] wb.type_id
scoreboard players operation @s[scores={wb.type_id=1}] wb.option_id = @a[tag=collision.attempt_line_of_sight_collision,distance=0..0.001,sort=nearest,limit=1] wb.option_id
scoreboard players operation @s[scores={wb.class_id=1,wb.type_id=2}] wb.npc_id = @a[tag=collision.attempt_line_of_sight_collision,distance=0..0.001,sort=nearest,limit=1] wb.npc_id
scoreboard players operation @s[scores={wb.class_id=2,wb.type_id=2}] wb.biome_id = @a[tag=collision.attempt_line_of_sight_collision,distance=0..0.001,sort=nearest,limit=1] wb.biome_id
scoreboard players operation @s[scores={wb.class_id=2,wb.type_id=2}] wb.gob_type = @a[tag=collision.attempt_line_of_sight_collision,distance=0..0.001,sort=nearest,limit=1] wb.gob_type
scoreboard players operation @s[scores={wb.class_id=2,wb.type_id=2}] wb.gob_id = @a[tag=collision.attempt_line_of_sight_collision,distance=0..0.001,sort=nearest,limit=1] wb.gob_id
scoreboard players operation @s[scores={wb.class_id=2,wb.type_id=2}] owner_id = @a[tag=collision.attempt_line_of_sight_collision,distance=0..0.001,sort=nearest,limit=1] player_id

execute if entity @a[tag=collision.attempt_line_of_sight_collision,distance=0..0.001,y_rotation=135.0..-134.9] run tag @s add FACING_NORTH
execute if entity @a[tag=collision.attempt_line_of_sight_collision,distance=0..0.001,y_rotation=-44.9..44.9] run tag @s add FACING_SOUTH
execute if entity @a[tag=collision.attempt_line_of_sight_collision,distance=0..0.001,y_rotation=-135.0..-45.0] run tag @s add FACING_EAST
execute if entity @a[tag=collision.attempt_line_of_sight_collision,distance=0..0.001,y_rotation=45.0..134.9] run tag @s add FACING_WEST

tag @s[scores={wb.class_id=1,wb.type_id=1}] add world_builder.update_creature
tag @s[scores={wb.class_id=1,wb.type_id=2}] add world_builder.spawn_creature
tag @s[scores={wb.class_id=2,wb.type_id=2}] add world_builder.spawn_object
tag @s[scores={wb.class_id=1,wb.type_id=3}] add world_builder.despawn_creature
tag @s[scores={wb.class_id=2,wb.type_id=3}] add world_builder.despawn_object
tag @s[scores={wb.class_id=3}] add world_builder.show_info

execute if entity @s[tag=world_builder.update_npc] run function developer:world_builder/load_info/get_position
execute if entity @s[tag=world_builder.update_npc] run function developer:world_builder/load_info/get_rotation

execute store result entity @s Rotation[0] float 1 run scoreboard players get #temp entity.rot_x
execute store result entity @s Rotation[1] float 1 run scoreboard players get #temp entity.rot_y
function internal:common/collision/flush_temp_data

scoreboard players set @s has_collided 0
tag @s add area_trigger.initialized_spawn_data