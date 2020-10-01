scoreboard players add @s garbage_age 1

execute if score @s[type=minecraft:item] garbage_age >= #world cfg.item_age run tag @s add garbage.remove
execute if score @s[type=#internal:projectiles] garbage_age >= #world cfg.prjctl_age run tag @s add garbage.remove

kill @s[tag=garbage.remove]