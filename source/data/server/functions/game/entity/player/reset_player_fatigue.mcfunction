title @s reset
kill @s
scoreboard players set @s fatigue_level 0
tag @s remove ENTITY_FLAG_SWIMMING_FATIGUE
advancement revoke @s only server:internal/fatigue/biome_deep_ocean