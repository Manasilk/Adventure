tag @s add SPELL_EFFECT_TELEPORT
tag @s add _e.teleport

execute if entity @s[tag=_e.teleport,tag=!ENTITY_FLAG_TRAVEL_END] in minecraft:the_end run function server:scripts/spells/spell_teleport_end
execute if entity @s[tag=_e.teleport,tag=ENTITY_FLAG_TRAVEL_END] in minecraft:overworld run function server:scripts/spells/spell_teleport_overworld