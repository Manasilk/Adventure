execute unless block ~ ~ ~ #server:air run summon minecraft:magma_cube ~ ~ ~ {NoAI:1b,Silent:1b,Size:1,DeathLootTable:"server:entities/empty",ActiveEffects:[{Id:11b,ShowParticles:0b,Duration:1000000,Amplifier:10b},{Id:14b,ShowParticles:0b,Duration:1000000,Amplifier:0b},{Id:24b,ShowParticles:0b,Duration:1000000,Amplifier:0b}],Tags:["ENTITY_FLAG_SERVER_CONTROLLED"]}
execute as @e[type=minecraft:magma_cube,tag=ENTITY_FLAG_SERVER_CONTROLLED,distance=0..0.999,sort=nearest,limit=1] at @s align xyz run teleport @s ~0.5 ~ ~0.5
#function common:debugging/info/scan_data

execute if score @s iterator.x > @s end.x run scoreboard players remove @s iterator.x 1
execute if score @s iterator.x < @s end.x run scoreboard players add @s iterator.x 1
execute at @s if score @s iterator.x > @s end.x run teleport @s ~-1 ~ ~
execute at @s if score @s iterator.x < @s end.x run teleport @s ~1 ~ ~
execute at @s if score @s iterator.x > @s end.x run function common:collision/vmaps/iterate_x
execute at @s if score @s iterator.x < @s end.x run function common:collision/vmaps/iterate_x