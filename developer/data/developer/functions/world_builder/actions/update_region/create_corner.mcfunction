scoreboard players add @s wb.struct_itr 1
execute if score @s wb.struct_itr matches 1 run function developer:world_builder/actions/load_info/set_start_position
execute if score @s wb.struct_itr matches 2 run function developer:world_builder/actions/load_info/set_end_position