tag @s remove SMART_EVENT_CAST
tag @s[tag=SMARTCAST_INTERRUPT] remove SMARTCAST_INTERRUPT

scoreboard players reset @s[scores={cast_timer=1..}] cast_timer
execute if entity @s[tag=ENTITY_FLAG_NO_AI] run function server:game/ai/core_ai/combat_ai/enable_ai
execute if entity @s[tag=_e.call_spell_script] run function server:game/ai/core/combat_ai/target/set_target_null