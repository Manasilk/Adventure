#Fetch damage taken and mitigated values
function internal:world/combat/combat_log/check_timestamp
function internal:world/combat/unit_events/get_damage_taken

execute unless score @s[tag=!combat_log.damage_type_generic] dmg_in0 > @s entity_curhp if score @s dmg_in1 matches 0 run function internal:world/combat/combat_log/log_events/damage_taken
execute unless score @s[tag=!combat_log.damage_type_generic] dmg_in0 > @s entity_curhp if score @s dmg_in1 matches 1.. run function internal:world/combat/combat_log/log_events/damage_mitigated
execute if score @s[tag=!combat_log.damage_type_generic] dmg_in0 >= @s entity_curhp run function internal:world/combat/combat_log/log_events/damage_fatal

execute unless score @s[tag=combat_log.damage_type_generic] dmg_in0 > @s entity_curhp run function internal:world/combat/combat_log/log_events/damage_taken_generic
execute if score @s[tag=combat_log.damage_type_generic] dmg_in0 > @s entity_curhp run function internal:world/combat/combat_log/log_events/damage_fatal_generic

scoreboard players reset @s dmg_in0
scoreboard players reset @s dmg_in1
scoreboard players reset @s dmg_in2
scoreboard players reset @s dmg_in3
scoreboard players reset @s TEMP
tag @s remove _t.h0_m0
tag @s remove _t.h0_m1
tag @s remove _t.h1_m0
tag @s remove _t.h1_m1
tag @s remove player.damaged_by_entity
function internal:world/entity/get_entity_health

scoreboard players reset #temp dmg_in0