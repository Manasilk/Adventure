function server:game/entity/get_entity_position
execute store result entity @e[type=#internal:area_trigger,tag=vmap_los_chk,distance=0..0.001,sort=nearest,limit=1] Pos[0] double 1 run scoreboard players get #dbc.temp entity.pos_x
execute store result entity @e[type=#internal:area_trigger,tag=vmap_los_chk,distance=0..0.001,sort=nearest,limit=1] Pos[1] double 1 run scoreboard players get #dbc.temp entity.pos_y
execute store result entity @e[type=#internal:area_trigger,tag=vmap_los_chk,distance=0..0.001,sort=nearest,limit=1] Pos[2] double 1 run scoreboard players get #dbc.temp entity.pos_z