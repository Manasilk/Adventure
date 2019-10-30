execute store result score @s entity_curhp run data get entity @s Health 1

execute if score @s entity_curhp > @s entity_temphp run function server:game/combat/combat_log/log_events/get_health_restored
execute unless score @s entity_level = #dbc.server entity_maxlvl if score @s exp_stored > @s exp_gained run function server:game/combat/combat_log/log_events/get_experience_gained