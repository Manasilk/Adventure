advancement revoke @s only internal:world/combat_log/damaged/mooshroom
execute if entity @s[tag=player.combat_log_toggled] run data modify storage internal:combat_log entity set value '{"translate":"entity.mooshroom"}'
tag @s[tag=!SPELL_AURA_GHOST,tag=player.combat_log_toggled] add player.damaged_entity