function server:game/quests/quest_event/quest_chat/complete/ct_100_creature_1002
tag @a[scores={_h.interact=1..},distance=0..3.999] remove QUEST_REWARD_1002
tag @a[scores={_h.interact=1..},distance=0..3.999] remove QUEST_ACCEPT_1002
tag @a[scores={_h.interact=1..},distance=0..3.999] add QUEST_COMPLETE_1002
tag @a[scores={_h.interact=1..},distance=0..3.999] add _h.gossip_break
scoreboard players set @a[scores={_h.interact=1..},distance=0..3.999] exp_reward 10
tellraw @a[tag=_h.gossip_break,distance=0..3.999] {"translate":"event_type.quest_complete","with":[{"translate":"quest.quest_1002"}],"color":"yellow"}