scoreboard players operation @s TEMP = @s wepsound
scoreboard players set @s wepsound 0

#swords
scoreboard players set @s[scores={wepsound=0},nbt={SelectedItem:{id:"minecraft:iron_sword"}}] wepsound 1
scoreboard players set @s[scores={wepsound=0},nbt={SelectedItem:{id:"minecraft:golden_sword"}}] wepsound 1
scoreboard players set @s[scores={wepsound=0},nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] wepsound 1
scoreboard players set @s[scores={wepsound=0},nbt={SelectedItem:{id:"minecraft:netherite_sword"}}] wepsound 1
#axes
scoreboard players set @s[scores={wepsound=0},nbt={SelectedItem:{id:"minecraft:iron_axe"}}] wepsound 2
scoreboard players set @s[scores={wepsound=0},nbt={SelectedItem:{id:"minecraft:golden_axe"}}] wepsound 2
scoreboard players set @s[scores={wepsound=0},nbt={SelectedItem:{id:"minecraft:diamond_axe"}}] wepsound 2
scoreboard players set @s[scores={wepsound=0},nbt={SelectedItem:{id:"minecraft:netherite_axe"}}] wepsound 2

tag @s[scores={wepsound=1}] add _h.weapon_sword
tag @s[scores={wepsound=2}] add _h.weapon_axe
execute unless score @s TEMP = @s wepsound run tag @s add _h.wep_sound
execute unless score @s[scores={wepsound=1..}] TEMP = @s wepsound run tag @s add _e.mh_sheathe