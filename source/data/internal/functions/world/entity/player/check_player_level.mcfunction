#Get player current level and check against player's virtual next level
#If it's higher it indicates the player has leveled up and the scores are
# assigned to be equal in order to track the next level
execute store result score @s entity_level run data get entity @s XpLevel 1

execute if score @s entity_level = #world entity_maxlvl if score @s exp_stored > #const NULL run experience set @s 0 points
execute if score @s entity_level > #world entity_maxlvl run function internal:world/entity/player/set_maximum_level

execute if score @s entity_level > @s entity_nxtlvl if score @s entity_level >= @s entity_reclvl run function internal:world/entity/player/levelup_event