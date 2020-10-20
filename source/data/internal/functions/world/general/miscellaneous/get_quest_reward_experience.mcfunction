experience add @s[scores={exp_reward=1..}] 1 points
scoreboard players remove @s exp_reward 1
scoreboard players reset @s[scores={exp_reward=0}] exp_reward
execute if score @s exp_reward > #const NULL run function internal:world/general/miscellaneous/get_quest_reward_experience

scoreboard players operation @s exp_gained = @s exp_stored