execute if entity @s[tag=ENTITY_FLAG_IN_COMBAT,tag=!player.entered_combat] run function internal:world/combat/combat_log/log_events/enter_combat
execute if entity @s[tag=!ENTITY_FLAG_IN_COMBAT,tag=player.entered_combat] run function internal:world/combat/combat_log/log_events/clear_combat

execute if entity @s[tag=player.damaged_entity] run function internal:world/combat/combat_log/log_events/log_damaged
execute if entity @s[tag=player.damaged_by_entity] run function internal:world/combat/combat_log/log_events/log_damaged_by
execute if entity @s[tag=player.killed_entity] run function internal:world/combat/combat_log/log_events/log_killed
execute if entity @s[tag=player.killed_by_entity] run function internal:world/combat/combat_log/log_events/log_killed_by

execute if score @s[tag=!SPELL_AURA_GHOST] entity_tick = #const UPD_CYCLE run function internal:world/combat/combat_log/update