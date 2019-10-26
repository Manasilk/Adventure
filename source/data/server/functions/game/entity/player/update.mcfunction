function server:game/time/gametime
execute if entity @s[scores={double_reward=1}] run function server:game/time/double_reward_timer
execute if entity @s[scores={double_loot=1}] run function erver:game/time/double_loot_timer
execute if entity @s[tag=ENTITY_FLAG_SWIMMING_FATIGUE] run function server:game/entity/player/get_player_fatigue_level
scoreboard players remove @s[scores={unstuck_cd=1..}] unstuck_cd 1

execute store result score @s entity_curhp run data get entity @s Health 1