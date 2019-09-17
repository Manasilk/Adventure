function server:game/entity/player/get_player_position
execute store result entity @e[type=#server:area_trigger,tag=vmap_los_chk,distance=0..0.001,sort=nearest,limit=1] Pos[0] double 1 run scoreboard players get #dbc.temp entity_pos.x
execute store result entity @e[type=#server:area_trigger,tag=vmap_los_chk,distance=0..0.001,sort=nearest,limit=1] Pos[1] double 1 run scoreboard players get #dbc.temp entity_pos.y
execute store result entity @e[type=#server:area_trigger,tag=vmap_los_chk,distance=0..0.001,sort=nearest,limit=1] Pos[2] double 1 run scoreboard players get #dbc.temp entity_pos.z