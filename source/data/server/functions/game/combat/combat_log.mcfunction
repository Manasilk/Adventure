execute if entity @s[tag=ENTITY_FLAG_IN_COMBAT,tag=!_e.enter_combat] run function server:game/combat/unit_events/enter_combat
execute if entity @s[tag=!ENTITY_FLAG_IN_COMBAT,tag=_e.enter_combat] run function server:game/combat/unit_events/clear_combat

execute unless score @s entity_curhp = @s entity_temphp run function server:game/combat/unit_events/get_health_restored
execute if entity @s[]