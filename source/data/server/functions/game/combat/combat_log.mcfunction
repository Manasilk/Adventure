execute if entity @s[tag=ENTITY_FLAG_IN_COMBAT,tag=!_e.enter_combat] run function server:game/combat/unit_events/enter_combat
execute if entity @s[tag=!ENTITY_FLAG_IN_COMBAT,tag=_e.enter_combat] run function server:game/combat/unit_events/clear_combat

execute if score @s entity_upd_t = #const UPD_CYCLE run function server:game/combat/log_events/update