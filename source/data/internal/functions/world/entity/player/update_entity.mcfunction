function internal:world/general/time/gametime
execute if entity @s[scores={double_reward=1}] run function internal:world/time/double_reward_timer
execute if entity @s[scores={double_loot=1}] run function internal:world/time/double_loot_timer
execute if entity @s[tag=ENTITY_FLAG_SWIMMING_FATIGUE] run function internal:world/entity/player/update_fatigue
scoreboard players remove @s[scores={unstuck_cd=1..}] unstuck_cd 1