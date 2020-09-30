advancement revoke @s only internal:world/combat_log/damaged_by/creeper
execute if entity @s[tag=player.combat_log_toggled] run data modify storage internal:combat_log entity set value '{"translate":"entity.creeper"}'
tag @s[tag=!SPELL_AURA_GHOST,tag=player.combat_log_toggled] add player.damaged_by_entity
tag @s[tag=combat_log.damage_type_explosion] remove combat_log.damage_type_explosion
tag @s[tag=combat_log.damage_type_generic] remove combat_log.damage_type_generic