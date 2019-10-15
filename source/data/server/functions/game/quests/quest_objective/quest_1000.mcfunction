tag @s add QUEST_OBJECTIVE_TRIGGER
tag @s add AREA_TRIGGER_QUEST_LINK
tag @s add area_trigger_quest_trigger
tag @s add _e.load_quest_info

scoreboard players set @s quest_status 0
scoreboard players set @s task_objectives 3
scoreboard players set @s task_pobj_count 0
scoreboard players set @s quest_poi.x 0
scoreboard players set @s quest_poi.y 0
scoreboard players set @s quest_poi.z 0
scoreboard players operation @s TEMP = @s task_objectives

execute if entity @s[tag=QUEST_OBJECTIVE_TRIGGER] run function server:game/quests/quest_tracker/quest_triggers/quest_1000
function server:game/entity/area_trigger/get_quest_poi_pos