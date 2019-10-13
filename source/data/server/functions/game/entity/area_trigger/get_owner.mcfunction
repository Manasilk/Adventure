scoreboard players operation #dbc.temp TEMP = @s owner_id
execute positioned 0 0 0 as @e[type=#server:area_trigger,tag=ENTITY_FLAG_QUEST_TRIGGER,tag=QUEST_OBJECTIVE_TRIGGER] if score @s owner_id = #dbc.temp TEMP run tag @s add _e.get_event_target
scoreboard players reset #dbc.temp TEMP