tag @s add messages.info.quest_target_complete
tag @s remove quest.criteria_fulfilled
tag @s remove ENTITY_FLAG_QUEST_TARGET

scoreboard players add @s quest_status 1
scoreboard players reset @s TEMP

playsound ui:quest.objectives master @s ~ ~ ~ 1 1 0.1