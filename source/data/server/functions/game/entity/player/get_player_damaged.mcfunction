scoreboard players operation @s _h.is_wounded /= #const 10

playsound voice:player.male.wounded voice @s[scores={gender_sfx=1,_h.is_wounded=..7}] ~ ~ ~ 0.5 1 0.1
playsound voice:player.male.wounded_critical voice @s[scores={gender_sfx=1,_h.is_wounded=8..}] ~ ~ ~ 0.5 1 0.1

playsound voice:player.female.wounded voice @s[scores={gender_sfx=2,_h.is_wounded=..7}] ~ ~ ~ 0.5 1 0.1
playsound voice:player.female.wounded_critical voice @s[scores={gender_sfx=2,_h.is_wounded=8..}] ~ ~ ~ 0.5 1 0.1

scoreboard players set @s _h.is_wounded 0