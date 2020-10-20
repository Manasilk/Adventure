execute as @a[scores={chat.triggered=1..},distance=0..5.299] at @s run function internal:world/quests/add_quest_to_log

scoreboard players set @a[tag=conversation.stop,distance=0..5.299] quest_id 1001
tag @a[tag=conversation.stop,distance=0..5.299] add QUEST_ACCEPT_1001

function internal:world/quests/quest_event/quest_item/cg_100_quest_1001
function internal:world/quests/quest_event/quest_chat/accept/ct_100_quest_1001
tag @s add creature.summon_quest_tracker

scoreboard players set #log quest_id 1001
scoreboard players operation #log entity_guid = @s entity_guid
scoreboard players operation #log player_id = @a[tag=conversation.stop,distance=0..5.299] player_id