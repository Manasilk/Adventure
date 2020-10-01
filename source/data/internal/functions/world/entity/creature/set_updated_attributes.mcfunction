execute store result entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base double 0.001 run scoreboard players get #temp entity_maxhp
execute store result entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base double 0.001 run scoreboard players get #temp entity_curap
execute store result entity @s Health float 0.001 run scoreboard players get #temp entity_curhp

scoreboard players operation #temp entity_maxhp /= #const 1000
scoreboard players operation #temp entity_curhp /= #const 1000
scoreboard players operation #temp entity_curap /= #const 1000
scoreboard players operation @s entity_maxhp = #temp entity_maxhp
scoreboard players operation @s entity_curhp = #temp entity_curhp
scoreboard players operation @s entity_curap = #temp entity_curap

scoreboard players reset #temp entity_level
scoreboard players reset #temp entity_count
scoreboard players reset #temp entity_maxhp
scoreboard players reset #temp entity_curhp
scoreboard players reset #temp entity_curap