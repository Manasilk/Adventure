scoreboard players remove @s silence_t 1
scoreboard players set @s[scores={spell_cast_t=1..}] spell_diff -80
scoreboard players reset @s spell_cast_t
tag @s[tag=SMART_EVENT_CAST] add SMARTCAST_INTERRUPT
tag @s[scores={silence_t=0}] remove SPELL_EFFECT_SILENCE