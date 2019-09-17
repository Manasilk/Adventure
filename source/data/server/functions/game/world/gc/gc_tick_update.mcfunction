execute if entity @s[type=minecraft:item] store result score @s gc_age run data get entity @s Age 1
execute if entity @s[type=#server:projectiles] store result score @s gc_age run data get entity @s life 1

tag @s[type=minecraft:item,scores={gc_age=10..}] add H_GC_SWEEP
tag @s[type=#server:projectiles,scores={gc_age=30..}] add H_GC_SWEEP

kill @s[tag=H_GC_SWEEP]