scoreboard players add @s spell_cast_t 1
execute if score @s spell_cast_t >= @s cast_t_max run tag @s add _e.call_spell_script

execute if entity @s[tag=_e.call_spell_script] run function server:game/ai/core_ai/combat_ai/event/reset_states
execute if entity @s[tag=_e.call_spell_script] run function server:game/ai/core_ai/combat_ai/event/reset_timers
execute if entity @s[tag=_e.call_spell_script] run function server:game/ai/core_ai/combat_ai/event/reset_particles