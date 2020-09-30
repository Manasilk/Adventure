tag @e[type=#internal:creature,tag=ENTITY_FLAG_SPELL_TARGET,distance=0..63.999] remove ENTITY_FLAG_SPELL_TARGET
tag @a[tag=ENTITY_FLAG_SPELL_TARGET,distance=0..63.999] remove ENTITY_FLAG_SPELL_TARGET
scoreboard players reset @s has_target