function developer:world_builder/info/player/flush_biome_data
tag @s[tag=account.builder] add BIOME_SAVANNAH
scoreboard players set @s[tag=account.builder] wb.biome_id 9
advancement revoke @s only developer:world_builder/biome_savannah