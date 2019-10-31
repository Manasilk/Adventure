scoreboard players reset #dbc.temp dmg_in0

scoreboard players operation @s TEMP = @s entity_temphp
scoreboard players operation @s TEMP -= @s entity_curhp
tellraw @a {"score":{"name":"@s","objective":"TEMP"}}
scoreboard players operation #dbc.temp dmg_in0 = @s TEMP
scoreboard players operation #dbc.temp dmg_in0 *= #const 10
tellraw @a {"score":{"name":"#dbc.temp","objective":"dmg_in0"}}
scoreboard players reset @s TEMP