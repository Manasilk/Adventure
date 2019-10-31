advancement revoke @s only server:internal/combat_log/damaged_by/guardian
execute if entity @s[tag=SHOW_LOG] positioned 0 0 0 run data merge entity @e[type=#server:area_trigger,tag=entity_type_param,distance=0..0.001,limit=1] {CustomName:'{"translate":"entity.guardian"}'}
tag @s[tag=!SPELL_AURA_GHOST,tag=SHOW_LOG] add _e.log.event_type.damaged_by
tag @s[tag=_e.log.damage_type.magic] remove _e.log.damage_type.magic
tag @s[tag=_e.log.damage_type.generic] remove _e.log.damage_type.generic