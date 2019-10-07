execute unless entity @s[tag=ENTITY_FLAG_HAS_SPELL_QUEUE,scores={spellbook=1..}] run function server:game/entity/creature/iterate_spells
tag @s[tag=SPELL_0,tag=!spell_script_fireball] add spell_script_fireball
tag @s[tag=SPELL_1,tag=!spell_script_frostbolt] add spell_script_frostbolt
tag @s[tag=SPELL_2,tag=!spell_script_frostfire_bolt] add spell_script_frostfire_bolt

scoreboard players set @s[tag=!ENTITY_FLAG_PREP_SPELL_CAST,scores={spell_diff=200..}] spell_diff 0
scoreboard players add @s[tag=!ENTITY_FLAG_PREP_SPELL_CAST] spell_diff 1
execute if score @s[tag=!ENTITY_FLAG_PREP_SPELL_CAST] spell_diff matches 200 run function server:game/entity/creature/prepare_cast

#continuously check los for target we're facing
execute if entity @s[tag=ENTITY_FLAG_PREP_SPELL_CAST] run scoreboard players add @s entity_upd_t 1
execute if score @s[tag=ENTITY_FLAG_PREP_SPELL_CAST] entity_upd_t matches 10 run function server:game/entity/creature/check_target_los

execute if entity @s[tag=!ENTITY_FLAG_CASTING,tag=ENTITY_FLAG_CAST_INTERRUPTED] if entity @a[tag=los_target,tag=ENTITY_FLAG_SPELL_TARGET,distance=0..31.999] run function server:game/entity/creature/continue_cast
execute if entity @s[tag=!ENTITY_FLAG_CASTING,tag=!ENTITY_FLAG_CAST_NO_TARGET] if entity @a[tag=los_target,tag=ENTITY_FLAG_SPELL_TARGET,distance=0..31.999] run tag @s add ENTITY_FLAG_CASTING
execute if entity @s[tag=!ENTITY_FLAG_CASTING,tag=ENTITY_FLAG_CAST_NO_TARGET] run tag @s add ENTITY_FLAG_CASTING
execute if entity @s[tag=ENTITY_FLAG_CASTING,tag=!ENTITY_FLAG_CAST_NO_INTERRUPT] unless entity @a[tag=los_target,tag=ENTITY_FLAG_SPELL_TARGET,distance=0..31.999] run function server:game/entity/creature/interrupt_cast
execute if entity @s[tag=ENTITY_FLAG_CASTING] run function server:game/entity/creature/get_threat_target

execute if score @s[tag=ENTITY_FLAG_CASTING] entity_upd_t matches 0 run function server:game/particles/particle_mgr
execute if entity @s[tag=ENTITY_FLAG_CASTING] run function server:game/time/update_cast

execute if entity @s[tag=_e.call_spell_script,tag=spell_script_fireball] run function server:game/spells/trigger/spell_fireball
execute if entity @s[tag=_e.call_spell_script,tag=spell_script_frostbolt] run function server:game/spells/trigger/spell_frostbolt
execute if entity @s[tag=_e.call_spell_script,tag=spell_script_frostfire_bolt] run function server:game/spells/trigger/spell_frostfire_bolt