summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["MATH_PRNG"]}
execute as @e[type=#server:area_trigger,tag=MATH_PRNG,distance=0..0.001,sort=nearest,limit=1] run function server:game/world/math/random/uuid_result
scoreboard players operation #MATH rand %= @s[scores={m=-2147483648..}] m
scoreboard players operation #MATH rand += #const 1
scoreboard players operation @s rand = #MATH rand

scoreboard players reset @s[scores={m=-2147483648..}] m
scoreboard players reset #MATH rand