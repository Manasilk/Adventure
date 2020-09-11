#Level = SummaryPlayerLevel / PlayerCount
execute store result score #dbc.temp entity_count if entity @a[tag=ENTITY_FLAG_IN_COMBAT,distance=0..15.999]
execute as @a[tag=ENTITY_FLAG_IN_COMBAT,distance=0..15.999] run scoreboard players operation #dbc.temp entity_level += @s entity_reclvl

scoreboard players operation #dbc.temp entity_level /= #dbc.temp entity_count
scoreboard players operation @s entity_level = #dbc.temp entity_level