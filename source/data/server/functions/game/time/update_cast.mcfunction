scoreboard players add @s[scores={cast_t_max=1..}] spell_cast_t 1
execute if score @s spell_cast_t = cast_t_max run tag @s add _e.call_spell_script
data modify entity @s[tag=_e.call_spell_script] NoAI set value 0
scoreboard players set @s cast_t_max 0
scoreboard players set @s spell_cast_t 0