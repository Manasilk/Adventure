execute if entity @s[tag=ENTITY_FLAG_IN_COMBAT,tag=!_e.enter_combat] run function server:game/combat/combat_log/log_events/enter_combat
execute if entity @s[tag=!ENTITY_FLAG_IN_COMBAT,tag=_e.enter_combat] run function server:game/combat/combat_log/log_events/clear_combat

execute if entity @s[tag=_e.log.event_type.damaged] run function server:game/combat/combat_log/log_events/log_damaged
execute if entity @s[tag=_e.log.event_type.damaged_by] run function server:game/combat/combat_log/log_events/log_damaged_by
execute if entity @s[tag=_e.log.event_type.killed] run function server:game/combat/combat_log/log_events/log_killed
execute if entity @s[tag=_e.log.event_type.killed_by] run function server:game/combat/combat_log/log_events/log_killed_by

execute if score @s[tag=!SPELL_AURA_GHOST] entity_upd_t = #const UPD_CYCLE run function server:game/combat/combat_log/update