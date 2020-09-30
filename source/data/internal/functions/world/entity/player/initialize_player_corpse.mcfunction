tag @s add SPELL_AURA_GHOST

scoreboard players set @s[scores={is_wounded=1..}] is_wounded 0

playsound minecraft:player.male.death voice @s[scores={gender_sfx=1}] ~ ~ ~ 0.5 1 0.1
playsound minecraft:player.female.death voice @s[scores={gender_sfx=2}] ~ ~ ~ 0.5 1 0.1