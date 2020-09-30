tag @a[scores={chat.triggered=1..},distance=0..5.299] remove QUEST_REWARD_1001
tag @a[scores={chat.triggered=1..},distance=0..5.299] remove QUEST_ACCEPT_1001
tag @a[scores={chat.triggered=1..},distance=0..5.299] add QUEST_COMPLETE_1001
tag @a[scores={chat.triggered=1..},distance=0..5.299] add conversation.stop
function internal:world/quests/quest_event/quest_chat/complete/ct_100_quest_1001
scoreboard players set @a[tag=conversation.stop,distance=0..5.299] exp_reward 10