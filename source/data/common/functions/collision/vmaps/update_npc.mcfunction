tag @e[type=#server:creature,dx=-0.2,dy=0.2,dz=0.2,sort=nearest,limit=1] add _h.wb_update_npc
scoreboard players operation @e[type=#server:creature,dx=-0.2,dy=0.2,dz=0.2,sort=nearest,limit=1] wb_option_id = @s wb_option_id

execute if entity @e[type=#server:creature,tag=_h.wb_update_npc,dx=-0.2,dy=0.2,dz=0.2,sort=nearest,limit=1] run function builder:entity_data/entity.fetch_position
execute if entity @e[type=#server:creature,tag=_h.wb_update_npc,dx=-0.2,dy=0.2,dz=0.2,sort=nearest,limit=1] run function builder:entity_data/entity.fetch_rotation
execute if entity @e[type=#server:creature,tag=_h.wb_update_npc,dx=-0.2,dy=0.2,dz=0.2,sort=nearest,limit=1] run scoreboard players set @s _h.vmap_collide 1