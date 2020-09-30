advancement revoke @s only internal:world/combat_log/killed/creeper
execute if entity @s[tag=player.combat_log_toggled] run data modify storage internal:combat_log entity set value '{"translate":"entity.creeper"}'
tag @s[tag=!SPELL_AURA_GHOST,tag=player.combat_log_toggled] add player.killed_entity