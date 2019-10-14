tag @a[scores={_h.interact=1..},distance=0..3.999] remove QUEST_REWARD_1000
tag @a[scores={_h.interact=1..},distance=0..3.999] remove QUEST_ACCEPT_1000
tag @a[scores={_h.interact=1..},distance=0..3.999] add QUEST_COMPLETE_1000
tag @a[scores={_h.interact=1..},distance=0..3.999] add _h.gossip_break
function server:game/quests/quest_event/quest_chat/complete/ct_100_quest_1000
scoreboard players set @a[tag=_h.gossip_break,distance=0..3.999] exp_reward 10