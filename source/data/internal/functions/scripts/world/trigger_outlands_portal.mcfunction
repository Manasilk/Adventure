tag @s add SPELL_EFFECT_TELEPORT
tag @s add player.teleport

execute if entity @s[tag=player.teleport,tag=!ENTITY_FLAG_TRAVEL_END] in minecraft:the_end run function internal:scripts/spells/spell_teleport_end
execute if entity @s[tag=player.teleport,tag=ENTITY_FLAG_TRAVEL_END] in minecraft:overworld run function internal:scripts/spells/spell_teleport_overworld