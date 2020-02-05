execute if score @s[tag=!SMART_EVENT_LOAD_SPELL] spell_scripts > #const NULL run function server:game/ai/core_ai/combat_ai/event/get_next_spell
#> REMOVE LOADED SPELL SCRIPTS HERE
tag @s[tag=!SMART_EVENT_INIT_AI] remove spell_script_fireball
tag @s[tag=!SMART_EVENT_INIT_AI] remove spell_script_frostbolt
tag @s[tag=!SMART_EVENT_INIT_AI] remove spell_script_frostfire_bolt
tag @s[tag=!SMART_EVENT_INIT_AI] remove spell_script_fire_armor
tag @s[tag=!SMART_EVENT_INIT_AI] add SMART_EVENT_INIT_AI
#> DECLARE SPELL SCRIPTS HERE
tag @s[tag=SPELL_0,tag=!spell_script_fireball] add spell_script_fireball
tag @s[tag=SPELL_1,tag=!spell_script_frostbolt] add spell_script_frostbolt
tag @s[tag=SPELL_2,tag=!spell_script_frostfire_bolt] add spell_script_frostfire_bolt
tag @s[tag=SPELL_3,tag=!spell_script_fire_armor] add spell_script_fire_armor

#wait between casts
scoreboard players reset @s[tag=!SMART_EVENT_PREP_CAST,scores={cast_delay=200..}] cast_delay
scoreboard players add @s[tag=!SMART_EVENT_PREP_CAST] cast_delay 1
execute if score @s[tag=!SMART_EVENT_PREP_CAST] cast_delay matches 200 run function server:game/ai/core_ai/combat_ai/event/get_cast_phase
#check for target in los, range
scoreboard players reset @s[tag=SMART_EVENT_PREP_CAST,scores={entity_upd_t=10..}] entity_upd_t
scoreboard players add @s[tag=SMART_EVENT_PREP_CAST] entity_upd_t 1
tag @s[tag=!SMART_EVENT_SKIP_LOS,scores={entity_upd_t=9}] add _e.find_los_target
execute if score @s[tag=!SMART_EVENT_SKIP_LOS] entity_upd_t matches 10 run function server:game/ai/core_ai/combat_ai/event/check_target_range
scoreboard players set @s[tag=SMART_EVENT_PREP_CAST,tag=SMART_EVENT_SKIP_LOS] has_target 1
#events
tag @s[tag=!SMART_EVENT_CAST,tag=!SPELL_EFFECT_SILENCE,scores={has_target=1}] add SMART_EVENT_CAST
tag @s[tag=SMART_EVENT_CAST,scores={has_target=0}] add SMARTCAST_INTERRUPT
execute if entity @s[tag=SMARTCAST_INTERRUPT] run function server:game/ai/core_ai/combat_ai/event/stopcast
execute if entity @s[tag=SMART_EVENT_CAST] run function server:game/ai/core_ai/combat_ai/event/start_cast
execute if entity @s[tag=SMART_EVENT_RESET] run function server:game/ai/core_ai/combat_ai/event/reset_script

#call spell trigger to run scripts
execute if entity @s[tag=_e.call_spell_script] run function server:game/ai/core_ai/combat_ai/event/stopcast
execute if entity @s[tag=_e.call_spell_script,tag=spell_script_fireball] run function server:game/spells/trigger/spell_fireball
execute if entity @s[tag=_e.call_spell_script,tag=spell_script_frostbolt] run function server:game/spells/trigger/spell_frostbolt
execute if entity @s[tag=_e.call_spell_script,tag=spell_script_frostfire_bolt] run function server:game/spells/trigger/spell_frostfire_bolt
execute if entity @s[tag=_e.call_spell_script,tag=spell_script_fire_armor] run function server:game/spells/trigger/spell_fire_armor