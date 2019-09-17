execute if entity @s[type=minecraft:player] run function server:game/spells/auras/spell_aura_effect_flags
execute if entity @s[type=minecraft:player] run function server:game/spells/effects/spell_effect_flags
execute if entity @s[type=#server:creature] run function server:game/spells/auras/spell_aura_effect_flags

#skillbook = learn profession
#recipe = learn item pattern
execute if score @s[type=minecraft:player,nbt={SelectedItem:{tag:{CustomModelData:1000,Skillbook:1b}}}] _h.spell_rmb matches 1.. run function server:game/spells/skills/spell_learn_craft
execute if score @s[type=minecraft:player,nbt={SelectedItem:{tag:{CustomModelData:1000,Recipe:1b}}}] _h.spell_rmb matches 1.. run function server:game/spells/skills/spell_learn_recipe
scoreboard players set @s[scores={_h.spell_rmb=1..}] _h.spell_rmb 0