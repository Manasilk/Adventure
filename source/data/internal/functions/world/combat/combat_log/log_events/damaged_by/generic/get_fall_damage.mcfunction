advancement revoke @s only internal:world/combat_log/fall_damage
tag @s[scores={entity_air=..-1}] add SPELL_AURA_UNDERWATER
tag @s[tag=!SPELL_AURA_WITHER,tag=!SPELL_AURA_UNDERWATER,tag=!SPELL_AURA_GHOST] add combat_log.fall_damage
tag @s[tag=!SPELL_AURA_GHOST,tag=player.combat_log_toggled] add player.damaged_by_entity
tag @s[tag=!SPELL_AURA_GHOST,tag=player.combat_log_toggled] add combat_log.damage_type_generic
tag @s[tag=!SPELL_AURA_GHOST,tag=player.combat_log_toggled] add combat_log.damage_type_falling