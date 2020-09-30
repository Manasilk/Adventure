scoreboard players operation #temp TEMP = @s player_id
execute as @e[type=#internal:area_trigger,tag=ENTITY_FLAG_QUEST_TRIGGER,tag=QUEST_OBJECTIVE_MONSTER] if score @s owner_id = #temp TEMP run tag @s add area_trigger.linked_to_owner
scoreboard players set #temp TEMP 0