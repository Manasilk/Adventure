function server:game/world/math/random/rand
execute if entity @s[tag=SPELL_SCRIPT_HOOK_SPELL_HIT] run function server:game/spells/get_spell_proc_chance
execute if entity @s[tag=SPELL_SCRIPT_HOOK_MELEE_HIT] run function server:game/spells/get_melee_proc_chance
scoreboard players operation @s rand += @s spell_proc_pbty
scoreboard players set @s[scores={rand=101..}] rand 100

tag @s remove SPELL_SCRIPT_HOOK_HIT
tag @s[scores={rand=100}] add SPELL_SCRIPT_HOOK_EFFECT_PROC