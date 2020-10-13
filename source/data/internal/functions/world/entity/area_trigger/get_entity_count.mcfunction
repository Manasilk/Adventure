execute store result score @s[tag=area_trigger_pillager_outpost] entity_count if entity @e[type=minecraft:pillager,distance=0..34.0]
execute store result score @s[tag=area_trigger_abandoned_mineshaft] entity_count if entity @e[type=minecraft:cave_spider,distance=0..6.0]
execute store result score @s[tag=area_trigger_ocean_monument] entity_count if entity @e[type=minecraft:guardian,distance=0..34]