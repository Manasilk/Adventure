advancement revoke @s only server:internal/combat_log/killed/squid
execute if entity @s[tag=SHOW_LOG] positioned 0 0 0 run data merge entity @e[type=#server:area_trigger,tag=entity_type_param,distance=0..0.001,limit=1] {CustomName:'{"translate":"entity.squid"}'}
tag @s[tag=!SPELL_AURA_GHOST,tag=SHOW_LOG] add _e.log.event_type.killed