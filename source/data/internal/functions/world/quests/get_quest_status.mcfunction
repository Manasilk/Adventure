function internal:world/quests/get_track_target
execute if entity @s[tag=QUEST_OBJECTIVE_TRIGGER] run function internal:world/quests/quest_tracker/get_trigger_count
execute if entity @s[tag=QUEST_OBJECTIVE_MONSTER] run function internal:world/quests/quest_tracker/get_monster_count
execute if entity @s[tag=QUEST_OBJECTIVE_ITEM] run function internal:world/quests/quest_tracker/get_item_count
execute if entity @s[tag=QUEST_OBJECTIVE_TALK_TO] run function internal:world/quests/quest_tracker/get_talk_to_count