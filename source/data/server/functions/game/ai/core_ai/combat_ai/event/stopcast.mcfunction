tag @s remove SMART_EVENT_PREP_CAST
tag @s remove SMART_EVENT_LOAD_SPELL
tag @s remove SMART_EVENT_CAST
tag @s[tag=SMARTCAST_INTERRUPT] remove SMARTCAST_INTERRUPT
tag @s[tag=SMARTCAST_TRIGGERED] remove SMARTCAST_TRIGGERED
function server:game/ai/core_ai/combat_ai/event/clear_target
scoreboard players reset @s spell_diff
scoreboard players reset @s spell_cast_t
scoreboard players reset @s cast_t_max
scoreboard players reset @s has_target

tag @s[tag=SPELL_SCHOOL_TYPE_FIRE] remove SPELL_SCHOOL_TYPE_FIRE
tag @s[tag=SPELL_SCHOOL_TYPE_FROST] remove SPELL_SCHOOL_TYPE_FROST
tag @s[tag=SPELL_SCHOOL_TYPE_SHADOW] remove SPELL_SCHOOL_TYPE_SHADOW
tag @s[tag=SPELL_SCHOOL_TYPE_HOLY] remove SPELL_SCHOOL_TYPE_HOLY
tag @s[tag=SPELL_PARTICLE_SPECIAL] remove SPELL_PARTICLE_SPECIAL

execute if entity @s[tag=ENTITY_FLAG_NO_AI] run function server:game/ai/core_ai/combat_ai/enable_ai