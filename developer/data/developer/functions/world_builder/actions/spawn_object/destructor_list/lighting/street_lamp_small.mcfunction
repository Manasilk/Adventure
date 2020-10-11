execute if score @s wb.biome_id = #preset BIOME_FOREST run function developer:world_builder/actions/spawn_object/destructor_list/lighting/street_lamp_small/lamp_small_forest
execute if score @s wb.biome_id = #preset BIOME_JUNGLE run function developer:world_builder/actions/spawn_object/destructor_list/lighting/street_lamp_small/lamp_small_jungle
execute if score @s wb.biome_id = #preset BIOME_DESERT run function developer:world_builder/actions/spawn_object/destructor_list/lighting/street_lamp_small/lamp_small_desert
execute if score @s wb.biome_id = #preset BIOME_MESA run function developer:world_builder/actions/spawn_object/destructor_list/lighting/street_lamp_small/lamp_small_mesa
execute if score @s wb.biome_id = #preset BIOME_TUNDRA run function developer:world_builder/actions/spawn_object/destructor_list/lighting/street_lamp_small/lamp_small_tundra
execute if score @s wb.biome_id = #preset BIOME_STONE run function developer:world_builder/actions/spawn_object/destructor_list/lighting/street_lamp_small/lamp_small_stone

setblock ~ ~1 ~ minecraft:redstone_block replace