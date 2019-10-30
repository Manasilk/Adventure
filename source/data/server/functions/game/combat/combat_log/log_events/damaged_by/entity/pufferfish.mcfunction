advancement revoke @s only server:internal/combat_log/damaged_by/pufferfish
execute if entity @s[tag=SHOW_LOG] positioned 0 0 0 run data merge entity @e[type=#server:area_trigger,tag=entity_type_param,distance=0..0.001,limit=1] {CustomName:'{"translate":"entity.pufferfish"}'}
tag @s[tag=!SPELL_AURA_GHOST,tag=SHOW_LOG] add _e.log.event_type.damaged_by