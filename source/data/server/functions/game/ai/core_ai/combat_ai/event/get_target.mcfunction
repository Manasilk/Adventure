execute if entity @s[tag=TARGET_NONE] run function server:game/ai/core_ai/combat_ai/target/set_target_none
execute if entity @s[tag=TARGET_SELF] run function server:game/ai/core_ai/combat_ai/target/set_target_self
execute if entity @s[tag=TARGET_POSITION] run function server:game/ai/core_ai/combat_ai/target/set_target_position
execute if entity @s[tag=TARGET_PLAYER_NEAREST] run function server:game/ai/core_ai/combat_ai/target/set_target_closest_player
execute if entity @s[tag=TARGET_PLAYER_NEAREST] run function server:game/ai/core_ai/combat_ai/target/set_target_furthest_player
execute if entity @s[tag=TARGET_PLAYER_RANDOM] run function server:game/ai/core_ai/combat_ai/target/set_target_random_player
execute if entity @s[tag=TARGET_CREATURE_NEAREST] run function server:game/ai/core_ai/combat_ai/target/set_target_closest_creature
execute if entity @s[tag=TARGET_CREATURE_FARTHEST] run function server:game/ai/core_ai/combat_ai/target/set_target_furthest_creature