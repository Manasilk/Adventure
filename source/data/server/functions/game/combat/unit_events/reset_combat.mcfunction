scoreboard players set @s[scores={combat_reset_t=1..}] combat_reset_t 0
tag @s remove ENTITY_FLAG_IN_COMBAT
tag @s[tag=ENTITY_FLAG_SPELL_TARGET] remove ENTITY_FLAG_SPELL_TARGET
function server:game/combat/combat_log/log_events/clear_combat