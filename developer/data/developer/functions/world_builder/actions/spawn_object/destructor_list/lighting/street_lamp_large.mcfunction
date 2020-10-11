execute if score @s wb.biome_id = #preset BIOME_FOREST run function developer:world_builder/actions/spawn_object/destructor_list/lighting/street_lamp_large/lamp_large_forest
execute if score @s wb.biome_id = #preset BIOME_JUNGLE run function developer:world_builder/actions/spawn_object/destructor_list/lighting/street_lamp_large/lamp_large_jungle
execute if score @s wb.biome_id = #preset BIOME_DESERT run function developer:world_builder/actions/spawn_object/destructor_list/lighting/street_lamp_large/lamp_large_desert
execute if score @s wb.biome_id = #preset BIOME_MESA run function developer:world_builder/actions/spawn_object/destructor_list/lighting/street_lamp_large/lamp_large_mesa
execute if score @s wb.biome_id = #preset BIOME_TUNDRA run function developer:world_builder/actions/spawn_object/destructor_list/lighting/street_lamp_large/lamp_large_tundra
execute if score @s wb.biome_id = #preset BIOME_STONE run function developer:world_builder/actions/spawn_object/destructor_list/lighting/street_lamp_large/lamp_large_stone

setblock ~ ~1 ~ minecraft:redstone_block replace