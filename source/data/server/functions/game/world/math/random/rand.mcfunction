summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["MATH_PRNG"]}
execute as @e[type=#server:area_trigger,tag=MATH_PRNG,distance=0..0.001,sort=nearest,limit=1] run function server:game/world/math/store_result
execute if score #MATH rand < #const NULL run scoreboard players operation #MATH rand *= #const CNVT_OPP
scoreboard players operation @s rand = #MATH rand
scoreboard players operation @s rand %= @s m
scoreboard players operation @s rand += #const 1
scoreboard players reset #MATH rand