summon minecraft:pillager ~1 ~ ~-1 {HandItems:[{},{}],HandDropChances:[0.0f,0.0f],ActiveEffects:[{Ambient:0b,ShowIcon:0b,ShowParticles:0b,Duration:100,Id:14b,Amplifier:0b}],Tags:["npc_pillager","ENTITY_FLAG_SERVER_CONTROLLED"]}
summon minecraft:pillager ~-1 ~ ~-1 {HandItems:[{},{}],HandDropChances:[0.0f,0.0f],ActiveEffects:[{Ambient:0b,ShowIcon:0b,ShowParticles:0b,Duration:100,Id:14b,Amplifier:0b}],Tags:["npc_pillager","ENTITY_FLAG_SERVER_CONTROLLED"]}
summon minecraft:pillager ~ ~ ~ {HandItems:[{},{}],HandDropChances:[0.0f,0.0f],ArmorItems:[{},{},{},{}],ArmorDropChance:[0.0f,0.0f,0.0f,2.0f],ActiveEffects:[{Ambient:0b,ShowIcon:0b,ShowParticles:0b,Duration:100,Id:14b,Amplifier:0b}],Tags:["npc_pillager","ENTITY_FLAG_SERVER_CONTROLLED","ENTITY_FLAG_PILLAGER_CAPTAIN"]}
summon minecraft:pillager ~1 ~ ~1 {HandItems:[{},{}],HandDropChances:[0.0f,0.0f],ActiveEffects:[{Ambient:0b,ShowIcon:0b,ShowParticles:0b,Duration:100,Id:14b,Amplifier:0b}],Tags:["npc_pillager","ENTITY_FLAG_SERVER_CONTROLLED"]}
summon minecraft:pillager ~-1 ~ ~1 {HandItems:[{},{}],HandDropChances:[0.0f,0.0f],ActiveEffects:[{Ambient:0b,ShowIcon:0b,ShowParticles:0b,Duration:100,Id:14b,Amplifier:0b}],Tags:["npc_pillager","ENTITY_FLAG_SERVER_CONTROLLED"]}

spreadplayers ~ ~ 0.0 18.0 false @e[type=minecraft:pillager,tag=!area_trigger.spread_summoned_spawn,distance=0..31.999]
tag @e[type=minecraft:pillager,tag=!area_trigger.spread_summoned_spawn,distance=0..31.999] add area_trigger.spread_summoned_spawn
function internal:world/entity/area_trigger/get_entity_count