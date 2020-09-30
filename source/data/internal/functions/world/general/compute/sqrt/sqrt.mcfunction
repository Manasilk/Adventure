scoreboard players operation #MATH root_x += #MATH root_i
scoreboard players add #MATH result 1
scoreboard players add #MATH root_i 2
execute if score #MATH TEMP > #MATH root_x run function internal:world/general/compute/sqrt/sqrt