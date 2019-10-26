tag @s remove _e.mh_sheathe
tag @s[scores={wepsound=1}] remove _h.weapon_axe
tag @s[scores={wepsound=2}] remove _h.weapon_sword
playsound minecraft:ui.mainhand.unsheathe_sword player @s[tag=_h.weapon_sword] ~ ~ ~ 1 1 0.1
playsound minecraft:ui.mainhand.unsheathe_axe player @s[tag=_h.weapon_axe] ~ ~ ~ 1 1 0.1
tag @s remove _h.wep_sound