scoreboard players add @s cast_timer 1
execute if score @s cast_timer >= @s cast_timer_max run tag @s add entity.call_spell_script

execute if entity @s[tag=entity.call_spell_script] run function internal:world/entity/scripted_behavior/action/reset_states
execute if entity @s[tag=entity.call_spell_script] run function internal:world/entity/scripted_behavior/action/reset_timers
execute if entity @s[tag=entity.call_spell_script] run function internal:world/entity/scripted_behavior/action/reset_particles