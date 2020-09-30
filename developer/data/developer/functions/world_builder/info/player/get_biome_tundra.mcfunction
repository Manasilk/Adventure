function developer:world_builder/info/player/flush_biome_data
tag @s[tag=account.builder] add BIOME_TUNDRA
scoreboard players set @s[tag=account.builder] wb.biome_id 7
advancement revoke @s only developer:world_builder/biome_tundra