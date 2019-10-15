#clear all existing targets from our distance area
execute if entity @s[tag=QUEST_OBJECTIVE_TRIGGER] run tag @a[tag=ENTITY_FLAG_QUEST_TARGET,distance=5.000..] remove ENTITY_FLAG_QUEST_TARGET
execute if entity @s[tag=QUEST_OBJECTIVE_MONSTER] run tag @a[tag=ENTITY_FLAG_QUEST_TARGET,distance=32.000..] remove ENTITY_FLAG_QUEST_TARGET
execute if entity @s[tag=QUEST_OBJECTIVE_ITEM] run tag @a[tag=ENTITY_FLAG_QUEST_TARGET,distance=32.000..] remove ENTITY_FLAG_QUEST_TARGET
execute if entity @s[tag=QUEST_OBJECTIVE_TALK_TO] run tag @a[tag=ENTITY_FLAG_QUEST_TARGET,distance=4.300..] remove ENTITY_FLAG_QUEST_TARGET
#check for the owner of this area_trigger
scoreboard players operation #dbc.temp TEMP = @s owner_id
execute if entity @s[tag=QUEST_OBJECTIVE_TRIGGER] as @a[distance=0..4.999] if score @s player_id = #dbc.temp TEMP run tag @s add _e.get_owner
execute if entity @s[tag=QUEST_OBJECTIVE_MONSTER] as @a[distance=0..31.999] if score @s player_id = #dbc.temp TEMP run tag @s add _e.get_owner
execute if entity @s[tag=QUEST_OBJECTIVE_ITEM] as @a[distance=0..31.999] if score @s player_id = #dbc.temp TEMP run tag @s add _e.get_owner
execute if entity @s[tag=QUEST_OBJECTIVE_TALK_TO] as @a[distance=0..4.299] if score @s player_id = #dbc.temp TEMP run tag @s add _e.get_owner
#check if the owner (if found) has matching quest_id then set him as target
scoreboard players operation #dbc.temp TEMP = @s quest_id
execute if entity @s[tag=QUEST_OBJECTIVE_TRIGGER] as @a[tag=_e.get_owner,distance=0..4.299] if score @s quest_id = #dbc.temp TEMP run tag @s add ENTITY_FLAG_QUEST_TARGET
execute if entity @s[tag=QUEST_OBJECTIVE_MONSTER] as @a[tag=_e.get_owner,distance=0..31.999] if score @s quest_id = #dbc.temp TEMP run tag @s add ENTITY_FLAG_QUEST_TARGET
execute if entity @s[tag=QUEST_OBJECTIVE_ITEM] as @a[tag=_e.get_owner,distance=0..31.999] if score @s quest_id = #dbc.temp TEMP run tag @s add ENTITY_FLAG_QUEST_TARGET
execute if entity @s[tag=QUEST_OBJECTIVE_TALK_TO] as @a[tag=_e.get_owner,distance=0..4.299] if score @s quest_id = #dbc.temp TEMP run tag @s add ENTITY_FLAG_QUEST_TARGET
#if the owner doesnt have the same quest_id as the area trigger the trigger destroys itself
execute if entity @s[tag=QUEST_OBJECTIVE_TRIGGER] as @a[tag=_e.get_owner,distance=0..4.999] unless score @s quest_id = #dbc.temp TEMP run tag @s add _e.delete_area_trigger
execute if entity @s[tag=QUEST_OBJECTIVE_MONSTER] as @a[tag=_e.get_owner,distance=0..31.999] unless score @s quest_id = #dbc.temp TEMP run tag @s add _e.delete_area_trigger
execute if entity @s[tag=QUEST_OBJECTIVE_ITEM] as @a[tag=_e.get_owner,distance=0..31.999] unless score @s quest_id = #dbc.temp TEMP run tag @s add _e.delete_area_trigger
execute if entity @s[tag=QUEST_OBJECTIVE_TALK_TO] as @a[tag=_e.get_owner,distance=0..4.299] unless score @s quest_id = #dbc.temp TEMP run tag @s add _e.delete_area_trigger
execute if entity @a[tag=_e.get_owner,tag=_e.delete_area_trigger,distance=0..31.999] run data merge entity @s {Age:0,Duration:1,WaitTime:0}

execute if entity @s[tag=QUEST_OBJECTIVE_TRIGGER] run tag @a[tag=_e.get_owner,distance=0..4.999] remove _e.get_owner
execute if entity @s[tag=QUEST_OBJECTIVE_MONSTER] run tag @a[tag=_e.get_owner,distance=0..31.999] remove _e.get_owner
execute if entity @s[tag=QUEST_OBJECTIVE_ITEM] run tag @a[tag=_e.get_owner,distance=0..31.999] remove _e.get_owner
execute if entity @s[tag=QUEST_OBJECTIVE_TALK_TO] run tag @a[tag=_e.get_owner,distance=0..4.299] remove _e.get_owner
scoreboard players set #dbc.temp TEMP 0