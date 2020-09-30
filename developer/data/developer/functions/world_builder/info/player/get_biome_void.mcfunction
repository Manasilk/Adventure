function developer:world_builder/info/player/flush_biome_data
tag @s[tag=account.builder] add BIOME_VOID
scoreboard players set @s[tag=account.builder] wb.biome_id 11
advancement revoke @s only developer:world_builder/biome_void