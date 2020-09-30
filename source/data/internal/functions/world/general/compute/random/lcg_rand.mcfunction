scoreboard players operation #MATH seed *= #MATH a
scoreboard players operation #MATH seed += #MATH c
scoreboard players operation #MATH rand = #MATH seed
scoreboard players operation #MATH rand /= #const 100
scoreboard players operation #MATH rand %= @s m
scoreboard players operation #MATH rand += #const 1

scoreboard players reset @s[scores={m=-2147483648..}]
scoreboard players operation @s rand = #MATH rand
scoreboard players reset #MATH rand