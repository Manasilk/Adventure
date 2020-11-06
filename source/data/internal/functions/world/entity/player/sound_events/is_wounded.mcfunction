scoreboard players operation @s is_wounded /= #const 10

playsound minecraft:player.male.wounded voice @s[scores={gender_sfx=1,is_wounded=..7}] ~ ~ ~ 0.5 1 0.1
playsound minecraft:player.male.wounded_critical voice @s[scores={gender_sfx=1,is_wounded=8..}] ~ ~ ~ 0.5 1 0.1

playsound minecraft:player.female.wounded voice @s[scores={gender_sfx=2,is_wounded=..7}] ~ ~ ~ 0.5 1 0.1
playsound minecraft:player.female.wounded_critical voice @s[scores={gender_sfx=2,is_wounded=8..}] ~ ~ ~ 0.5 1 0.1

scoreboard players set @s is_wounded 0