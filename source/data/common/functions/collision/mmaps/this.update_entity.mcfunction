execute if block ~ ~-0.1 ~ #server:non_solid run function common:collision/mmaps/height/get_height_01
execute if block ~ ~-0.5 ~ #server:non_solid run function common:collision/mmaps/height/get_height_05
execute if block ~ ~-1.0 ~ #server:non_solid run function common:collision/mmaps/height/get_height_1
execute if block ~ ~-2.0 ~ #server:non_solid run function common:collision/mmaps/height/get_height_2
execute if block ~ ~-3.0 ~ #server:non_solid run function common:collision/mmaps/height/get_height_3
execute if entity @s[tag=_e.get_fall_damage,nbt={OnGround:1b}] run function common:collision/mmaps/height/get_fall_damage

execute unless block ^ ^ ^0.3 #server:non_solid unless block ^ ^1 ^0.3 #server:non_solid run function common:collision/mmaps/evade_obstruction
execute unless block ^ ^ ^0.5 #server:non_solid unless block ^ ^1 ^0.5 #server:non_solid run function common:collision/mmaps/evade_obstruction
execute unless block ^ ^ ^0.7 #server:non_solid unless block ^ ^1 ^0.7 #server:non_solid run function common:collision/mmaps/evade_obstruction
execute unless block ^ ^ ^1.0 #server:non_solid unless block ^ ^1 ^1.0 #server:non_solid run function common:collision/mmaps/evade_obstruction