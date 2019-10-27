#Get player current level and check against player's virtual next level
#If it's higher it indicates the player has leveled up and the scores are
# assigned to be equal in order to track the next level
execute store result score @s entity_level run data get entity @s XpLevel 1
execute store result score @s entity_xppts run data get entity @s XpP 100000000
execute if score @s entity_level > @s entity_nxtlvl if score @s entity_level >= @s entity_reclvl run tag @s add _e.player_levelup_msg
scoreboard players operation @s[tag=_e.player_levelup_msg] entity_reclvl = @s entity_level
scoreboard players operation @s[tag=_e.player_levelup_msg] entity_nxtlvl = @s entity_level

#Send a message, playsound and display "happy" particles only to the invoker
playsound ui:player.levelup master @s[tag=_e.player_levelup_msg] ~ ~ ~ 0.3 1 0.1
particle minecraft:totem_of_undying ~ ~1.5 ~ 0.3 1 0.3 0.1 25 normal @s[tag=_e.player_levelup_msg]
particle minecraft:end_rod ~ ~1.5 ~ 0.3 1 0.3 0.1 10 normal @s[tag=_e.player_levelup_msg]

execute if score @s entity_level = #dbc.server entity_maxlvl if score @s entity_xppts > #const NULL run experience set @s 0 points
execute if score @s entity_level > #dbc.server entity_maxlvl run function server:game/entity/player/get_player_max_level