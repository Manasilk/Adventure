#Level = SummaryPlayerLevel / PlayerCount
execute store result score #temp entity_count if entity @a[tag=ENTITY_FLAG_IN_COMBAT,distance=0..15.999]
execute as @a[tag=ENTITY_FLAG_IN_COMBAT,distance=0..15.999] run scoreboard players operation #temp entity_level += @s entity_reclvl

scoreboard players operation #temp entity_level /= #temp entity_count
scoreboard players operation @s entity_level = #temp entity_level