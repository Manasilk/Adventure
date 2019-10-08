scoreboard players operation @s wb_class_id = @p[tag=_e.find_los_target,distance=0..1.001] wb_class_id
scoreboard players operation @s[scores={wb_class_id=1..2}] wb_class_type = @p[tag=_e.find_los_target,distance=0..1.001] wb_class_type
scoreboard players operation @s[scores={wb_class_type=1}] wb_option_id = @p[tag=_e.find_los_target,distance=0..1.001] wb_option_id
scoreboard players operation @s[scores={wb_class_id=1,wb_class_type=2}] wb_npc_id = @p[tag=_e.find_los_target,distance=0..0.001] wb_npc_id
scoreboard players operation @s[scores={wb_class_id=2,wb_class_type=2}] wb_biome_id = @p[tag=_e.find_los_target,distance=0..0.001] wb_biome_id
scoreboard players operation @s[scores={wb_class_id=2,wb_class_type=2}] wb_gob_type = @p[tag=_e.find_los_target,distance=0..0.001] wb_gob_type
scoreboard players operation @s[scores={wb_class_id=2,wb_class_type=2}] wb_gob_id = @p[tag=_e.find_los_target,distance=0..0.001] wb_gob_id

execute if entity @p[tag=_e.find_los_target,distance=0..0.001,y_rotation=135.0..-134.9] run tag @s add FACING_NORTH
execute if entity @p[tag=_e.find_los_target,distance=0..0.001,y_rotation=-44.9..44.9] run tag @s add FACING_SOUTH
execute if entity @p[tag=_e.find_los_target,distance=0..0.001,y_rotation=-135.0..-45.0] run tag @s add FACING_EAST
execute if entity @p[tag=_e.find_los_target,distance=0..0.001,y_rotation=45.0..134.9] run tag @s add FACING_WEST

tag @s[scores={wb_class_id=1,wb_class_type=1}] add _h.wb_update_npc
tag @s[scores={wb_class_id=1,wb_class_type=2}] add _h.wb_spawn_npc
tag @s[scores={wb_class_id=2,wb_class_type=2}] add _h.wb_spawn_gob
tag @s[scores={wb_class_id=1,wb_class_type=3}] add _h.wb_despawn_npc
tag @s[scores={wb_class_id=2,wb_class_type=3}] add _h.wb_despawn_gob
tag @s[scores={wb_class_id=3}] add _h.wb_show_info

execute if entity @s[tag=_h.wb_update_npc] run function builder:actions_list/load_info/this.get_position
execute if entity @s[tag=_h.wb_update_npc] run function builder:actions_list/load_info/this.get_rotation

execute store result entity @s Rotation[0] float 1 run scoreboard players get #dbc.temp entity_rot.x
execute store result entity @s Rotation[1] float 1 run scoreboard players get #dbc.temp entity_rot.y
function common:collision/vmaps/flush_temp_data

scoreboard players set @s _h.vmap_collide 0
tag @s add _e.initialize_data