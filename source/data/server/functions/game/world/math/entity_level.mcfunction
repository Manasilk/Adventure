scoreboard players set #dbc.entity entity_level 0
execute as @a run scoreboard players operation #dbc.entity entity_level += @s entity_reclvl
scoreboard players operation #dbc.entity entity_level /= #dbc.entity _net.online