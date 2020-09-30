execute if score @s wb.biome_id = #preset BIOME_FOREST run function developer:world_builder/actions/spawn_object/destructor_list/structure/farmlands/farmlands_forest
execute if score @s wb.biome_id = #preset BIOME_JUNGLE run function developer:world_builder/actions/spawn_object/destructor_list/structure/farmlands/farmlands_jungle
execute if score @s wb.biome_id = #preset BIOME_DESERT run function developer:world_builder/actions/spawn_object/destructor_list/structure/farmlands/farmlands_desert
execute if score @s wb.biome_id = #preset BIOME_TUNDRA run function developer:world_builder/actions/spawn_object/destructor_list/structure/farmlands/farmlands_tundra
execute if score @s wb.biome_id = #preset BIOME_SAVANNAH run function developer:world_builder/actions/spawn_object/destructor_list/structure/farmlands/farmlands_savannah

setblock ~ ~1 ~ minecraft:redstone_block replace
fill ~ ~ ~ ~ ~1 ~ minecraft:air
kill @e[type=minecraft:item,distance=0..32]
kill @s