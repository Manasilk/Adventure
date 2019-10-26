scoreboard players add @s wb_struct_itr 1
execute if score @s wb_struct_itr matches 1 run function builder:actions_list/load_info/set_start_position
execute if score @s wb_struct_itr matches 2 run function builder:actions_list/load_info/set_end_position