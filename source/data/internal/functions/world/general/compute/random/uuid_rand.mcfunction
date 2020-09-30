function internal:world/general/compute/random/uuid
scoreboard players operation #MATH rand %= @s[scores={m=-2147483648..}] m
scoreboard players operation #MATH rand += #const 1
scoreboard players operation @s rand = #MATH rand

scoreboard players reset @s[scores={m=-2147483648..}] m
scoreboard players reset #MATH rand