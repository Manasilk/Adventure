tag @e[type=#internal:creature,dx=-0.2,dy=0.2,dz=0.2,sort=nearest,limit=1] add world_builder.update_npc
scoreboard players operation @e[type=#internal:creature,dx=-0.2,dy=0.2,dz=0.2,sort=nearest,limit=1] wb.option_id = @s wb.option_id

execute if entity @e[type=#internal:creature,tag=world_builder.update_npc,dx=-0.2,dy=0.2,dz=0.2,sort=nearest,limit=1] run function developer:world_builder/info/creature/fetch_position
execute if entity @e[type=#internal:creature,tag=world_builder.update_npc,dx=-0.2,dy=0.2,dz=0.2,sort=nearest,limit=1] run function developer:world_builder/info/creature/fetch_rotation
execute if entity @e[type=#internal:creature,tag=world_builder.update_npc,dx=-0.2,dy=0.2,dz=0.2,sort=nearest,limit=1] run scoreboard players set @s has_collided 1