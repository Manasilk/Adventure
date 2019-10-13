tag @s add QUEST_OBJECTIVE_OBJECTIVE
#QUEST_OBJECTIVE_TRIGGER
#QUEST_OBJECTIVE_TALK_TO
scoreboard players set @s quest_poi.x 0
scoreboard players set @s quest_poi.y 0
scoreboard players set @s quest_poi.z 0

function server:game/entity/area_trigger/get_quest_poi_pos

tag @s add AREA_TRIGGER_LINKED_TO
scoreboard players reset @s TEMP