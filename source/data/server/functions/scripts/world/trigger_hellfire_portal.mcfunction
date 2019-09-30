tag @s add SPELL_EFFECT_TELEPORT

execute if entity @s[tag=SPELL_EFFECT_TELEPORT,tag=!ENTITY_FLAG_TRAVEL_NETHER] run function server:game/spells/spell_teleport_nether
execute if entity @s[tag=SPELL_EFFECT_TELEPORT,tag=ENTITY_FLAG_TRAVEL_NETHER] run function server:game/spells/spell_teleport_overworld