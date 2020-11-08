spawnpoint
execute store result score @s entity.spawn_x run data get entity @s SpawnX 1
execute store result score @s entity.spawn_y run data get entity @s SpawnY 1
execute store result score @s entity.spawn_z run data get entity @s SpawnZ 1

tag @s add messages.info.spawnpoint