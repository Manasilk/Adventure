execute unless entity @s[tag=ENTITY_FLAG_NO_AI] run function internal:world/entity/scripted_behavior/action/disable_ai
scoreboard players operation @s[tag=SMARTCAST_TRIGGERED] cast_timer = @s cast_timer_max
teleport @s ~ ~ ~ facing entity @a[tag=ENTITY_FLAG_SPELL_TARGET,distance=0..31.999,limit=1]

function internal:world/entity/scripted_behavior/action/update_cast_timer
execute if score @s entity_tick matches 10 run function internal:world/particles/particle_manager
execute if entity @s[tag=entity.call_spell_script] run function internal:world/entity/scripted_behavior/action/stopcast