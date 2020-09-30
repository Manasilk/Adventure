advancement revoke @s only internal:world/combat_log/damaged_by/magma_cube
execute if entity @s[tag=player.combat_log_toggled] run data modify storage internal:combat_log entity set value '{"translate":"entity.magma_cube"}'
tag @s[tag=!SPELL_AURA_GHOST,tag=player.combat_log_toggled] add player.damaged_by_entity