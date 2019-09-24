execute if score @s[tag=NONE] wb_biome_id = #dbc.enum BIOME_FOREST run setblock ~ ~ ~ minecraft:structure_block{mirror:"NONE",rotation:"NONE",mode:"LOAD",name:"mardaar:object/destructor/destroy_pillager_outpost_forest"} replace
execute if score @s[tag=CLOCKWISE_180] wb_biome_id = #dbc.enum BIOME_FOREST run setblock ~ ~ ~ minecraft:structure_block{mirror:"NONE",rotation:"CLOCKWISE_180",mode:"LOAD",name:"mardaar:object/destructor/destroy_pillager_outpost_forest"} replace
execute if score @s[tag=COUNTERCLOCKWISE_90] wb_biome_id = #dbc.enum BIOME_FOREST run setblock ~ ~ ~ minecraft:structure_block{mirror:"NONE",rotation:"COUNTERCLOCKWISE_90",mode:"LOAD",name:"mardaar:object/destructor/destroy_pillager_outpost_forest"} replace
execute if score @s[tag=CLOCKWISE_90] wb_biome_id = #dbc.enum BIOME_FOREST run setblock ~ ~ ~ minecraft:structure_block{mirror:"NONE",rotation:"CLOCKWISE_90",mode:"LOAD",name:"mardaar:object/destructor/destroy_pillager_outpost_forest"} replace

execute if score @s[tag=NONE] wb_biome_id = #dbc.enum BIOME_JUNGLE run setblock ~ ~ ~ minecraft:structure_block{mirror:"NONE",rotation:"NONE",mode:"LOAD",name:"mardaar:object/destructor/destroy_pillager_outpost_jungle"} replace
execute if score @s[tag=CLOCKWISE_180] wb_biome_id = #dbc.enum BIOME_JUNGLE run setblock ~ ~ ~ minecraft:structure_block{mirror:"NONE",rotation:"CLOCKWISE_180",mode:"LOAD",name:"mardaar:object/destructor/destroy_pillager_outpost_jungle"} replace
execute if score @s[tag=COUNTERCLOCKWISE_90] wb_biome_id = #dbc.enum BIOME_JUNGLE run setblock ~ ~ ~ minecraft:structure_block{mirror:"NONE",rotation:"COUNTERCLOCKWISE_90",mode:"LOAD",name:"mardaar:object/destructor/destroy_pillager_outpost_jungle"} replace
execute if score @s[tag=CLOCKWISE_90] wb_biome_id = #dbc.enum BIOME_JUNGLE run setblock ~ ~ ~ minecraft:structure_block{mirror:"NONE",rotation:"CLOCKWISE_90",mode:"LOAD",name:"mardaar:object/destructor/destroy_pillager_outpost_jungle"} replace

#execute if score @s[tag=NONE] wb_biome_id = #dbc.enum BIOME_DESERT run setblock ~ ~ ~ minecraft:structure_block{mirror:"NONE",rotation:"NONE",mode:"LOAD",name:"mardaar:object/destructor/destroy_pillager_outpost_desert"} replace
#execute if score @s[tag=CLOCKWISE_180] wb_biome_id = #dbc.enum BIOME_DESERT run setblock ~ ~ ~ minecraft:structure_block{mirror:"NONE",rotation:"CLOCKWISE_180",mode:"LOAD",name:"mardaar:object/destructor/destroy_pillager_outpost_desert"} replace
#execute if score @s[tag=COUNTERCLOCKWISE_90] wb_biome_id = #dbc.enum BIOME_DESERT run setblock ~ ~ ~ minecraft:structure_block{mirror:"NONE",rotation:"COUNTERCLOCKWISE_90",mode:"LOAD",name:"mardaar:object/destructor/destroy_pillager_outpost_desert"} replace
#execute if score @s[tag=CLOCKWISE_90] wb_biome_id = #dbc.enum BIOME_DESERT run setblock ~ ~ ~ minecraft:structure_block{mirror:"NONE",rotation:"CLOCKWISE_90",mode:"LOAD",name:"mardaar:object/destructor/destroy_pillager_outpost_desert"} replace

execute if score @s[tag=NONE] wb_biome_id = #dbc.enum BIOME_MESA run setblock ~ ~ ~ minecraft:structure_block{mirror:"NONE",rotation:"NONE",mode:"LOAD",name:"mardaar:object/destructor/destroy_pillager_outpost_mesa"} replace
execute if score @s[tag=CLOCKWISE_180] wb_biome_id = #dbc.enum BIOME_MESA run setblock ~ ~ ~ minecraft:structure_block{mirror:"NONE",rotation:"CLOCKWISE_180",mode:"LOAD",name:"mardaar:object/destructor/destroy_pillager_outpost_mesa"} replace
execute if score @s[tag=COUNTERCLOCKWISE_90] wb_biome_id = #dbc.enum BIOME_MESA run setblock ~ ~ ~ minecraft:structure_block{mirror:"NONE",rotation:"COUNTERCLOCKWISE_90",mode:"LOAD",name:"mardaar:object/destructor/destroy_pillager_outpost_mesa"} replace
execute if score @s[tag=CLOCKWISE_90] wb_biome_id = #dbc.enum BIOME_MESA run setblock ~ ~ ~ minecraft:structure_block{mirror:"NONE",rotation:"CLOCKWISE_90",mode:"LOAD",name:"mardaar:object/destructor/destroy_pillager_outpost_mesa"} replace

execute if score @s[tag=NONE] wb_biome_id = #dbc.enum BIOME_TUNDRA run setblock ~ ~ ~ minecraft:structure_block{mirror:"NONE",rotation:"NONE",mode:"LOAD",name:"mardaar:object/destructor/destroy_pillager_outpost_tundra"} replace
execute if score @s[tag=CLOCKWISE_180] wb_biome_id = #dbc.enum BIOME_TUNDRA run setblock ~ ~ ~ minecraft:structure_block{mirror:"NONE",rotation:"CLOCKWISE_180",mode:"LOAD",name:"mardaar:object/destructor/destroy_pillager_outpost_tundra"} replace
execute if score @s[tag=COUNTERCLOCKWISE_90] wb_biome_id = #dbc.enum BIOME_TUNDRA run setblock ~ ~ ~ minecraft:structure_block{mirror:"NONE",rotation:"COUNTERCLOCKWISE_90",mode:"LOAD",name:"mardaar:object/destructor/destroy_pillager_outpost_tundra"} replace
execute if score @s[tag=CLOCKWISE_90] wb_biome_id = #dbc.enum BIOME_TUNDRA run setblock ~ ~ ~ minecraft:structure_block{mirror:"NONE",rotation:"CLOCKWISE_90",mode:"LOAD",name:"mardaar:object/destructor/destroy_pillager_outpost_tundra"} replace

setblock ~ ~1 ~ minecraft:redstone_block replace
kill @e[type=minecraft:pillager,tag=_e.spread_pos,distance=0..38]
execute at @e[tag=npc_pillager_outpost,sort=nearest,limit=1] run kill @e[type=minecraft:armor_stand,sort=nearest,limit=2,distance=0..5]
kill @e[type=#server:area_trigger,tag=npc_pillager_outpost,sort=nearest,limit=1]