function builder:player_data/player_info.get_position
scoreboard players operation @e[type=#server:area_trigger,tag=H_WB_UPDATE_NPC,sort=nearest,limit=1,distance=0..1.001] wb_pos.x = @s wb_pos.x
scoreboard players operation @e[type=#server:area_trigger,tag=H_WB_UPDATE_NPC,sort=nearest,limit=1,distance=0..1.001] wb_pos.y = @s wb_pos.y
scoreboard players operation @e[type=#server:area_trigger,tag=H_WB_UPDATE_NPC,sort=nearest,limit=1,distance=0..1.001] wb_pos.z = @s wb_pos.z