title @s actionbar {"text":""}
scoreboard players set @s fatigue_level 0
tag @s remove ENTITY_FLAG_SWIMMING_FATIGUE
advancement revoke @s only internal:world/fatigue/biome_deep_ocean
kill @s