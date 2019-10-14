tag @s[tag=_e.set_flag_gossip] add ENTITY_FLAG_GOSSIP
tag @s[tag=_e.set_flag_quest_relation] add ENTITY_FLAG_QUEST_RELATION
tag @s[tag=_e.set_flag_questgiver] add ENTITY_FLAG_QUESTGIVER
tag @s[tag=_e.set_flag_quest_start] add ENTITY_FLAG_CAN_START_QUEST
tag @s[tag=_e.set_flag_quest_end] add ENTITY_FLAG_CAN_END_QUEST
tag @s[tag=_e.set_flag_gossip] remove _e.set_flag_gossip
tag @s[tag=_e.set_flag_quest_relation] remove _e.set_flag_quest_relation
tag @s[tag=_e.set_flag_questgiver] remove _e.set_flag_questgiver
tag @s[tag=_e.set_flag_quest_start] remove _e.set_flag_quest_start
tag @s[tag=_e.set_flag_quest_end] remove _e.set_flag_quest_end

team join QuestStart @s[tag=ENTITY_FLAG_CAN_START_QUEST]
team join QuestEnd @s[team=!QuestStart,tag=ENTITY_FLAG_CAN_END_QUEST]