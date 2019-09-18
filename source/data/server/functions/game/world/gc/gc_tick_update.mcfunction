execute if entity @s[type=minecraft:item] store result score @s gc_age run data get entity @s Age 1
execute if entity @s[type=#server:projectiles] store result score @s gc_age run data get entity @s life 1

tag @s[type=minecraft:item,scores={gc_age=1200..}] add _e.gc_sweep
tag @s[type=#server:projectiles,scores={gc_age=600..}] add _e.gc_sweep

kill @s[tag=_e.gc_sweep]