scoreboard players operation #dbc.temp TEMP = @s owner_id
execute if entity @s[tag=QUEST_OBJECTIVE_TRIGGER] as @a if score @s player_id = #dbc.temp TEMP run tag @s add _e.get_quest_reward
execute if entity @s[tag=QUEST_OBJECTIVE_MONSTER] as @a[tag=ENTITY_FLAG_QUEST_TARGET,distance=0..31.999] if score @s player_id = #dbc.temp TEMP run tag @s add _e.get_quest_reward
execute if entity @s[tag=QUEST_OBJECTIVE_ITEM] as @a[tag=ENTITY_FLAG_QUEST_TARGET,distance=0..31.999] if score @s player_id = #dbc.temp TEMP run tag @s add _e.get_quest_reward
execute if entity @s[tag=QUEST_OBJECTIVE_TALK_TO] as @a if score @s player_id = #dbc.temp TEMP run tag @s add _e.get_quest_reward
scoreboard players operation #dbc.temp TEMP = @s quest_id
execute as @a[tag=_e.get_quest_reward] run scoreboard players operation @s TEMP = #dbc.temp TEMP
execute as @a[tag=_e.get_quest_reward] run function server:game/quests/get_quest_reward
scoreboard players set #dbc.temp TEMP 0
kill @s