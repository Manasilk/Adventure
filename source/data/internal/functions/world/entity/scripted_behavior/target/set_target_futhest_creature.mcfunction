tag @e[type=#internal:creature,tag=!SPELL_AURA_INVISIBILITY,distance=0..31.999,sort=furthest,limit=1] add ENTITY_FLAG_SPELL_TARGET
teleport @s ~ ~ ~ facing entity @e[type=#internal:creature,tag=ENTITY_FLAG_SPELL_TARGET,distance=0..31.999,sort=furthest,limit=1]