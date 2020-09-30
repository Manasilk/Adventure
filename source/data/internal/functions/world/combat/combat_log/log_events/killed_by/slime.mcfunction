advancement revoke @s only internal:world/combat_log/killed_by/slime
execute if entity @s[tag=player.combat_log_toggled] run data modify storage internal:combat_log entity set value '{"translate":"entity.slime"}'
tag @s[tag=!SPELL_AURA_GHOST,tag=player.combat_log_toggled] add player.killed_by_entity