scoreboard players operation #MATH x = @s _FB._LimitH
scoreboard players operation #MATH y = @s _FB._LimitV
scoreboard players operation #MATH z = @s _FB._LimitH
scoreboard players operation #MATH x *= #MATH x
scoreboard players operation #MATH y *= #MATH y
scoreboard players operation #MATH z *= #MATH z
scoreboard players operation #MATH TEMP += #MATH x
scoreboard players operation #MATH TEMP += #MATH y
scoreboard players operation #MATH TEMP += #MATH z
function server:game/world/math/sqrt

scoreboard players operation @s _FB._LimitDist = #MATH result
scoreboard players reset #MATH result