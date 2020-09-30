execute if score @s wb.biome_id >= #preset BIOME_NETHER run function internal:world/entity/area_trigger/get_player_owner

execute if score @s wb.biome_id = #preset BIOME_FOREST run function developer:world_builder/actions/spawn_object/object_list/structure/pillager_outpost/pillager_outpost_forest
execute if score @s wb.biome_id = #preset BIOME_JUNGLE run function developer:world_builder/actions/spawn_object/object_list/structure/pillager_outpost/pillager_outpost_jungle
execute if score @s wb.biome_id = #preset BIOME_DESERT run function developer:world_builder/actions/spawn_object/object_list/structure/pillager_outpost/pillager_outpost_desert
execute if score @s wb.biome_id = #preset BIOME_MESA run function developer:world_builder/actions/spawn_object/object_list/structure/pillager_outpost/pillager_outpost_mesa
execute if score @s wb.biome_id = #preset BIOME_TUNDRA run function developer:world_builder/actions/spawn_object/object_list/structure/pillager_outpost/pillager_outpost_tundra