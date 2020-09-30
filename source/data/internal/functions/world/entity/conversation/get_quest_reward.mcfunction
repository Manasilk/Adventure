execute if entity @s[tag=QUEST_1000] if entity @a[tag=!conversation.stop,tag=QUEST_REWARD_1000,scores={chat_trigger=1..},distance=0..5.299] run function internal:world/quests/quest_reward/quest_1000
execute if entity @s[tag=QUEST_1001] if entity @a[tag=!conversation.stop,tag=QUEST_REWARD_1001,scores={chat_trigger=1..},distance=0..5.299] run function internal:world/quests/quest_reward/quest_1001
execute if entity @s[tag=QUEST_1002] if entity @a[tag=!conversation.stop,tag=QUEST_REWARD_1002,scores={chat_trigger=1..},distance=0..5.299] run function internal:world/quests/quest_reward/quest_1002
execute if entity @s[tag=QUEST_1003] if entity @a[tag=!conversation.stop,tag=QUEST_REWARD_1003,scores={chat_trigger=1..},distance=0..5.299] run function internal:world/quests/quest_reward/quest_1003

execute as @a[tag=conversation.stop,distance=0..5.299] run function internal:world/quests/quest_reward/get_reward_experience