#Set summoner's position as worldspawn
setworldspawn

execute align xz positioned ~0.5 ~ ~0.5 store result score #world world_spawn.x run data get entity @s Pos[0] 10
execute align xz positioned ~0.5 ~ ~0.5 store result score #world world_spawn.z run data get entity @s Pos[2] 10
execute align y store result score #world world_spawn.y run data get entity @s Pos[1] 10