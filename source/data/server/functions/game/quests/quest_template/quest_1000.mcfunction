execute as @a[scores={_h.interact=1..},distance=0..5.299] at @s run function server:game/quests/add_quest_to_log

scoreboard players set @a[tag=_h.gossip_break,distance=0..5.299] quest_id 1000
tag @a[tag=_h.gossip_break,distance=0..5.299] add QUEST_ACCEPT_1000

function server:game/quests/quest_event/quest_item/cg_100_quest_1000
function server:game/quests/quest_event/quest_chat/accept/ct_100_quest_1000
tag @s add _e.get_quest_tracker