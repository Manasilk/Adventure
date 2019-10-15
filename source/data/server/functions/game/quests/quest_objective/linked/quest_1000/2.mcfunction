tag @s add QUEST_OBJECTIVE_TRIGGER
tag @s add _e.load_quest_info

scoreboard players set @s quest_poi.x -13
scoreboard players set @s quest_poi.y 83
scoreboard players set @s quest_poi.z 9
scoreboard players reset @s TEMP

function server:game/entity/area_trigger/get_quest_poi_pos