execute if score @s wb_biome_id >= #dbc.enum BIOME_NETHER run function server:game/entity/area_trigger/get_player_owner

execute if score @s[tag=!_e.error_biome_invalid] wb_biome_id = #dbc.enum BIOME_FOREST run function builder:actions_list/spawn_object/object_list/structure/pillager_outpost/pillager_outpost_forest
execute if score @s[tag=!_e.error_biome_invalid] wb_biome_id = #dbc.enum BIOME_JUNGLE run function builder:actions_list/spawn_object/object_list/structure/pillager_outpost/pillager_outpost_jungle
execute if score @s[tag=!_e.error_biome_invalid] wb_biome_id = #dbc.enum BIOME_DESERT run function builder:actions_list/spawn_object/object_list/structure/pillager_outpost/pillager_outpost_desert
execute if score @s[tag=!_e.error_biome_invalid] wb_biome_id = #dbc.enum BIOME_MESA run function builder:actions_list/spawn_object/object_list/structure/pillager_outpost/pillager_outpost_mesa
execute if score @s[tag=!_e.error_biome_invalid] wb_biome_id = #dbc.enum BIOME_TUNDRA run function builder:actions_list/spawn_object/object_list/structure/pillager_outpost/pillager_outpost_tundra