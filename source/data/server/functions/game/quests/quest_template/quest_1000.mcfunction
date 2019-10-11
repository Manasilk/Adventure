scoreboard players set @a[tag=!_h.gossip_break,scores={_h.interact=1..},distance=0..3.999] quest_id 1000
tag @a[tag=!_h.gossip_break,scores={_h.interact=1..},distance=0..3.999] add QUEST_ACCEPT_1000

function server:game/quests/quest_event/quest_item/cg_100_quest_1000
function server:game/quests/quest_event/quest_chat/accept/ct_100_quest_1000