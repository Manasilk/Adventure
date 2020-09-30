scoreboard players add @s spell_cast_t 1
tag @s[tag=!SMART_EVENT_CAST] add SMART_EVENT_CAST

tag @s[scores={spell_cast_t=50}] add SPELL_EFFECT_TELEPORT
tag @s[scores={spell_cast_t=50}] add player.teleport

execute if entity @s[tag=player.teleport,tag=!ENTITY_FLAG_TRAVEL_NETHER] in minecraft:the_nether run function internal:scripts/spells/spell_teleport_nether
execute if entity @s[tag=player.teleport,tag=ENTITY_FLAG_TRAVEL_NETHER] in minecraft:overworld run function internal:scripts/spells/spell_teleport_overworld