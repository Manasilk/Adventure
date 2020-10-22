execute if entity @s[tag=world_builder.show_info] run function developer:world_builder/actions/show_info/show_entity_info
execute at @s[tag=world_builder.update_npc] run function developer:world_builder/actions/update_entity/update_entity
execute if entity @s[tag=world_builder.despawn_npc] run function developer:world_builder/actions/update_entity/despawn