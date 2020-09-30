advancement revoke @s only internal:world/combat_log/damaged_by/witch
execute if entity @s[tag=player.combat_log_toggled] run data modify storage internal:combat_log entity set value '{"translate":"entity.witch"}'
tag @s[tag=!SPELL_AURA_GHOST,tag=player.combat_log_toggled] add player.damaged_by_entity
tag @s[tag=combat_log.damage_type_magic] remove combat_log.damage_type_magic
tag @s[tag=combat_log.damage_type_generic] remove combat_log.damage_type_generic