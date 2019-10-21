scoreboard players set #MATH root_i 1
scoreboard players set #MATH root_x 0
scoreboard players set #MATH result 0
scoreboard players operation #MATH TEMP = @s sqrt
execute if score #MATH TEMP > #MATH root_x run function server:game/world/math/sqrt/sqrt

scoreboard players operation @s result = #MATH result
scoreboard players reset #MATH root_i
scoreboard players reset #MATH root_x
scoreboard players reset #MATH result
scoreboard players reset #MATH TEMP