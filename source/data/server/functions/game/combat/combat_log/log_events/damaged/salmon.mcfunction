advancement revoke @s only server:internal/combat_log/damaged/salmon
execute positioned 0 0 0 run data merge entity @e[type=#server:area_trigger,tag=entity_type_param,distance=0..0.001,limit=1] {CustomName:'{"translate":"entity.salmon"}'}
tag @s[tag=!SPELL_AURA_GHOST] add _e.log.event_type.damaged