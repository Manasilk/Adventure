execute unless entity @s[tag=_e.initialized_entry] run function server:game/entity/area_trigger/this.initialize

execute if entity @s[tag=TEMP_BUILDER_OBJECT] run function builder:actions_list/spawn_object/this.object_list
execute if entity @s[tag=ENTITY_FLAG_EXTRA_OBJECT_BIND,tag=_h.wb_despawn_gob] run function builder:actions_list/spawn_object/destructor_list/this.get_object

execute if entity @s[tag=_h.wb_show_info] run function builder:actions_list/show_info/this.show_entity_data