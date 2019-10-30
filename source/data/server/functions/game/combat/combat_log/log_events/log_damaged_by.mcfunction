#Fetch damage taken and mitigated values
function server:game/combat/combat_log/check_timestamp
function server:game/combat/unit_events/get_damage_taken

execute unless score @s[tag=!_e.log.damage_type.generic] dmg_in0 > @s entity_curhp if score @s dmg_in1 matches 0 run function server:game/combat/combat_log/log_events/damage_taken
execute unless score @s[tag=!_e.log.damage_type.generic] dmg_in0 > @s entity_curhp if score @s dmg_in1 matches 1.. run function server:game/combat/combat_log/log_events/damage_mitigated
execute if score @s[tag=!_e.log.damage_type.generic] dmg_in0 >= @s entity_curhp run function server:game/combat/combat_log/log_events/damage_fatal

execute unless score @s[tag=_e.log.damage_type.generic] dmg_in0 > @s entity_curhp run function server:game/combat/combat_log/log_events/damage_taken_generic
execute if score @s[tag=_e.log.damage_type.generic] dmg_in0 > @s entity_curhp run function server:game/combat/combat_log/log_events/damage_fatal_generic

scoreboard players reset @s dmg_in0
scoreboard players reset @s dmg_in1
scoreboard players reset @s dmg_in2
scoreboard players reset @s dmg_in3
scoreboard players reset @s TEMP
tag @s remove _t.h0_m0
tag @s remove _t.h0_m1
tag @s remove _t.h1_m0
tag @s remove _t.h1_m1
tag @s remove _e.log.event_type.damaged_by
function server:game/entity/get_entity_health