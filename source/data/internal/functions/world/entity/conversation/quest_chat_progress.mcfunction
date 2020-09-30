#For certain NPCs to display messages, use the method below
# where 'QUESTID' is the quest number, and the number after "ct_" is the game version number
#Example: If the world version is 2.0.4 and quest id 1543 the proper reference would be "ct_200_creature_1543"

#execute if entity @s[tag=ENTITY_FLAG_QUEST_RELATION,tag=ENTITY_FLAG_GOSSIP,tag=QUEST_QuestID] if entity @e[type=#internal:area_trigger,tag=ENTITY_FLAG_QUEST_RELATION,distance=0..1.499,limit=1] run function internal:world/quests/quest_event/questgive_chat/progress/ct_100_creature_0
#execute unless entity @e[type=#internal:area_trigger,tag=ENTITY_FLAG_QUEST_RELATION,distance=0..1.499,limit=1] run scoreboard players set @a[scores={chat.triggered=1..},distance=0..3.999] chat.triggered 0