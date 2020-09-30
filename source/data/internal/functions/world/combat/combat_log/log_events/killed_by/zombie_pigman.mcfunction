advancement revoke @s only internal:world/combat_log/killed_by/zombie_pigman
execute if entity @s[tag=player.combat_log_toggled] run data modify storage internal:combat_log entity set value '{"translate":"entity.zombie_pigman"}'
tag @s[tag=!SPELL_AURA_GHOST,tag=player.combat_log_toggled] add player.killed_by_entity