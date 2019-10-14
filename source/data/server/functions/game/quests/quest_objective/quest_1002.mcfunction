tag @s add QUEST_OBJECTIVE_MONSTER
tag @s add _e.load_quest_info

scoreboard players set @s quest_status 0
scoreboard players set @s task_objectives 1
scoreboard players set @s task_pobj_count 0
scoreboard players set @s quest_kill0 8
scoreboard players set @s quest_kill1 4
scoreboard players set @s quest_kill2 0
scoreboard players set @s quest_kill3 0
scoreboard players set @s npc_count0 0
scoreboard players set @s npc_count1 0
scoreboard players set @s npc_count2 0
scoreboard players set @s npc_count3 0
scoreboard players set @s quest_poi.x -20
scoreboard players set @s quest_poi.y 84
scoreboard players set @s quest_poi.z 31

function server:game/entity/area_trigger/get_quest_poi_pos