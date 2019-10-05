execute store result entity @s Attributes[0].Base double 1 run scoreboard players get @s entity_maxhp
execute store result entity @s Attributes[7].Base double 1 run scoreboard players get @s entity_curap
execute store result entity @s Health float 1 run scoreboard players get @s entity_curhp

scoreboard players reset #dbc.temp entity_level
scoreboard players reset #dbc.temp entity_count