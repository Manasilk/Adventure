scoreboard players operation #MATH base = @s base
scoreboard players operation #MATH result = #MATH base
scoreboard players operation #MATH power = @s power
execute if score #MATH power = #const NULL run scoreboard players set #MATH result 1
execute if score #MATH power < #const NULL run tellraw @s {"translate":"error.math.negative_exponent","color":"red"}
execute if score #MATH power matches 2..31 run function internal:world/general/compute/pow/pow
execute if score #MATH result = #const INT_MIN run scoreboard players remove #MATH result 1

scoreboard players operation @s result = #MATH result
scoreboard players reset #MATH base
scoreboard players reset #MATH power
scoreboard players reset #MATH result