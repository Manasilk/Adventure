execute if score #log __event_type matches 0 run data modify storage log:world_builder event[-1].type_name set value DEBUG
execute if score #log __event_type matches 1 run data modify storage log:world_builder event[-1].type_name set value INFO
execute if score #log __event_type matches 2 run data modify storage log:world_builder event[-1].type_name set value WARNING
execute if score #log __event_type matches 3 run data modify storage log:world_builder event[-1].type_name set value ERROR