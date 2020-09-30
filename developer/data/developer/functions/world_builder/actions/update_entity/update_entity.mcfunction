execute if score @s wb.option_id matches 1 run function developer:world_builder/update_entity/align_position
execute if score @s wb.option_id matches 2 run function developer:world_builder/update_entity/copy_rotation
execute if score @s wb.option_id matches 3 run function developer:world_builder/update_entity/face_towards_north
execute if score @s wb.option_id matches 4 run function developer:world_builder/update_entity/face_towards_south
execute if score @s wb.option_id matches 5 run function developer:world_builder/update_entity/face_towards_east
execute if score @s wb.option_id matches 6 run function developer:world_builder/update_entity/face_towards_west
execute if score @s wb.option_id matches 7 run function developer:world_builder/update_entity/face_towards_northeast
execute if score @s wb.option_id matches 8 run function developer:world_builder/update_entity/face_towards_northwest
execute if score @s wb.option_id matches 9 run function developer:world_builder/update_entity/face_towards_southeast
execute if score @s wb.option_id matches 10 run function developer:world_builder/update_entity/face_towards_southwest
execute if score @s wb.option_id matches 11 run function developer:world_builder/update_entity/face_horizon
execute if score @s wb.option_id matches 12 run function developer:world_builder/update_entity/update_position

scoreboard players reset @s wb.option_id
scoreboard players reset @s wb.pos_x
scoreboard players reset @s wb.pos_y
scoreboard players reset @s wb.pos_z
scoreboard players reset @s wb.rot_x
scoreboard players reset @s wb.rot_y