tag @a[scores={chat.triggered=1..},distance=0..5.299] remove QUEST_REWARD_1002
tag @a[scores={chat.triggered=1..},distance=0..5.299] remove QUEST_ACCEPT_1002
tag @a[scores={chat.triggered=1..},distance=0..5.299] add QUEST_COMPLETE_1002
tag @a[scores={chat.triggered=1..},distance=0..5.299] add conversation.stop
function internal:world/quests/quest_event/quest_chat/complete/ct_100_quest_1002
scoreboard players set @a[tag=conversation.stop,distance=0..5.299] exp_reward 10

scoreboard players set #log quest_id 1002
scoreboard players operation #log creature_finish = @s entity_guid
scoreboard players operation #log entity_guid = @a[tag=conversation.stop,distance=0..5.299] player_id