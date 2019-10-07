tag @s remove FB_FLAG_PLAYER_IGNORE
tag @s[tag=SPELL_EFFECT_ENDER_PEARL] remove SPELL_EFFECT_ENDER_PEARL
tag @s[tag=SPELL_EFFECT_CHORUS_FRUIT] remove SPELL_EFFECT_CHORUS_FRUIT

scoreboard players remove @s[scores={spell_pearl=1..}] spell_pearl 1
scoreboard players remove @s[scores={spell_chorus=1..}] spell_chorus 1

scoreboard players set @s[tag=SPELL_AURA_GHOST] _h.has_died 0
execute store result score @s entity_temphp run data get entity @s Health 1
tag @s[tag=SPELL_AURA_GHOST] remove SPELL_AURA_GHOST

scoreboard players set @s _FB._T.PurgeFlag 0