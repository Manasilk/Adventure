advancement revoke @s only server:internal/combat_log/fall_damage
tag @s[scores={entity_air=..-1}] add SPELL_AURA_UNDERWATER
tag @s[tag=!SPELL_AURA_WITHER,tag=!SPELL_AURA_UNDERWATER,tag=!SPELL_AURA_GHOST] add _e.fall_damage
tag @s[tag=!SPELL_AURA_GHOST,tag=SHOW_LOG] add _e.log.event_type.damaged_by
tag @s[tag=!SPELL_AURA_GHOST,tag=SHOW_LOG] add _e.log.damage_type.generic
tag @s[tag=!SPELL_AURA_GHOST,tag=SHOW_LOG] add _e.log.damage_type.falling