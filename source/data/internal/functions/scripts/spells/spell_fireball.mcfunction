#TARGET
tag @a[tag=ENTITY_FLAG_SPELL_TARGET,distance=0..0.999,limit=1] add SPELL_EFFECT_FIREBALL

#EFFECTS
particle minecraft:block minecraft:orange_wool ~ ~ ~ 0.0 0.0 0.0 0.1 1 normal @a
particle minecraft:block minecraft:red_wool ~ ~ ~ 0.01 0.1 0.1 0.1 1 normal @a

#DELETE
execute if entity @a[tag=ENTITY_FLAG_SPELL_TARGET,distance=0..0.499] run kill @s