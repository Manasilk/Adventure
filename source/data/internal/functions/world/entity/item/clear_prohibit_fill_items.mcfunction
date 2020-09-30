execute store success score @s _h.fill_bucket run clear @s minecraft:lava_bucket
tag @s[scores={_h.fill_bucket=1..}] add messages.error.cannot_fill_area
give @s[tag=messages.error.cannot_fill_area] minecraft:bucket
scoreboard players set @s _h.fill_bucket 0