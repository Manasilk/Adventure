scoreboard players operation #MATH x = @s _ac.h_lim
scoreboard players operation #MATH y = @s _ac.v_lim
scoreboard players operation #MATH z = @s _ac.h_lim
scoreboard players operation #MATH x *= #MATH x
scoreboard players operation #MATH y *= #MATH y
scoreboard players operation #MATH z *= #MATH z
scoreboard players operation #MATH TEMP += #MATH x
scoreboard players operation #MATH TEMP += #MATH y
scoreboard players operation #MATH TEMP += #MATH z
function internal:world/general/compute/sqrt

scoreboard players operation @s _ac.dist_lim = #MATH result
scoreboard players reset #MATH result