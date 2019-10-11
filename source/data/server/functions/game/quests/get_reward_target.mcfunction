scoreboard players operation #dbc.temp TEMP = @s owner_id
execute if entity @s[tag=QUEST_OBJECTIVE_TRIGGER] as @a[tag=ENTITY_FLAG_QUEST_TARGET,distance=0..5.299] if score @s player_id = #dbc.temp TEMP run tag @s add _e.get_quest_reward
execute if entity @s[tag=QUEST_OBJECTIVE_MONSTER] as @a[tag=ENTITY_FLAG_QUEST_TARGET,distance=0..31.999] if score @s player_id = #dbc.temp TEMP run tag @s add _e.get_quest_reward
execute if entity @s[tag=QUEST_OBJECTIVE_ITEM] as @a[tag=ENTITY_FLAG_QUEST_TARGET,distance=0..31.999] if score @s player_id = #dbc.temp TEMP run tag @s add _e.get_quest_reward
execute if entity @s[tag=QUEST_OBJECTIVE_TALK_TO] as @a[tag=ENTITY_FLAG_QUEST_TARGET,distance=0..4.299] if score @s player_id = #dbc.temp TEMP run tag @s add _e.get_quest_reward
function server:game/quests/quest_event/quest_find_reward

execute as @a[tag=_e.get_quest_reward] if score @s playerId = #dbc.temp TEMP run tag @s remove _e.get_quest_reward
scoreboard players set #dbc.temp TEMP 0
kill @s