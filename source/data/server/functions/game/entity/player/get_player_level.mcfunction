#Get player current level and check against player's virtual next level
#If it's higher it indicates the player has leveled up and the scores are
# assigned to be equal in order to track the next level
execute store result score @s entity_level run data get entity @s XpLevel 1
execute if score @s entity_level > @s entity_nxtlvl if score @s entity_level >= @s entity_reclvl run tag @s add H_PLAYER_LEVEL_UP
scoreboard players operation @s[tag=H_PLAYER_LEVEL_UP] entity_reclvl = @s entity_level
scoreboard players operation @s[tag=H_PLAYER_LEVEL_UP] entity_nxtlvl = @s entity_level

#Send a message, playsound and display "happy" particles only to the invoker
playsound ui:player.levelup master @s[tag=H_PLAYER_LEVEL_UP] ~ ~ ~ 0.3 1 0.1
particle minecraft:totem_of_undying ~ ~1.5 ~ 0.3 1 0.3 0.1 25 normal @s[tag=H_PLAYER_LEVEL_UP]
particle minecraft:end_rod ~ ~1.5 ~ 0.3 1 0.3 0.1 10 normal @s[tag=H_PLAYER_LEVEL_UP]