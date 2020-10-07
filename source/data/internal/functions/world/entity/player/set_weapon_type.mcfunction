scoreboard players operation @s TEMP = @s wepsound
scoreboard players set @s wepsound 0

scoreboard players set @s[predicate=internal:world/player/selected_item/sword] wepsound 1
scoreboard players set @s[predicate=internal:world/player/selected_item/axe] wepsound 2

tag @s[scores={wepsound=1}] add sound.sword
tag @s[scores={wepsound=2}] add sound.axe
execute unless score @s TEMP = @s wepsound run tag @s add sound.play_weapon_sound
execute unless score @s[scores={wepsound=1..}] TEMP = @s wepsound run tag @s add sound.sheathe_mainhand
scoreboard players reset @s TEMP