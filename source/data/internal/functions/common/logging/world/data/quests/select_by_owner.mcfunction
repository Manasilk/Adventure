#Increment if this linked triggers exists
execute if score @s owner_id = #temp owner_id if score @s quest_id = #temp quest_id run scoreboard players add #temp success 1

#Write POI
execute if score @s owner_id = #temp owner_id if score @s quest_id = #temp quest_id store result storage internal:buffer temp.x int 1 run scoreboard players get @s quest_poi.x
execute if score @s owner_id = #temp owner_id if score @s quest_id = #temp quest_id store result storage internal:buffer temp.y int 1 run scoreboard players get @s quest_poi.y
execute if score @s owner_id = #temp owner_id if score @s quest_id = #temp quest_id store result storage internal:buffer temp.z int 1 run scoreboard players get @s quest_poi.z
data modify storage internal:buffer iterator.current_item.data[].trigger.poi append from storage internal:buffer temp

#Check for POI mismatch
#function internal:world/entity/get_entity_position
#execute unless score #temp entity.pos_x = @s quest_poi.x run scoreboard players add #temp poi_err 1
#execute unless score #temp entity.pos_y = @s quest_poi.y run scoreboard players add #temp poi_err 1
#execute unless score #temp entity.pos_z = @s quest_poi.z run scoreboard players add #temp poi_err 1

data remove storage internal:buffer temp