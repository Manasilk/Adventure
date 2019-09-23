scoreboard players operation @e[type=#server:area_trigger,tag=TEMP_BUILDER_OBJECT,dx=-1.0,dz=-1.0,sort=nearest,limit=1] wb_biome_id = @s wb_biome_id
scoreboard players operation @e[type=#server:area_trigger,tag=TEMP_BUILDER_OBJECT,dx=-1.0,dz=-1.0,sort=nearest,limit=1] wb_gob_type = @s wb_gob_type
scoreboard players operation @e[type=#server:area_trigger,tag=TEMP_BUILDER_OBJECT,dx=-1.0,dz=-1.0,sort=nearest,limit=1] wb_gob_id = @s wb_gob_id

execute store result score @e[type=#server:area_trigger,tag=TEMP_BUILDER_OBJECT,dx=-1.0,dz=-1.0,sort=nearest,limit=1] wb_pos.x run data get entity @s Pos[0] 1
execute store result score @e[type=#server:area_trigger,tag=TEMP_BUILDER_OBJECT,dx=-1.0,dz=-1.0,sort=nearest,limit=1] wb_pos.y run data get entity @s Pos[1] 1
execute store result score @e[type=#server:area_trigger,tag=TEMP_BUILDER_OBJECT,dx=-1.0,dz=-1.0,sort=nearest,limit=1] wb_pos.z run data get entity @s Pos[2] 1

scoreboard players set @e[type=#server:area_trigger,tag=TEMP_BUILDER_OBJECT,dx=-1.0,dz=-1.0,sort=nearest,limit=1] wb_struct_itr 0

execute if entity @s[tag=_h.wb_spawn_gob] run tag @e[type=#server:area_trigger,tag=TEMP_BUILDER_OBJECT,dx=-1.0,dz=-1.0,limit=1] add _h.wb_spawn_gob
execute if entity @s[tag=_h.wb_despawn_gob] run tag @e[type=#server:area_trigger,tag=TEMP_BUILDER_OBJECT,dx=-1.0,dz=-1.0,limit=1] add _h.wb_despawn_gob

execute if entity @s[tag=NONE] run tag @e[type=#server:area_trigger,tag=TEMP_BUILDER_OBJECT,dx=-1.0,dz=-1.0,limit=1] add NONE
execute if entity @s[tag=CLOCKWISE_90] run tag @e[type=#server:area_trigger,tag=TEMP_BUILDER_OBJECT,dx=-1.0,dz=-1.0,limit=1] add CLOCKWISE_90
execute if entity @s[tag=CLOCKWISE_180] run tag @e[type=#server:area_trigger,tag=TEMP_BUILDER_OBJECT,dx=-1.0,dz=-1.0,limit=1] add CLOCKWISE_180
execute if entity @s[tag=COUNTERCLOCKWISE_90] run tag @e[type=#server:area_trigger,tag=TEMP_BUILDER_OBJECT,dx=-1.0,dz=-1.0,limit=1] add COUNTERCLOCKWISE_90