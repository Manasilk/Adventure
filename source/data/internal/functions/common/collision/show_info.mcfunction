tag @e[type=#internal:creature,dx=-0.2,dy=0.2,dz=0.2,sort=nearest,limit=1] add world_builder.show_info
execute if entity @e[type=#internal:creature,tag=world_builder.show_info,dx=-0.2,dy=0.2,dz=0.2,sort=nearest,limit=1] run scoreboard players set @s has_collided 1

tag @e[type=#internal:area_trigger,tag=ENTITY_FLAG_EXTRA_OBJECT_BIND,distance=0..3.0,sort=nearest,limit=1] add world_builder.show_info
execute if entity @e[type=#internal:area_trigger,tag=ENTITY_FLAG_EXTRA_OBJECT_BIND,tag=world_builder.show_info,distance=0..3.0,sort=nearest,limit=1] run scoreboard players set @s has_collided 1