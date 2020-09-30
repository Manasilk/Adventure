tag @s add QUEST_OBJECTIVE_TALK_TO
tag @s add area_trigger_quest_talkto
scoreboard players set @s quest_chat 301
scoreboard players set @s quest_poi.x 0
scoreboard players set @s quest_poi.y 0
scoreboard players set @s quest_poi.z 0
scoreboard players reset @s TEMP

function internal:world/entity/area_trigger/get_quest_poi_pos