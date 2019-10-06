execute if entity @s[tag=SPELL_SCRIPT_HOOK_EFFECT_PROC] run tag @e[type=#server:creature,nbt={HurtTime:10s}] add SPELL_EFFECT_THUNDERFURY
tag @s remove SPELL_SCRIPT_HOOK_EFFECT_PROC