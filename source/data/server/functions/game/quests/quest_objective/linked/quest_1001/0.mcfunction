tag @s add QUEST_OBJECTIVE_TALK_TO
tag @s add area_trigger_quest_talkto
scoreboard players set @s quest_chat 300
scoreboard players set @s quest_poi.x 17
scoreboard players set @s quest_poi.y 86
scoreboard players set @s quest_poi.z 8
scoreboard players reset @s TEMP

function server:game/entity/area_trigger/get_quest_poi_pos
