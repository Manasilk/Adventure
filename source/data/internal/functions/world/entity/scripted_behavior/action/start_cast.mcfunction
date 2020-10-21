execute unless entity @s[tag=ENTITY_FLAG_NO_AI] run function internal:world/entity/scripted_behavior/action/disable_ai
scoreboard players operation @s[tag=SMARTCAST_TRIGGERED] cast_timer = @s cast_timer_max
execute as @a[tag=collision.line_of_sight_target,distance=0..31.999] if score @s player_id = #temp target_id run tag @s add creature.find_target_by_id
teleport @s[tag=!TARGET_POSITION,tag=!TARGET_SELF] ~ ~ ~ facing entity @a[tag=creature.find_targe_by_id,distance=0..31.999,limit=1]
tag @a[tag=creature.find_target_by_id,distance=0..31.999] remove creature.find_target_by_id
scoreboard players reset #temp target_id

function internal:world/entity/scripted_behavior/action/update_cast_timer
execute if score @s entity_tick matches 10 run function internal:world/particles/particle_manager
execute if entity @s[tag=entity.call_spell_script] run function internal:world/entity/scripted_behavior/action/stopcast