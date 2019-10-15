execute if entity @s[tag=QUEST_1000] if entity @a[tag=!_h.gossip_break,tag=QUEST_REWARD_1000,scores={_h.interact=1..},distance=0..5.299] run function server:game/quests/quest_reward/quest_1000
execute if entity @s[tag=QUEST_1001] if entity @a[tag=!_h.gossip_break,tag=QUEST_REWARD_1001,scores={_h.interact=1..},distance=0..5.299] run function server:game/quests/quest_reward/quest_1001
execute if entity @s[tag=QUEST_1002] if entity @a[tag=!_h.gossip_break,tag=QUEST_REWARD_1002,scores={_h.interact=1..},distance=0..5.299] run function server:game/quests/quest_reward/quest_1002
execute if entity @s[tag=QUEST_1003] if entity @a[tag=!_h.gossip_break,tag=QUEST_REWARD_1003,scores={_h.interact=1..},distance=0..5.299] run function server:game/quests/quest_reward/quest_1003

execute as @a[tag=_h.gossip_break,distance=0..5.299] run function server:game/quests/quest_reward/get_reward_experience