advancement revoke @s only internal:world/combat_log/magic_damage
tag @s[tag=!SPELL_AURA_GHOST,tag=player.combat_log_toggled] add player.damaged_by_entity
tag @s[tag=!SPELL_AURA_GHOST,tag=player.combat_log_toggled] add combat_log.damage_type_generic
tag @s[tag=!SPELL_AURA_GHOST,tag=player.combat_log_toggled] add combat_log.damage_type_magic