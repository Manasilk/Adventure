#This function is called upon entity leaving combat
execute store result entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base double 1 run scoreboard players get @s entity_basehp
execute store result entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base double 1 run scoreboard players get @s entity_baseap
execute store result entity @s Health float 1 run scoreboard players get @s entity_basehp
scoreboard players operation @s entity_maxhp = @s entity_basehp
scoreboard players operation @s entity_curhp = @s entity_basehp
scoreboard players operation @s entity_curap = @s entity_baseap
scoreboard players operation @s entity_temphp = @s entity_curhp
scoreboard players set @s entity_hpprc 100
scoreboard players set @s entity_level 0

tag @s remove creature.initialized_scaling