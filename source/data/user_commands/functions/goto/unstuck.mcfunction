execute if score @s unstuck_cd matches 0 run function user_commands:goto/spawn
tag @s[scores={unstuck_cd=11..}] add _e.unstuck_cd_msg

scoreboard players reset @s unstuck
scoreboard players enable @s unstuck