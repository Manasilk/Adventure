execute as @e[type=#server:creature,tag=aggressor_ai] at @s run function server:game/ai/core_ai/aggressor_ai
execute as @e[type=#server:creature,tag=reactor_ai] at @s run function server:game/ai/core_ai/reactor_ai
execute as @e[type=#server:creature,tag=passive_ai] at @s run function server:game/ai/core_ai/passive_ai
execute as @e[type=#server:creature,tag=pet_ai] at @s run function server:game/ai/core_ai/pet_ai