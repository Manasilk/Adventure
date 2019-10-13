tag @s add QUEST_OBJECTIVE_OBJECTIVE
#QUEST_OBJECTIVE_TRIGGER
#QUEST_OBJECTIVE_MONSTER
#QUEST_OBJECTIVE_ITEM
#QUEST_OBJECTIVE_TALK_TO
#quest status defaults to 0 = QUEST_INCOMPLETE
scoreboard players set @s quest_status 0

#task_objectives: the amount of required triggers/kills/items/talks
#for every active field, increase task_objectives by 1
#For scenarios set 'task_objectives' to task_objectives+1
#For QUEST_OBJECTIVE_AREATRIGGER set 'task_objectives' to 1
scoreboard players set @s task_objectives 0
#objectiveAmount: controls the progress of player towards the task_objectives
scoreboard players set @s task_pobj_count 0
#This field is used for QUEST_OBJECTIVE_MONSTER
#quest_killN set to amount of mobs to kill
#npc_countN is the player's progress
scoreboard players set @s quest_kill0 0
scoreboard players set @s quest_kill1 0
scoreboard players set @s quest_kill2 0
scoreboard players set @s quest_kill3 0
scoreboard players set @s npc_count0 0
scoreboard players set @s npc_count1 0
scoreboard players set @s npc_count2 0
scoreboard players set @s npc_count3 0
#This field is used for QUEST_OBJECTIVE_ITEM
#quest_itemN set to amount of items to collect
#npc_countN is the player's progress
scoreboard players set @s quest_item0 0
scoreboard players set @s quest_item1 0
scoreboard players set @s quest_item2 0
scoreboard players set @s quest_item3 0
scoreboard players set @s item_count0 0
scoreboard players set @s item_count1 0
scoreboard players set @s item_count2 0
scoreboard players set @s item_count3 0
#Position of the QuestAreaTrigger, also serves as center of quest
#The radius for searching a player and counting towards objective
#is at this position outwards
#For QUEST_OBJECTIVE_TALK_TO set the position the same as the world spawn
scoreboard players set @s quest_poi.x 0
scoreboard players set @s quest_poi.y 0
scoreboard players set @s quest_poi.z 0

execute if entity @s[tag=QUEST_OBJECTIVE_AREATRIGGER] run function server:game/quests/quest_tracker/quest_triggers/explore/quest_1000
execute if entity @s[tag=QUEST_OBJECTIVE_TALK_TO] run function server:game/quests/quest_tracker/quest_triggers/talkto/quest_1000
function server:game/entity/area_trigger/get_quest_poi_pos