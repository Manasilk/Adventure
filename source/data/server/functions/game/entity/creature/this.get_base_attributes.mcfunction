#This function is called upon entity leaving combat
execute store result entity @s Attributes[0].Base double 1 run scoreboard players get @s entity_basehp
execute store result entity @s Attributes[4].Base double 1 run scoreboard players get @s entity_armor
execute store result entity @s Attributes[7].Base double 1 run scoreboard players get @s entity_baseap
execute store result entity @s Health float 1 run scoreboard players get @s entity_basehp
scoreboard players operation @s entity_maxhp = @s entity_basehp
scoreboard players operation @s entity_curhp = @s entity_basehp
scoreboard players operation @s entity_curap = @s entity_baseap
scoreboard players operation @s entity_temphp = @s entity_curhp
scoreboard players set @s entity_hpprc 100