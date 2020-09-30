#Get player current level and check against player's virtual next level
#If it's higher it indicates the player has leveled up and the scores are
# assigned to be equal in order to track the next level
execute store result score @s entity_level run data get entity @s XpLevel 1
execute store result score @s entity_xppts run data get entity @s XpP 100000000

execute if score @s entity_level = #world entity_maxlvl if score @s entity_xppts > #const NULL run experience set @s 0 points
execute if score @s entity_level > #world entity_maxlvl run function internal:world/entity/player/get_player_max_level

execute if score @s entity_level > @s entity_nxtlvl if score @s entity_level >= @s entity_reclvl run tag @s add messages.info.levelup
scoreboard players operation @s[tag=messages.info.levelup] entity_reclvl = @s entity_level
scoreboard players operation @s[tag=messages.info.levelup] entity_nxtlvl = @s entity_level
execute if score @s entity_reclvl > @s entity_maxlvl run tag @s add messages.error.invalid_level
tag @s[tag=messages.error.invalid_level] remove messages.info.levelup
#Send a message, playsound and display "happy" particles only to the invoker
playsound minecraft:ui.player.levelup master @s[tag=messages.info.levelup] ~ ~ ~ 0.3 1 0.1
particle minecraft:totem_of_undying ~ ~1.5 ~ 0.3 1 0.3 0.1 25 normal @s[tag=messages.info.levelup]
particle minecraft:end_rod ~ ~1.5 ~ 0.3 1 0.3 0.1 10 normal @s[tag=messages.info.levelup]