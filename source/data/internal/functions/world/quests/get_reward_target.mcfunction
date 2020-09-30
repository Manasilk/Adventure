scoreboard players operation #temp TEMP = @s owner_id
execute if entity @s[tag=QUEST_OBJECTIVE_TRIGGER] as @a if score @s player_id = #temp TEMP run tag @s add quest.criteria_fulfilled
execute if entity @s[tag=QUEST_OBJECTIVE_MONSTER] as @a[tag=ENTITY_FLAG_QUEST_TARGET,distance=0..31.999] if score @s player_id = #temp TEMP run tag @s add quest.criteria_fulfilled
execute if entity @s[tag=QUEST_OBJECTIVE_ITEM] as @a[tag=ENTITY_FLAG_QUEST_TARGET,distance=0..31.999] if score @s player_id = #temp TEMP run tag @s add quest.criteria_fulfilled
execute if entity @s[tag=QUEST_OBJECTIVE_TALK_TO] as @a if score @s player_id = #temp TEMP run tag @s add quest.criteria_fulfilled
scoreboard players operation #temp TEMP = @s quest_id
execute as @a[tag=quest.criteria_fulfilled] run scoreboard players operation @s TEMP = #temp TEMP
execute as @a[tag=quest.criteria_fulfilled] run function internal:world/quests/get_quest_reward
scoreboard players set #temp TEMP 0
kill @s