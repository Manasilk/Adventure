#> REMOVE LOADED SPELL SCRIPTS HERE
tag @s[tag=!SMART_EVENT_INIT_AI] remove spell_script_spider_web
tag @s[tag=!SMART_EVENT_INIT_AI] add SMART_EVENT_INIT_AI
#> DECLARE SPELL SCRIPTS HERE
tag @s[tag=!spell_script_spider_web] add spell_script_spider_web

#wait between casts
scoreboard players reset @s[tag=!SMART_EVENT_PREP_CAST,scores={cast_delay=200..}] cast_delay
scoreboard players add @s[tag=!SMART_EVENT_PREP_CAST] cast_delay 1
execute if score @s[tag=!SMART_EVENT_PREP_CAST] cast_delay matches 200 run function internal:world/entity/scripted_behavior/action/get_cast_phase
#check for target in los, range
scoreboard players reset @s[tag=SMART_EVENT_PREP_CAST,scores={entity_tick=10..}] entity_tick
scoreboard players add @s[tag=SMART_EVENT_PREP_CAST] entity_tick 1
tag @s[tag=!SMART_EVENT_SKIP_LOS,scores={entity_tick=9}] add collision.attempt_line_of_sight_collision
execute if score @s[tag=!SMART_EVENT_SKIP_LOS] entity_tick matches 10 run function internal:world/entity/scripted_behavior/action/check_target_range
scoreboard players set @s[tag=SMART_EVENT_PREP_CAST,tag=SMART_EVENT_SKIP_LOS] has_target 1
#events
tag @s[tag=!SMART_EVENT_CAST,scores={has_target=1}] add SMART_EVENT_CAST
tag @s[tag=SMART_EVENT_CAST,scores={has_target=0}] add SMARTCAST_INTERRUPT
execute if entity @s[tag=SMARTCAST_INTERRUPT] run function internal:world/entity/scripted_behavior/action/stopcast
execute if entity @s[tag=SMART_EVENT_CAST] run function internal:world/entity/scripted_behavior/action/start_cast
execute if entity @s[tag=SMART_EVENT_RESET] run function internal:world/entity/scripted_behavior/action/reset_script

#call spell trigger to run scripts
execute if entity @s[tag=entity.call_spell_script] run function internal:world/entity/scripted_behavior/action/stopcast
execute if entity @s[tag=entity.call_spell_script,tag=spell_script_spider_web] run function internal:world/spells/trigger/spell_spider_web