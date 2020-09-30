advancement revoke @s only internal:world/combat_log/killed/elder_guardian
execute if entity @s[tag=player.combat_log_toggled] run data modify storage internal:combat_log entity set value '{"translate":"entity.elder_guardian"}'
tag @s[tag=!SPELL_AURA_GHOST,tag=player.combat_log_toggled] add player.killed_entity