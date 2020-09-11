#TARGET
tag @a[tag=ENTITY_FLAG_SPELL_TARGET,distance=0..0.499,limit=1] add SPELL_EFFECT_SPIDER_WEB

#EFFECTS

#DELETE
execute if entity @a[tag=ENTITY_FLAG_SPELL_TARGET,distance=0..0.499] run kill @s