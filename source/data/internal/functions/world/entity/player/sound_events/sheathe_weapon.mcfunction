tag @s add sound.sheathe_mainhand
tag @s[scores={wepsound=1}] remove sound.axe
tag @s[scores={wepsound=2}] remove sound.sword

playsound minecraft:ui.mainhand.sheathe_sword player @s[tag=sound.sword] ~ ~ ~ 0.75 1 0.1
playsound minecraft:ui.mainhand.sheathe_axe player @s[tag=sound.axe] ~ ~ ~ 0.75 1 0.1
tag @s remove sound.play_weapon_sound