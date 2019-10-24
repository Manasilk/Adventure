execute if score @s wb_biome_id = #dbc.enum BIOME_FOREST run function builder:actions_list/spawn_object/destructor_list/structure/farmlands/farmlands_forest
execute if score @s wb_biome_id = #dbc.enum BIOME_JUNGLE run function builder:actions_list/spawn_object/destructor_list/structure/farmlands/farmlands_jungle
execute if score @s wb_biome_id = #dbc.enum BIOME_DESERT run function builder:actions_list/spawn_object/destructor_list/structure/farmlands/farmlands_desert
execute if score @s wb_biome_id = #dbc.enum BIOME_TUNDRA run function builder:actions_list/spawn_object/destructor_list/structure/farmlands/farmlands_tundra
execute if score @s wb_biome_id = #dbc.enum BIOME_SAVANNAH run function builder:actions_list/spawn_object/destructor_list/structure/farmlands/farmlands_savannah

setblock ~ ~1 ~ minecraft:redstone_block replace
fill ~ ~ ~ ~ ~1 ~ minecraft:air
kill @e[type=minecraft:item,distance=0..32]
kill @s