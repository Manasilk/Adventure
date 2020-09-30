execute if entity @s[type=minecraft:item] store result score @s garbage_age run data get entity @s Age 1
execute if entity @s[type=#internal:projectiles] store result score @s garbage_age run data get entity @s life 1

execute if score @s garbage_age = #world cfg.prjctl_age run tag @s add garbage.remove
execute if score @s garbage_age = #world cfg.item_age run tag @s add garbage.remove

kill @s[tag=garbage.remove]