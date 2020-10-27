execute store result storage internal:buffer iterator.current_item.data[].trigger.owner int 1 run scoreboard players get @s owner_id
execute store result storage internal:buffer iterator.current_item.data[].trigger.quest_id int 1 run scoreboard players get @s quest_id
execute if entity @s[tag=QUEST_OBJECTIVE_TRIGGER] run data modify storage internal:buffer iterator.current_item.data[].trigger.type set value QUEST_OBJECTIVE_TRIGGER
execute if entity @s[tag=QUEST_OBJECTIVE_TALK_TO] run data modify storage internal:buffer iterator.current_item.data[].trigger.type set value QUEST_OBJECTIVE_TALK_TO
execute if entity @s[tag=QUEST_OBJECTIVE_ITEM] run data modify storage internal:buffer iterator.current_item.data[].trigger.type set value QUEST_OBJECTIVE_ITEM
execute if entity @s[tag=QUEST_OBJECTIVE_MONSTER] run data modify storage internal:buffer iterator.current_item.data[].trigger.type set value QUEST_OBJECTIVE_MONSTER
execute unless entity @s[tag=QUEST_OBJECTIVE_TALK_TO] unless entity @s[tag=AREA_TRIGGER_QUEST_LINK] store result storage internal:buffer iterator.current_item.data[].trigger.poi[].x int 1 run scoreboard players get @s quest_poi.x
execute unless entity @s[tag=QUEST_OBJECTIVE_TALK_TO] unless entity @s[tag=AREA_TRIGGER_QUEST_LINK] store result storage internal:buffer iterator.current_item.data[].trigger.poi[].y int 1 run scoreboard players get @s quest_poi.y
execute unless entity @s[tag=QUEST_OBJECTIVE_TALK_TO] unless entity @s[tag=AREA_TRIGGER_QUEST_LINK] store result storage internal:buffer iterator.current_item.data[].trigger.poi[].z int 1 run scoreboard players get @s quest_poi.z

scoreboard players operation #temp owner_id = @s[tag=AREA_TRIGGER_QUEST_LINK,tag=!QUEST_OBJECTIVE_TALK_TO] owner_id
scoreboard players operation #temp quest_id = @s[tag=AREA_TRIGGER_QUEST_LINK,tag=!QUEST_OBJECTIVE_TALK_TO] quest_id
execute if entity @s[tag=AREA_TRIGGER_QUEST_LINK,tag=!QUEST_OBJECTIVE_TALK_TO] as @e[type=#internal:area_trigger,tag=AREA_TRIGGER_LINKED_TO] at @s run function internal:common/logging/world/data/quests/select_by_owner

execute if entity @s[tag=QUEST_OBJECTIVE_ITEM] store result storage internal:buffer iterator.current_item.data[].trigger.quest_item[].1 int 1 run scoreboard players get @s quest_item0
execute if entity @s[tag=QUEST_OBJECTIVE_ITEM] store result storage internal:buffer iterator.current_item.data[].trigger.quest_item[].2 int 1 run scoreboard players get @s quest_item1
execute if entity @s[tag=QUEST_OBJECTIVE_ITEM] store result storage internal:buffer iterator.current_item.data[].trigger.quest_item[].3 int 1 run scoreboard players get @s quest_item2
execute if entity @s[tag=QUEST_OBJECTIVE_ITEM] store result storage internal:buffer iterator.current_item.data[].trigger.quest_item[].4 int 1 run scoreboard players get @s quest_item3
execute if entity @s[tag=QUEST_OBJECTIVE_MONSTER] store result storage internal:buffer iterator.current_item.data[].trigger.quest_kill[].1 int 1 run scoreboard players get @s quest_kill0
execute if entity @s[tag=QUEST_OBJECTIVE_MONSTER] store result storage internal:buffer iterator.current_item.data[].trigger.quest_kill[].2 int 1 run scoreboard players get @s quest_kill1
execute if entity @s[tag=QUEST_OBJECTIVE_MONSTER] store result storage internal:buffer iterator.current_item.data[].trigger.quest_kill[].3 int 1 run scoreboard players get @s quest_kill2
execute if entity @s[tag=QUEST_OBJECTIVE_MONSTER] store result storage internal:buffer iterator.current_item.data[].trigger.quest_kill[].4 int 1 run scoreboard players get @s quest_kill3

execute if score @s task_objectives matches 2.. store result storage internal:buffer iterator.current_item.data[].trigger.linked_count int 1 run scoreboard players get #temp success
function internal:common/logging/world/data/quests/check_for_errors

scoreboard players reset @s __event_id
scoreboard players reset #temp __event_id
scoreboard players reset #temp owner_id
scoreboard players reset #temp quest_id
scoreboard players reset #temp success
scoreboard players reset #temp poi_err
#scoreboard players reset #temp entity.pos_x
#scoreboard players reset #temp entity.pos_y
#scoreboard players reset #temp entity.pos_z