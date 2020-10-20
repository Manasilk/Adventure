
execute if score #log __event_idef matches 10 run data modify storage log:world event[-1].idef_name set value PLAYER_START_QUEST
execute if score #log __event_idef matches 11 run data modify storage log:world event[-1].idef_name set value PLAYER_COMPLETE_QUEST