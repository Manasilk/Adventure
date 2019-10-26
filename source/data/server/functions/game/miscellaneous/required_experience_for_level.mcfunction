scoreboard players operation @s TEMP = @s entity_level

scoreboard players operation @s[level=0..15] TEMP *= #const 2
scoreboard players operation @s[level=0..15] TEMP += #const 7
scoreboard players operation @s[level=16..] TEMP *= #const 5
scoreboard players operation @s[level=16..] TEMP -= #const 38
scoreboard players operation @s[level=31..] TEMP *= #const 9
scoreboard players operation @s[level=31..] TEMP -= #const 158