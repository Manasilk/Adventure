tag @s remove SPELL_AURA_GHOST

execute store result score @s entity_curhp run data get entity @s Health 1
scoreboard players operation @s entity_temphp = @s entity_curhp