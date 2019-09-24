execute if entity @s[type=#server:area_trigger,tag=TEMP_BUILDER_OBJECT] run function builder:actions_list/spawn_object/this.object_list
execute if entity @s[type=#server:area_trigger,tag=ENTITY_FLAG_OBJECT_HOST,tag=_h.wb_despawn_gob] run function builder:actions_list/spawn_object/destructor_list/this.get_object

execute if entity @s[tag=_h.wb_show_info] run function builder:actions_list/show_info/this.show_entity_data