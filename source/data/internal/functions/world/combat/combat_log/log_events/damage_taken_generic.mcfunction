execute if entity @s[tag=combat_log.damage_type_void] run function internal:world/combat/combat_log/log_events/damage_void
execute if entity @s[tag=combat_log.damage_type_falling] run function internal:world/combat/combat_log/log_events/damage_fall
execute if entity @s[tag=combat_log.damage_type_starvation] run function internal:world/combat/combat_log/log_events/damage_starvation
execute if entity @s[tag=combat_log.damage_type_magic] run function internal:world/combat/combat_log/log_events/damage_magic
execute if entity @s[tag=combat_log.damage_type_fire] run function internal:world/combat/combat_log/log_events/damage_fire
execute if entity @s[tag=combat_log.damage_type_explosion] run function internal:world/combat/combat_log/log_events/damage_explosion
execute if entity @s[tag=combat_log.damage_type_lightning] run function internal:world/combat/combat_log/log_events/damage_lightning

tag @s remove combat_log.damage_type_generic