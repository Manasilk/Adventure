execute positioned 0 0 0 run kill @e[type=#internal:area_trigger,distance=0..1]
setblock 0 0 0 minecraft:air

execute positioned 0 0 0 unless entity @e[type=#internal:area_trigger,tag=BUILD_CODENAME,distance=0..0.001] run summon minecraft:area_effect_cloud 0 0 0 {CustomName:'{"translate":"build.uprising"}',Age:-2147483648,Duration:-1,WaitTime:-2147483648,CustomNameVisible:0b,Tags:["ENTITY_FLAG_SERVER_CONTROLLED","BUILD_CODENAME"]}
execute positioned 0 0 0 unless entity @e[type=#internal:area_trigger,tag=entity_type_param,distance=0..0.001] run summon minecraft:area_effect_cloud 0 0 0 {CustomName:'{"text":"entity_type"}',Age:-2147483648,Duration:-1,WaitTime:-2147483648,CustomNameVisible:0b,Tags:["ENTITY_FLAG_SERVER_CONTROLLED","entity_type_param"]}
execute positioned 0 0 0 unless entity @e[type=#internal:area_trigger,tag=entity_damage_param,distance=0..0.001] run summon minecraft:area_effect_cloud 0 0 0 {CustomName:'{"text":"damage_type"}',Age:-2147483648,Duration:-1,WaitTime:-2147483648,CustomNameVisible:0b,Tags:["ENTITY_FLAG_SERVER_CONTROLLED","entity_damage_param"]}
execute unless block 0 0 0 minecraft:shulker_box run setblock 0 0 0 minecraft:shulker_box

#Shulkerbox encasing
execute positioned 0 0 1 run setblock ~ ~ ~ minecraft:bedrock
execute positioned 0 0 -1 run setblock ~ ~ ~ minecraft:bedrock
execute positioned 1 0 0 run setblock ~ ~ ~ minecraft:bedrock
execute positioned -1 0 0 run setblock ~ ~ ~ minecraft:bedrock
execute positioned 0 1 0 run setblock ~ ~ ~ minecraft:bedrock