execute unless entity @e[type=#server:creature,tag=ENTITY_FLAG_IN_COMBAT,distance=0..11.999] run scoreboard players add @s[scores={combat_reset_t=0..9}] combat_reset_t 1
execute if entity @e[type=#server:creature,tag=ENTITY_FLAG_IN_COMBAT,distance=0..11.999] run scoreboard players set @s[scores={combat_reset_t=1..}] combat_reset_t 0
execute unless entity @e[type=#server:creature,tag=ENTITY_FLAG_IN_COMBAT,distance=0..31.999] run scoreboard players set @s combat_reset_t 10

function server:game/combat/unit_events/reset_victim

execute if score @s _h.has_died >= #bool true run function server:game/combat/unit_events/reset_combat
execute if score @s combat_reset_t matches 10 run function server:game/combat/unit_events/reset_combat