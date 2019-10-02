tag @e[type=#server:creature,dx=-0.2,dy=0.2,dz=0.2,sort=nearest,limit=1] add _h.wb_show_info
execute if entity @e[type=#server:creature,tag=_h.wb_show_info,dx=-0.2,dy=0.2,dz=0.2,sort=nearest,limit=1] run scoreboard players set @s _h.vmap_collide 1

tag @e[type=#server:area_trigger,tag=ENTITY_FLAG_OBJECT_HOST,distance=0..3.0,sort=nearest,limit=1] add _h.wb_show_info
execute if entity @e[type=#server:area_trigger,tag=ENTITY_FLAG_OBJECT_HOST,tag=_h.wb_show_info,distance=0..3.0,sort=nearest,limit=1] run scoreboard players set @s _h.vmap_collide 1