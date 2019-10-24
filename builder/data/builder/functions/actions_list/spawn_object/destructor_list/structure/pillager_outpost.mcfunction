execute if score @s wb_biome_id = #dbc.enum BIOME_FOREST run function builder:actions_list/spawn_object/destructor_list/structure/pillager_outpost/pillager_outpost_forest
execute if score @s wb_biome_id = #dbc.enum BIOME_JUNGLE run function builder:actions_list/spawn_object/destructor_list/structure/pillager_outpost/pillager_outpost_jungle
execute if score @s wb_biome_id = #dbc.enum BIOME_DESERT run function builder:actions_list/spawn_object/destructor_list/structure/pillager_outpost/pillager_outpost_desert
execute if score @s wb_biome_id = #dbc.enum BIOME_MESA run function builder:actions_list/spawn_object/destructor_list/structure/pillager_outpost/pillager_outpost_mesa
execute if score @s wb_biome_id = #dbc.enum BIOME_TUNDRA run function builder:actions_list/spawn_object/destructor_list/structure/pillager_outpost/pillager_outpost_tundra

setblock ~ ~1 ~ minecraft:redstone_block replace
fill ~ ~ ~ ~ ~1 ~ minecraft:air
kill @e[type=minecraft:pillager,tag=_e.spread_pos,distance=0..38]
kill @e[type=#server:area_trigger,tag=area_trigger_pillager_outpost,sort=nearest,limit=1]
kill @s