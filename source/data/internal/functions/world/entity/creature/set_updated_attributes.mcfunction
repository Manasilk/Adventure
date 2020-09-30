execute store result entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base double 1 run scoreboard players get @s entity_maxhp
execute store result entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base double 1 run scoreboard players get @s entity_curap
execute store result entity @s Health float 1 run scoreboard players get @s entity_curhp

scoreboard players reset #temp entity_level
scoreboard players reset #temp entity_count