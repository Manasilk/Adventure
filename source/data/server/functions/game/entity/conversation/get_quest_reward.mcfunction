execute if entity @s[tag=QUEST_1000] if entity @a[tag=!_h.gossip_break,tag=!QUEST_COMPLETE_1000,scores={_h.interact=1..},distance=0..3.999] run function server:game/quests/quest_reward/quest_1000
execute if entity @s[tag=QUEST_1001] if entity @a[tag=!_h.gossip_break,tag=!QUEST_COMPLETE_1000,scores={_h.interact=1..},distance=0..3.999] run function server:game/quests/quest_reward/quest_1001
execute if entity @s[tag=QUEST_1002] if entity @a[tag=!_h.gossip_break,tag=!QUEST_COMPLETE_1000,scores={_h.interact=1..},distance=0..3.999] run function server:game/quests/quest_reward/quest_1002
execute if entity @s[tag=QUEST_1003] if entity @a[tag=!_h.gossip_break,tag=!QUEST_COMPLETE_1000,scores={_h.interact=1..},distance=0..3.999] run function server:game/quests/quest_reward/quest_1003
execute if entity @s[tag=QUEST_1004] if entity @a[tag=!_h.gossip_break,tag=!QUEST_COMPLETE_1000,scores={_h.interact=1..},distance=0..3.999] run function server:game/quests/quest_reward/quest_1004
execute if entity @s[tag=QUEST_1005] if entity @a[tag=!_h.gossip_break,tag=!QUEST_COMPLETE_1000,scores={_h.interact=1..},distance=0..3.999] run function server:game/quests/quest_reward/quest_1005
execute if entity @s[tag=QUEST_1006] if entity @a[tag=!_h.gossip_break,tag=!QUEST_COMPLETE_1000,scores={_h.interact=1..},distance=0..3.999] run function server:game/quests/quest_reward/quest_1006
execute if entity @s[tag=QUEST_1007] if entity @a[tag=!_h.gossip_break,tag=!QUEST_COMPLETE_1000,scores={_h.interact=1..},distance=0..3.999] run function server:game/quests/quest_reward/quest_1007
execute if entity @s[tag=QUEST_1008] if entity @a[tag=!_h.gossip_break,tag=!QUEST_COMPLETE_1000,scores={_h.interact=1..},distance=0..3.999] run function server:game/quests/quest_reward/quest_1008
execute if entity @s[tag=QUEST_1009] if entity @a[tag=!_h.gossip_break,tag=!QUEST_COMPLETE_1000,scores={_h.interact=1..},distance=0..3.999] run function server:game/quests/quest_reward/quest_1009

execute as @a[tag=_h.gossip_break,distance=0..3.999] run function server:game/quests/quest_reward/get_reward_experience