execute if entity @s[tag=TEMP_BUILDER_OBJECT] run function developer:world_builder/actions/spawn_object/object_list
execute if entity @s[tag=ENTITY_FLAG_EXTRA_OBJECT_BIND,tag=world_builder.despawn_object] run function developer:world_builder/actions/spawn_object/destructor_list/get_object

execute if entity @s[tag=world_builder.show_info] run function developer:world_builder/actions/show_info/show_entity_info