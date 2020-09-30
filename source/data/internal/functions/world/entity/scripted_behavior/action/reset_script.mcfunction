scoreboard players set @s spell_id -1
function internal:world/entity/scripted_behavior/action/reset_states
function internal:world/entity/scripted_behavior/action/reset_timers
function internal:world/entity/scripted_behavior/action/reset_particles
function internal:world/entity/scripted_behavior/action/clear_target

tag @s[tag=SPELL_0] remove SPELL_0
tag @s[tag=SPELL_1] remove SPELL_1
tag @s[tag=SPELL_2] remove SPELL_2
tag @s[tag=SPELL_3] remove SPELL_3
tag @s[tag=SPELL_4] remove SPELL_4
tag @s[tag=SPELL_5] remove SPELL_5
tag @s[tag=SPELL_6] remove SPELL_6
tag @s[tag=SPELL_7] remove SPELL_7
tag @s[tag=SPELL_8] remove SPELL_8
tag @s[tag=SPELL_9] remove SPELL_9
tag @s[tag=SPELL_10] remove SPELL_10
tag @s[tag=SPELL_11] remove SPELL_11

tag @s[tag=SMART_EVENT_RESET] remove SMART_EVENT_RESET
tag @s remove SMART_EVENT_INIT_AI