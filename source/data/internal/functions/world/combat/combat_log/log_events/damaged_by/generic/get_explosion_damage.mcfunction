advancement revoke @s only internal:world/combat_log/explosion_damage 
tag @s[tag=!SPELL_AURA_GHOST,tag=player.combat_log_toggled] add SPELL_EFFECT_EXPLOSION
tag @s[tag=!SPELL_AURA_GHOST,tag=player.combat_log_toggled] add combat_log.damage_type_generic
tag @s[tag=!SPELL_AURA_GHOST,tag=player.combat_log_toggled] add combat_log.damage_type_explosion
tag @s[tag=!SPELL_AURA_GHOST,tag=player.combat_log_toggled] add player.damaged_by_entity