tag @s add ENTITY_FLAG_SERVER_CONTROLLED
tag @s add ENTITY_FLAG_EXTRA_TRIGGER

tag @s[tag=ENTITY_FLAG_QUEST_TRIGGER,tag=QUEST_OBJECTIVE_TRIGGER] add area_trigger_quest_trigger
tag @s[tag=ENTITY_FLAG_QUEST_TRIGGER,tag=QUEST_OBJECTIVE_MONSTER] add area_trigger_quest_monster
tag @s[tag=ENTITY_FLAG_QUEST_TRIGGER,tag=QUEST_OBJECTIVE_ITEM] add area_trigger_quest_item
tag @s[tag=ENTITY_FLAG_QUEST_TRIGGER,tag=QUEST_OBJECTIVE_TALK_TO] add area_trigger_quest_talkto

scoreboard players set @s[tag=ENTITY_FLAG_QUEST_TRIGGER] entity_upd_t 0