#clear all existing targets from our distance area
execute if entity @s[tag=QUEST_OBJECTIVE_TRIGGER] run tag @a[tag=ENTITY_FLAG_QUEST_TARGET,distance=3.000..3.999] remove ENTITY_FLAG_QUEST_TARGET
execute if entity @s[tag=QUEST_OBJECTIVE_MONSTER] run tag @a[tag=ENTITY_FLAG_QUEST_TARGET,distance=32.000..32.999] remove ENTITY_FLAG_QUEST_TARGET
execute if entity @s[tag=QUEST_OBJECTIVE_ITEM] run tag @a[tag=ENTITY_FLAG_QUEST_TARGET,distance=32.000..32.999] remove ENTITY_FLAG_QUEST_TARGET
execute if entity @s[tag=QUEST_OBJECTIVE_TALK_TO] run tag @a[tag=ENTITY_FLAG_QUEST_TARGET,distance=5.300..5.999] remove ENTITY_FLAG_QUEST_TARGET
#check for the owner of this area_trigger
scoreboard players operation #temp TEMP = @s owner_id
execute if entity @s[tag=QUEST_OBJECTIVE_TRIGGER] as @a[distance=0..2.999] if score @s player_id = #temp TEMP run tag @s add ENTITY_FLAG_QUEST_TARGET
execute if entity @s[tag=QUEST_OBJECTIVE_MONSTER] as @a[distance=0..31.999] if score @s player_id = #temp TEMP run tag @s add ENTITY_FLAG_QUEST_TARGET
execute if entity @s[tag=QUEST_OBJECTIVE_ITEM] as @a[distance=0..31.999] if score @s player_id = #temp TEMP run tag @s add ENTITY_FLAG_QUEST_TARGET
execute if entity @s[tag=QUEST_OBJECTIVE_TALK_TO] as @a[distance=0..5.299] if score @s player_id = #temp TEMP run tag @s add ENTITY_FLAG_QUEST_TARGET

scoreboard players set #temp TEMP 0