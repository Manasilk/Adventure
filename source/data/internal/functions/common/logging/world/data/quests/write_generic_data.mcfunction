execute store result storage log:world event[-1].data[].guid int 1 run scoreboard players get #log player_id
execute store result storage log:world event[-1].data[].quest_id int 1 run scoreboard players get #log quest_id
execute if score #log __event_idef matches 10 store result storage log:world event[-1].data[].start_id int 1 run scoreboard players get #log entity_guid
execute if score #log __event_idef matches 11 store result storage log:world event[-1].data[].finish_id int 1 run scoreboard players get #log entity_guid

scoreboard players reset #log player_id
scoreboard players reset #log quest_id
scoreboard players reset #log entity_guid