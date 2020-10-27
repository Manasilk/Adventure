execute unless entity @e[type=#internal:creature,tag=ENTITY_FLAG_IN_COMBAT,distance=0..11.999] run scoreboard players add @s[scores={combat_reset_t=0..9}] combat_reset_t 1
execute if score @s combat_reset_t matches 1.. if entity @e[type=#internal:creature,tag=ENTITY_FLAG_IN_COMBAT,distance=0..11.999] run scoreboard players set @s combat_reset_t 0
execute unless entity @e[type=#internal:creature,tag=ENTITY_FLAG_IN_COMBAT,distance=0..31.999] run scoreboard players set @s combat_reset_t 10

function internal:world/combat/unit_events/reset_victim

execute if score @s has_died matches 1 run function internal:world/combat/unit_events/reset_combat
execute if score @s combat_reset_t matches 10 run function internal:world/combat/unit_events/reset_combat