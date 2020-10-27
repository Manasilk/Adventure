scoreboard players operation #log entity_guid = @s entity_guid
scoreboard players operation #log player_id = @a[tag=conversation.stop,distance=0..5.299] player_id
#Event identifier
scoreboard players set #log __event_idef 11
#Check for creature
scoreboard players set #log __event_type 1
function internal:common/logging/world/register_event