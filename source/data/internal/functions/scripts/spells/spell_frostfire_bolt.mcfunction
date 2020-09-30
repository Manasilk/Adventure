#TARGET
tag @a[tag=ENTITY_FLAG_SPELL_TARGET,distance=0..0.999,limit=1] add SPELL_EFFECT_FROSTFIRE_BOLT

#EFFECTS
particle minecraft:block minecraft:blue_ice ~ ~ ~ 0.05 0.05 0.05 0.0 1 normal @a
particle minecraft:block minecraft:red_wool ~ ~ ~ 0.05 0.05 0.05 0.0 1 normal @a

#DELETE
execute if entity @a[tag=ENTITY_FLAG_SPELL_TARGET,distance=0..0.499] run kill @s