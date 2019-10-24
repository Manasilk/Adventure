execute store success score @s _h.fill_bucket run clear @s minecraft:lava_bucket
tag @s[scores={_h.fill_bucket=1..}] add _e.error_cant_fill
give @s[tag=_e.error_cant_fill] minecraft:bucket
scoreboard players set @s _h.fill_bucket 0