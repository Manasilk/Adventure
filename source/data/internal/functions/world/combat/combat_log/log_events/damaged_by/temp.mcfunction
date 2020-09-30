advancement revoke @s only internal:world/combat_log/damaged_by/entity
execute if entity @s[tag=player.combat_log_toggled] run data modify storage internal:combat_log entity set value '{"translate":"entity.entity"}'
tag @s[tag=!SPELL_AURA_GHOST] add player.damaged_by_entity