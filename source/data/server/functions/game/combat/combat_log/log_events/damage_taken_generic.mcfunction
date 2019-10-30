execute if entity @s[tag=_e.log.damage_type.void] run function server:game/combat/combat_log/log_events/damage_void
execute if entity @s[tag=_e.log.damage_type.falling] run function server:game/combat/combat_log/log_events/damage_fall
execute if entity @s[tag=_e.log.damage_type.starvation] run function server:game/combat/combat_log/log_events/damage_starvation
execute if entity @s[tag=_e.log.damage_type.magic] run function server:game/combat/combat_log/log_events/damage_magic
execute if entity @s[tag=_e.log.damage_type.fire] run function server:game/combat/combat_log/log_events/damage_fire

tag @s remove _e.log.damage_type.generic