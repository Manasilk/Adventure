tag @s add QUEST_OBJECTIVE_TRIGGER
scoreboard players set @s quest_poi.x 1
scoreboard players set @s quest_poi.y 83
scoreboard players set @s quest_poi.z 24

function server:game/entity/area_trigger/get_quest_poi_pos

tag @s add AREA_TRIGGER_LINKED_TO
scoreboard players reset @s TEMP