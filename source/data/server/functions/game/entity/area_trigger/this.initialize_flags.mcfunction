tag @s add ENTITY_FLAG_SERVER_CONTROLLED
tag @s add ENTITY_FLAG_EXTRA_TRIGGER
tag @s[scores={quest_id=1..}] add ENTITY_FLAG_QUEST_RELATION

scoreboard players set @s[tag=ENTITY_FLAG_QUEST_TRIGGER] entity_upd_t 0