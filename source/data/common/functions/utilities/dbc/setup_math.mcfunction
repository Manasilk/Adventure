#Initialize core objectives
execute unless score #MATH seed > #const INT_MIN run function server:game/world/math/random/get_seed
scoreboard players set #MATH a 1664525
scoreboard players set #MATH c 1013904223