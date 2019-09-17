execute if entity @s[scores={wb_option_id=-1}] run function builder:actions_list/this.despawn
execute if entity @s[scores={wb_option_id=1}] run function builder:actions_list/this.align_position
execute if entity @s[scores={wb_option_id=2}] run function builder:actions_list/this.copy_rotation
execute if entity @s[scores={wb_option_id=3}] run function builder:actions_list/this.face_towards_north
execute if entity @s[scores={wb_option_id=4}] run function builder:actions_list/this.face_towards_south
execute if entity @s[scores={wb_option_id=5}] run function builder:actions_list/this.face_towards_east
execute if entity @s[scores={wb_option_id=6}] run function builder:actions_list/this.face_towards_west
execute if entity @s[scores={wb_option_id=7}] run function builder:actions_list/this.face_towards_northeast
execute if entity @s[scores={wb_option_id=8}] run function builder:actions_list/this.face_towards_northwest
execute if entity @s[scores={wb_option_id=9}] run function builder:actions_list/this.face_towards_southeast
execute if entity @s[scores={wb_option_id=10}] run function builder:actions_list/this.face_towards_southwest
execute if entity @s[scores={wb_option_id=11}] run function builder:actions_list/this.face_horizon
execute if entity @s[scores={wb_option_id=12}] run function builder:actions_list/this.set_position
execute if entity @s[scores={wb_option_id=13}] run function builder:actions_list/this.update_equipment

execute if entity @s[tag=_h.wb_show_info] run function builder:actions_list/this.show_entity_data

scoreboard players reset @s wb_option_id