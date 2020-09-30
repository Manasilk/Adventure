execute if entity @s[type=minecraft:player] run function internal:world/spells/auras/spell_aura_effect_flags
execute if entity @s[type=minecraft:player] run function internal:world/spells/effects/spell_effect_flags
execute if entity @s[type=#internal:creature] run function internal:world/spells/auras/spell_aura_effect_flags
function internal:world/spells/spell_effect

#skillbook = learn profession
#recipe = learn item pattern
#execute if score @s[type=minecraft:player,nbt={SelectedItem:{tag:{CustomModelData:?,upgrade_token:1b}}}] _h.spell_rmb matches 1.. run function internal:world/spells/trigger/spell_upgrade_item
#scoreboard players set @s[scores={_h.spell_rmb=1..}] _h.spell_rmb 0