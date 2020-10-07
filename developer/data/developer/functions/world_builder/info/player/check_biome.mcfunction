function developer:world_builder/info/player/flush_biome_data

execute if predicate internal:world/biome/forest run function developer:world_builder/info/player/set_biome_forest
execute if predicate internal:world/biome/jungle run function developer:world_builder/info/player/set_biome_jungle
execute if predicate internal:world/biome/desert run function developer:world_builder/info/player/set_biome_desert
execute if predicate internal:world/biome/tundra run function developer:world_builder/info/player/set_biome_tundra
execute if predicate internal:world/biome/savanna run function developer:world_builder/info/player/set_biome_savannah
execute if predicate internal:world/biome/desert run function developer:world_builder/info/player/set_biome_desert
execute if predicate internal:world/biome/mesa run function developer:world_builder/info/player/set_biome_mesa
execute if predicate internal:world/biome/stone run function developer:world_builder/info/player/set_biome_stone
execute if predicate internal:world/biome/ocean run function developer:world_builder/info/player/set_biome_ocean
execute if predicate internal:world/biome/nether run function developer:world_builder/info/player/set_biome_desert
execute if predicate internal:world/biome/end run function developer:world_builder/info/player/set_biome_desert
execute if predicate internal:world/biome/void run function developer:world_builder/info/player/set_biome_desert