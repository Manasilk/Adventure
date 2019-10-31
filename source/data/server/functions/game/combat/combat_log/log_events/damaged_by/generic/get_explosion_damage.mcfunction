advancement revoke @s only server:internal/combat_log/explosion_damage 
tag @s[tag=!SPELL_AURA_GHOST,tag=SHOW_LOG] add SPELL_EFFECT_EXPLOSION
tag @s[tag=!SPELL_AURA_GHOST,tag=SHOW_LOG] add _e.log.damage_type.generic
tag @s[tag=!SPELL_AURA_GHOST,tag=SHOW_LOG] add _e.log.event_type.damaged_by