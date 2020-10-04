execute if entity @s[tag=world_builder.spawn_object,tag=!world_builder.prepare_object,scores={wb.struct_itr=0}] run function developer:world_builder/actions/spawn_object/object_list/get_object
execute if entity @s[tag=world_builder.spawn_object,tag=world_builder.prepare_object,scores={wb.struct_itr=1}] run function developer:world_builder/actions/spawn_object/update_structure_block

scoreboard players add @s entity_tick 1
execute if score @s entity_tick matches 199.. run function developer:world_builder/actions/spawn_object/clear_region_template