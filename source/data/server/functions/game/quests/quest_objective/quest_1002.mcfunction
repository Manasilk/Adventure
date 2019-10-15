tag @s add QUEST_OBJECTIVE_ITEM
tag @s add area_trigger_quest_item
tag @s add _e.load_quest_info

scoreboard players set @s quest_status 0
scoreboard players set @s task_objectives 2
scoreboard players set @s task_pobj_count 0
scoreboard players set @s quest_item0 8
scoreboard players set @s quest_item1 4
scoreboard players set @s quest_item2 0
scoreboard players set @s quest_item3 0
scoreboard players set @s item_count0 0
scoreboard players set @s item_count1 0
scoreboard players set @s item_count2 0
scoreboard players set @s item_count3 0
scoreboard players set @s quest_poi.x 0
scoreboard players set @s quest_poi.y 83
scoreboard players set @s quest_poi.z 12

function server:game/entity/area_trigger/get_quest_poi_pos