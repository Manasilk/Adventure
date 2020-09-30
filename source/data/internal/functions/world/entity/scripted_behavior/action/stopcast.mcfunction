tag @s remove SMART_EVENT_CAST
tag @s[tag=SMARTCAST_INTERRUPT] remove SMARTCAST_INTERRUPT

scoreboard players reset @s[scores={cast_timer=1..}] cast_timer
execute if entity @s[tag=ENTITY_FLAG_NO_AI] run function internal:world/entity/scripted_behavior/action/enable_ai
execute if entity @s[tag=entity.call_spell_script] run function internal:world/entity/scripted_behavior/target/set_target_null