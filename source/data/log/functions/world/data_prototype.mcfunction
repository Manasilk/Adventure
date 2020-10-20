#TEMPORARY, WIP
execute store result storage log:world event[-1].data[].player.id int 1 run scoreboard players get @a[limit=1] player_id
execute store result storage log:world event[-1].data[].player.gamemode int 1 run scoreboard players get @a[limit=1] player_gamemode

summon minecraft:area_effect_cloud ~ ~ ~ {Age:0,Duration:0,WaitTime:0}
execute store result entity @e[type=minecraft:area_effect_cloud,distance=0..0.001,sort=nearest,limit=1] FallDistance float 0.1 run data get entity @s Pos[0] 10
data modify storage log:world event[-1].data[].player.position append from entity @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1] FallDistance
execute store result entity @e[type=minecraft:area_effect_cloud,distance=0..0.001,sort=nearest,limit=1] FallDistance float 0.1 run data get entity @s Pos[1] 10
data modify storage log:world event[-1].data[].player.position append from entity @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1] FallDistance
execute store result entity @e[type=minecraft:area_effect_cloud,distance=0..0.001,sort=nearest,limit=1] FallDistance float 0.1 run data get entity @s Pos[2] 10
data modify storage log:world event[-1].data[].player.position append from entity @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1] FallDistance