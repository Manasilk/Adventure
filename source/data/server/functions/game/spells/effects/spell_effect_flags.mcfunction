tag @s[tag=SPELL_EFFECT_FLYING] remove SPELL_EFFECT_FLYING
tag @s[tag=!SPELL_EFFECT_FLYING,nbt={FallFlying:1b}] add SPELL_EFFECT_FLYING

tag @s[tag=SPELL_EFFECT_ENDER_PEARL] remove SPELL_EFFECT_ENDER_PEARL
tag @s[tag=!SPELL_EFFECT_ENDER_PEARL,scores={spell_pearl=1..}] add SPELL_EFFECT_ENDER_PEARL

tag @s[tag=SPELL_EFFECT_CHORUS_FRUIT] remove SPELL_EFFECT_CHORUS_FRUIT
tag @s[tag=!SPELL_EFFECT_CHORUS_FRUIT,scores={spell_fruit=1..}] add SPELL_EFFECT_CHORUS_FRUIT

tag @s[tag=SPELL_EFFECT_POTION] remove SPELL_EFFECT_POTION
tag @s[tag=!SPELL_EFFECT_POTION,scores={spell_potion=1..}] add SPELL_EFFECT_POTION
scoreboard players remove @s[scores={spell_potion=1..}] spell_potion 1

tag @s[tag=SPELL_EFFECT_TOTEM_OF_UNDYING] remove SPELL_EFFECT_TOTEM_OF_UNDYING
tag @s[tag=!SPELL_EFFECT_TOTEM_OF_UNDYING,scores={spell_undyiung=1..}] add SPELL_EFFECT_TOTEM_OF_UNDYING