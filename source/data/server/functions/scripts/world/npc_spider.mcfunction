#spell list available to this creature
tag @s[tag=!ENTITY_FLAG_IN_COMBAT] remove spell_script_spider_web
tag @s[tag=ENTITY_FLAG_IN_COMBAT] add spell_script_spider_web

#wait between casts
scoreboard players reset @s[tag=!SMART_EVENT_PREP_CAST,scores={spell_diff=200..}] spell_diff
scoreboard players add @s[tag=!SMART_EVENT_PREP_CAST] spell_diff 1
execute if score @s[tag=!SMART_EVENT_PREP_CAST] spell_diff matches 200 run function server:game/ai/core_ai/combat_ai/event/get_cast_phase
#check for target in los, range
scoreboard players reset @s[tag=SMART_EVENT_PREP_CAST,scores={entity_upd_t=10..}] entity_upd_t
scoreboard players add @s[tag=SMART_EVENT_PREP_CAST] entity_upd_t 1
tag @s[tag=!SMART_EVENT_SKIP_LOS,scores={entity_upd_t=10}] add _e.find_los_target
execute if score @s[tag=!SMART_EVENT_SKIP_LOS] entity_upd_t matches 10 run function server:game/ai/core_ai/combat_ai/event/check_target_range
scoreboard players set @s[tag=SMART_EVENT_PREP_CAST,tag=SMART_EVENT_SKIP_LOS] has_target 1
#events
tag @s[tag=!SMART_EVENT_CAST,scores={has_target=1}] add SMART_EVENT_CAST
tag @s[tag=SMART_EVENT_CAST,scores={has_target=0}] add SMARTCAST_INTERRUPT
execute if entity @s[tag=SMARTCAST_INTERRUPT] run function server:game/ai/core_ai/combat_ai/event/stopcast
execute if entity @s[tag=SMART_EVENT_CAST] run function server:game/ai/core_ai/combat_ai/event/start_cast

#call spell trigger to run scripts
execute if entity @s[tag=_e.call_spell_script] run function server:game/ai/core_ai/combat_ai/event/stopcast
execute if entity @s[tag=_e.call_spell_script,tag=spell_script_spider_web] run function server:game/spells/trigger/spell_spider_web