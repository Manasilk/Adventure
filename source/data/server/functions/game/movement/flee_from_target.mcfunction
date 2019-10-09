execute unless entity @s[tag=_e.get_fleeing_rotation] run function server:game/entity/get_fleeing_rotation

execute if block ^ ^ ^0.3 #server:non_solid run teleport @s ^ ^ ^0.25
execute unless block ^ ^ ^0.3 #server:non_solid if block ^ ^1 ^0.3 #server:non_solid run teleport @s ^ ^1 ^0.25