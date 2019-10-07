data modify entity @s NoAI set value 1
tag @s add ENTITY_FLAG_PREP_SPELL_CAST

function server:game/spells/get_spell_info
teleport @s ~ ~ ~ facing entity @a[tag=ENTITY_FLAG_SPELL_TARGET,distance=0..31.999,limit=1]

function server:game/entity/creature/check_target_los