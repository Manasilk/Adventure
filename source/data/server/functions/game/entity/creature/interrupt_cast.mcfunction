data modify entity @s NoAI set value 0
scoreboard players reset @s spell_cast_t
tag @s remove ENTITY_FLAG_CASTING
tag @s add ENTITY_FLAG_CAST_INTERRUPTED