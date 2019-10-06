tag @s[tag=SPELL_EFFECT_FLYING] remove SPELL_EFFECT_FLYING
tag @s[tag=!SPELL_EFFECT_FLYING,nbt={FallFlying:1b}] add SPELL_EFFECT_FLYING

tag @s[tag=SPELL_EFFECT_ENDER_PEARL] remove SPELL_EFFECT_ENDER_PEARL
tag @s[tag=!SPELL_EFFECT_ENDER_PEARL,scores={spell_pearl=1..}] add SPELL_EFFECT_ENDER_PEARL

tag @s[tag=SPELL_EFFECT_CHORUS_FRUIT] remove SPELL_EFFECT_CHORUS_FRUIT
tag @s[tag=!SPELL_EFFECT_CHORUS_FRUIT,scores={spell_fruit=1..}] add SPELL_EFFECT_CHORUS_FRUIT

tag @s[tag=SPELL_EFFECT_POTION] remove SPELL_EFFECT_POTION
tag @s[tag=!SPELL_EFFECT_POTION,scores={spell_potion=1..}] add SPELL_EFFECT_POTION
scoreboard players remove @s[scores={spell_potion=1..}] spell_potion 1

tag @s[tag=SPELL_EFFECT_RIPTIDE_LESSER] remove SPELL_EFFECT_RIPTIDE_LESSER
tag @s[tag=SPELL_EFFECT_RIPTIDE_MEDIUM] remove SPELL_EFFECT_RIPTIDE_MEDIUM
tag @s[tag=SPELL_EFFECT_RIPTIDE_GREATER] remove SPELL_EFFECT_RIPTIDE_GREATER
tag @s[tag=!SPELL_EFFECT_RIPTIDE_LESSER,nbt={SelectedItem:{id:"minecraft:trident",tag:{Enchantments:[{id:"minecraft:riptide",lvl:1s}]}}}] add SPELL_EFFECT_RIPTIDE_LESSER
tag @s[tag=!SPELL_EFFECT_RIPTIDE_MEDIUM,nbt={SelectedItem:{id:"minecraft:trident",tag:{Enchantments:[{id:"minecraft:riptide",lvl:2s}]}}}] add SPELL_EFFECT_RIPTIDE_MEDIUM
tag @s[tag=!SPELL_EFFECT_RIPTIDE_GREATER,nbt={SelectedItem:{id:"minecraft:trident",tag:{Enchantments:[{id:"minecraft:riptide",lvl:3s}]}}}] add SPELL_EFFECT_RIPTIDE_GREATER

tag @s[tag=SPELL_EFFECT_TOTEM_OF_UNDYING] remove SPELL_EFFECT_TOTEM_OF_UNDYING
tag @s[tag=!SPELL_EFFECT_TOTEM_OF_UNDYING,scores={spell_undyiung=1..}] add SPELL_EFFECT_TOTEM_OF_UNDYING

execute if entity @s[tag=SPELL_EFFECT_ENDANGER] run function server:game/spells/effects/spell_effect_endanger
execute if entity @s[tag=SPELL_EFFECT_FIREBALL] run function server:game/spells/effects/spell_effect_fireball
execute if entity @s[tag=SPELL_EFFECT_FROSTBOLT] run function server:game/spells/effects/spell_effect_frostbolt
execute if entity @s[tag=SPELL_EFFECT_FROSTFIRE_BOLT] run function server:game/spells/effects/spell_effect_frostfire_bolt