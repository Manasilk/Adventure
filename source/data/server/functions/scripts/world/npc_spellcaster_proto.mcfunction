tag @s[tag=!ENTITY_HAS_SPELL_QUEUE,scores={spell_itr=0}] add SPELL_0
tag @s[tag=!ENTITY_HAS_SPELL_QUEUE,scores={spell_itr=1}] add SPELL_1
tag @s[tag=!ENTITY_HAS_SPELL_QUEUE,scores={spell_itr=2}] add SPELL_2

tag @s[tag=!ENTITY_HAS_SPELL_QUEUE,scores={cast_t_max=0}] add _h.get_spell_info
execute if entity @s[tag=SPELL_0,tag=!ENTITY_HAS_SPELL_QUEUE,tag=_h.get_spell_info] run function server:game/spells/spell_info/spell_info_spellname
execute if entity @s[tag=SPELL_1,tag=!ENTITY_HAS_SPELL_QUEUE,tag=_h.get_spell_info] run function server:game/spells/spell_info/spell_info_spellname
execute if entity @s[tag=SPELL_2,tag=!ENTITY_HAS_SPELL_QUEUE,tag=_h.get_spell_info] run function server:game/spells/spell_info/spell_info_spellname

execute unless entity @s[tag=_e.call_spell_script] run function server:game/time/update_cast
execute unless entity @s[tag=_e.call_spell_script] run function server:game/particles/particle_mgr

execute if entity @s[tag=SPELL_0,tag=_e.call_spell_script] run function server:game/spells/spell_frostbolt
execute if entity @s[tag=SPELL_1,tag=_e.call_spell_script] run function server:game/spells/spell_fireball
execute if entity @s[tag=SPELL_2,tag=_e.call_spell_script] run function server:game/spells/spell_frostfire_bolt