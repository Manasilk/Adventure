execute store result score #MATH rand run time query daytime
scoreboard players operation #MATH rand += #MATH seed
scoreboard players operation #MATH min = @s min
scoreboard players operation #MATH max = @s max
scoreboard players operation #MATH max -= #MATH min
scoreboard players operation #MATH rand %= #MATH max
scoreboard players operation #MATH rand += #MATH min
scoreboard players operation @s rand = #MATH rand

scoreboard players reset #MATH rand