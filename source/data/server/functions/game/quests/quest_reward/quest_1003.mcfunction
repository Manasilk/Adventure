tag @a[scores={_h.interact=1..},distance=0..5.299] remove QUEST_REWARD_1003
tag @a[scores={_h.interact=1..},distance=0..5.299] remove QUEST_ACCEPT_1003
tag @a[scores={_h.interact=1..},distance=0..5.299] add QUEST_COMPLETE_1003
tag @a[scores={_h.interact=1..},distance=0..5.299] add _h.gossip_break
function server:game/quests/quest_event/quest_chat/complete/ct_100_quest_1003
scoreboard players set @a[tag=_h.gossip_break,distance=0..5.299] exp_reward 10