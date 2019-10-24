function builder:player_data/flush_biome_data
tag @s[tag=rbac.builder] add BIOME_NETHER
scoreboard players set @s[tag=rbac.builder] wb_biome_id 10
advancement revoke @s only server:internal/builder/biome_nether