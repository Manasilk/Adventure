execute if score @s wb.biome_id >= #preset BIOME_NETHER run function server:game/entity/area_trigger/get_player_owner

execute if score @s wb.biome_id = #preset BIOME_FOREST run function developer:world_builder/actions/spawn_object/object_list/structure/farmlands/farmlands_forest
execute if score @s wb.biome_id = #preset BIOME_JUNGLE run function developer:world_builder/actions/spawn_object/object_list/structure/farmlands/farmlands_jungle
execute if score @s wb.biome_id = #preset BIOME_DESERT run function developer:world_builder/actions/spawn_object/object_list/structure/farmlands/farmlands_desert
execute if score @s wb.biome_id = #preset BIOME_TUNDRA run function developer:world_builder/actions/spawn_object/object_list/structure/farmlands/farmlands_tundra
execute if score @s wb.biome_id = #preset BIOME_SAVANNAH run function developer:world_builder/actions/spawn_object/object_list/structure/farmlands/farmlands_savannah