#Based on the cheating type detected, send appropriate message to virtual administrators
execute if entity @s[tag=FB_FLAG_PLAYER_TELEPORT] run tellraw @a {"translate":"server_broadcast","with":[{"translate":"fairbox_event_info","with":[{"selector":"@s","color":"white"},{"score":{"name":"@s","objective":"entity_id"},"color":"white"},{"translate":"event_type.teleporting"}]}],"color":"yellow"}
execute if entity @s[tag=FB_FLAG_PLAYER_FLYING] run tellraw @a {"translate":"server_broadcast","with":[{"translate":"fairbox_event_info","with":[{"selector":"@s","color":"white"},{"score":{"name":"@s","objective":"entity_id"},"color":"white"},{"translate":"event_type.flying"}]}],"color":"yellow"}

#Remove all tags and clear all scoreboards that were used as flags to track the player for malicious actions
tag @s[tag=FB_FLAG_PLAYER_TELEPORT] remove FB_FLAG_PLAYER_TELEPORT
tag @s[tag=FB_FLAG_PLAYER_FLYING] remove FB_FLAG_PLAYER_FLYING

tag @s remove FairBox.Broadcast