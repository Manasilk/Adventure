tag @s add SPELL_EFFECT_TELEPORT
tag @s add _e.teleport

execute if entity @s[tag=_e.teleport,tag=!ENTITY_FLAG_TRAVEL_NETHER] in minecraft:the_nether run function server:scripts/spells/spell_teleport_nether
execute if entity @s[tag=_e.teleport,tag=ENTITY_FLAG_TRAVEL_NETHER] in minecraft:overworld run function server:scripts/spells/spell_teleport_overworld