function server:game/movement/follow_target
tag @a[tag=ENTITY_FLAG_SPELL_TARGET,distance=0..0.499,limit=1] add SPELL_EFFECT_SPIDER_WEB
execute if entity @a[tag=ENTITY_FLAG_SPELL_TARGET,distance=0..0.499] run kill @s