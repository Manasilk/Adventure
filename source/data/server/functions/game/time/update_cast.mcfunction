scoreboard players add @s spell_cast_t 1
execute if score @s spell_cast_t >= @s cast_t_max run tag @s add _e.call_spell_script

scoreboard players reset @s[tag=_e.call_spell_script] spell_diff
scoreboard players reset @s[tag=_e.call_spell_script] spell_cast_t
scoreboard players reset @s[tag=_e.call_spell_script] cast_t_max
scoreboard players reset @s[tag=_e.call_spell_script] has_target
tag @s[tag=_e.call_spell_script] remove SMART_EVENT_PREP_CAST
tag @s[tag=_e.call_spell_script] remove SMART_EVENT_LOAD_SPELL
tag @s[tag=_e.call_spell_script] remove SMART_EVENT_CAST

tag @s[tag=_e.call_spell_script,tag=SPELL_SCHOOL_TYPE_FIRE] remove SPELL_SCHOOL_TYPE_FIRE
tag @s[tag=_e.call_spell_script,tag=SPELL_SCHOOL_TYPE_FROST] remove SPELL_SCHOOL_TYPE_FROST
tag @s[tag=_e.call_spell_script,tag=SPELL_SCHOOL_TYPE_SHADOW] remove SPELL_SCHOOL_TYPE_SHADOW
tag @s[tag=_e.call_spell_script,tag=SPELL_SCHOOL_TYPE_HOLY] remove SPELL_SCHOOL_TYPE_HOLY
tag @s[tag=_e.call_spell_script,tag=SPELL_PARTICLE_SPECIAL] remove SPELL_PARTICLE_SPECIAL