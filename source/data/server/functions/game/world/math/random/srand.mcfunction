execute store result score #MATH seed run time query gametime

scoreboard players operation #MATH seed *= #MATH a
scoreboard players operation #MATH seed += #MATH c
scoreboard players operation #MATH seed %= #MATH m

scoreboard players operation @s rand = #MATH seed
scoreboard players operation @s rand %= @s m