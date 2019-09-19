execute if score @s wb_option_id matches 1 run function builder:actions_list/update_entity/this.align_position
execute if score @s wb_option_id matches 2 run function builder:actions_list/update_entity/this.copy_rotation
execute if score @s wb_option_id matches 3 run function builder:actions_list/update_entity/this.face_towards_north
execute if score @s wb_option_id matches 4 run function builder:actions_list/update_entity/this.face_towards_south
execute if score @s wb_option_id matches 5 run function builder:actions_list/update_entity/this.face_towards_east
execute if score @s wb_option_id matches 6 run function builder:actions_list/update_entity/this.face_towards_west
execute if score @s wb_option_id matches 7 run function builder:actions_list/update_entity/this.face_towards_northeast
execute if score @s wb_option_id matches 8 run function builder:actions_list/update_entity/this.face_towards_northwest
execute if score @s wb_option_id matches 9 run function builder:actions_list/update_entity/this.face_towards_southeast
execute if score @s wb_option_id matches 10 run function builder:actions_list/update_entity/this.face_towards_southwest
execute if score @s wb_option_id matches 11 run function builder:actions_list/update_entity/this.face_horizon
execute if score @s wb_option_id matches 12 run function builder:actions_list/update_entity/this.update_position

scoreboard players reset @s wb_option_id
scoreboard players reset @s wb_pos.x
scoreboard players reset @s wb_pos.y
scoreboard players reset @s wb_pos.z
scoreboard players reset @s wb_rot.x
scoreboard players reset @s wb_rot.y