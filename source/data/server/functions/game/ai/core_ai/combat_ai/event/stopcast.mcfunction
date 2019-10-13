tag @s remove SMART_EVENT_CAST
tag @s[tag=SMARTCAST_INTERRUPT] remove SMARTCAST_INTERRUPT

scoreboard players reset @s[scores={spell_cast_t=1..}] spell_cast_t
function server:game/ai/core_ai/combat_ai/enable_ai