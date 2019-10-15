tag @s add QUEST_OBJECTIVE_TRIGGER
tag @s add area_trigger_quest_trigger
tag @s add _e.load_quest_info

scoreboard players set @s quest_poi.x 10
scoreboard players set @s quest_poi.y 84
scoreboard players set @s quest_poi.z 11
scoreboard players reset @s TEMP

function server:game/entity/area_trigger/get_quest_poi_pos