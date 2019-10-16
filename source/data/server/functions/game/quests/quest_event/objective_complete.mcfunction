tag @s add _e.quest_obj_cmpl_msg
tag @s remove _e.get_quest_reward
tag @s remove ENTITY_FLAG_QUEST_TARGET

scoreboard players add @s quest_status 1
scoreboard players reset @s TEMP

playsound ui:quest.objectives master @s ~ ~ ~ 1 1 0.1