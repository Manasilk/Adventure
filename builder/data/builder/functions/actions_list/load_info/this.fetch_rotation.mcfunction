function builder:player_data/player_info.get_rotation
scoreboard players operation @e[type=#server:area_trigger,tag=H_WB_UPDATE_NPC,sort=nearest,limit=1,distance=0..1.001] wb_rot.x = @s wb_rot.x
scoreboard players operation @e[type=#server:area_trigger,tag=H_WB_UPDATE_NPC,sort=nearest,limit=1,distance=0..1.001] wb_rot.y = @s wb_rot.y