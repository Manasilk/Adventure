scoreboard players operation @s TEMP = @s entity_temphp
scoreboard players operation @s TEMP -= @s entity_curhp
scoreboard players operation #dbc.temp dmg_in0 = @s TEMP
scoreboard players operation #dbc.temp dmg_in0 *= #const 10
scoreboard players reset @s TEMP