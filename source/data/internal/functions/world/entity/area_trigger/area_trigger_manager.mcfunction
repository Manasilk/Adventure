execute unless entity @s[tag=area_trigger.initialized_spawn_data] run function internal:world/entity/area_trigger/initialize_spawn_data

execute if entity @s[tag=TEMP_BUILDER_OBJECT] run function builder:actions_list/spawn_object/this.object_list
execute if entity @s[tag=ENTITY_FLAG_EXTRA_OBJECT_BIND,tag=world_builder.despawn_gob] run function builder:actions_list/spawn_object/destructor_list/this.get_object

execute if entity @s[tag=world_builder.show_info] run function builder:actions_list/show_info/this.show_entity_data