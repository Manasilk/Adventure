scoreboard players add @s spell_cast_t 1
execute if score @s spell_cast_t = @s cast_t_max run tag @s add _e.call_spell_script
data modify entity @s[tag=_e.call_spell_script] NoAI set value 0

scoreboard players reset @s[tag=_e.call_spell_script] cast_t_max
scoreboard players reset @s[tag=_e.call_spell_script] spell_cast_t
scoreboard players reset @s[tag=_e.call_spell_script] spell_diff
tag @s[tag=_e.call_spell_script] remove ENTITY_FLAG_SPELL_QUEUE
tag @s[tag=_e.call_spell_script] remove ENTITY_FLAG_PREP_SPELL_CAST
tag @s[tag=_e.call_spell_script] remove ENTITY_FLAG_CAST_NO_INTERRUPT
tag @s[tag=_e.call_spell_script] remove ENTITY_FLAG_CASTING
tag @s[tag=_e.call_spell_script,tag=ENTITY_FLAG_CAST_INTERRUPTED] remove ENTITY_FLAG_CAST_INTERRUPTED

tag @s[tag=_e.call_spell_script,tag=SPELL_SCHOOL_TYPE_FIRE] remove SPELL_SCHOOL_TYPE_FIRE
tag @s[tag=_e.call_spell_script,tag=SPELL_SCHOOL_TYPE_FROST] remove SPELL_SCHOOL_TYPE_FROST
tag @s[tag=_e.call_spell_script,tag=SPELL_SCHOOL_TYPE_SHADOW] remove SPELL_SCHOOL_TYPE_SHADOW
tag @s[tag=_e.call_spell_script,tag=SPELL_SCHOOL_TYPE_HOLY] remove SPELL_SCHOOL_TYPE_HOLY
tag @s[tag=_e.call_spell_script,tag=SPELL_PARTICLE_SPECIAL] remove SPELL_PARTICLE_SPECIAL