function internal:world/general/compute/random/lcg_rand
function internal:world/spells/get_chance_on_hit
scoreboard players operation @s spell_proc_pbty += @s rand

tag @s[scores={spell_proc_pbty=100..}] add SPELL_SCRIPT_HOOK_EFFECT_PROC
scoreboard players reset @s rand
scoreboard players reset @s spell_proc_pbty