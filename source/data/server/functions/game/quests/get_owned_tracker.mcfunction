scoreboard players operation #dbc.temp TEMP = @s player_id
execute as @e[type=#server:area_trigger,tag=ENTITY_FLAG_QUEST_TRIGGER,distance=0..31.999] if score @s owner_id = #dbc.temp TEMP run tag @s add _e.get_owned_by
scoreboard players set #dbc.temp TEMP 0