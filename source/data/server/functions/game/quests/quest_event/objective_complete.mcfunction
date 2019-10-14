scoreboard players add @s quest_status 1
playsound ui:bounty.complete master @s ~ ~ ~ 0.3 1 0.1

tag @s add _e.quest_obj_cmpl_msg
tag @s remove _e.get_quest_reward
tag @s remove ENTITY_FLAG_QUEST_TARGET