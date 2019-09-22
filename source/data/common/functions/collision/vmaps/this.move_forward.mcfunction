#Colliding with solid blocks or entities will increment to the handler
# until the ray can no longer loop
execute unless block ^ ^ ^0.20 #server:non_solid run scoreboard players set @s _h.vmap_collide 1

### GENERAL
#Checks against entities take in account the invoker's hostility and
# can only virtually collide with entities of opposite hostility
execute if entity @s[tag=ENTITY_ACTION_HOSTILE] run tag @a[distance=0..350] add los_target
execute if entity @s[tag=ENTITY_ACTION_HOSTILE] if entity @a[tag=los_target,distance=0..350] run scoreboard players set @s _h.vmap_collide 1

execute if entity @s[tag=ENTITY_ACTION_FRIENDLY] run tag @e[type=#server:npc_hostile,team=Hostile,distance=0..350] add los_target
execute if entity @s[tag=ENTITY_ACTION_FRIENDLY] if entity @e[type=#server:npc_hostile,team=Hostile,tag=los_target,distance=0..350] run scoreboard players set @s _h.vmap_collide 1
### BUILDER
#
#class.entity
execute if entity @s[tag=_h.wb_show_info] run tag @e[type=#server:creature,dx=-0.2,dy=0.2,dz=0.2,sort=nearest,limit=1] add _h.wb_show_info
execute if entity @s[tag=_h.wb_show_info] if entity @e[type=#server:creature,tag=_h.wb_show_info,dx=-0.2,dy=0.2,dz=0.2,sort=nearest,limit=1] run scoreboard players set @s _h.vmap_collide 1

execute if entity @s[tag=_h.wb_update_npc] run tag @e[type=#server:creature,dx=-0.2,dy=0.2,dz=0.2,sort=nearest,limit=1] add _h.wb_update_npc
execute if entity @s[tag=_h.wb_update_npc] run scoreboard players operation @e[type=#server:creature,dx=-0.2,dy=0.2,dz=0.2,sort=nearest,limit=1] wb_option_id = @s wb_option_id
execute if entity @s[tag=_h.wb_update_npc] if entity @e[type=#server:creature,tag=_h.wb_update_npc,dx=-0.2,dy=0.2,dz=0.2,sort=nearest,limit=1] run function builder:entity_data/entity.fetch_position
execute if entity @s[tag=_h.wb_update_npc] if entity @e[type=#server:creature,tag=_h.wb_update_npc,dx=-0.2,dy=0.2,dz=0.2,sort=nearest,limit=1] run function builder:entity_data/entity.fetch_rotation
execute if entity @s[tag=_h.wb_update_npc] if entity @e[type=#server:creature,tag=_h.wb_update_npc,dx=-0.2,dy=0.2,dz=0.2,sort=nearest,limit=1] run scoreboard players set @s _h.vmap_collide 1

execute if score @s[tag=_h.wb_spawn_npc] _h.vmap_collide = #bool true run function builder:actions_list/spawn_entity/this.entity_list
execute if entity @s[tag=_h.wb_despawn_npc] run tag @e[type=#server:creature,dx=-0.2,dy=0.2,dz=0.2,sort=nearest,limit=1] add _h.wb_despawn_npc
execute if entity @s[tag=_h.wb_despawn_npc] if entity @e[type=#server:creature,tag=_h.wb_despawn_npc,dx=-0.2,dy=0.2,dz=0.2,sort=nearest,limit=1] run scoreboard players set @s _h.vmap_collide 1
#
#class.gameobject
execute if score @s[tag=_h.wb_spawn_gob] _h.vmap_collide = #bool true run scoreboard players add @e[type=#server:area_trigger,tag=TEMP_BUILDER_OBJECT,dx=-1.0,dz=-1.0,sort=nearest,limit=1] wb_struct_itr 1
execute if score @s[tag=_h.wb_spawn_gob] _h.vmap_collide = #bool true unless entity @e[type=#server:area_trigger,tag=TEMP_BUILDER_OBJECT,dx=-1.0,dz=-1.0,sort=nearest,limit=1] run function builder:actions_list/spawn_object/this.create_temp_object
execute if entity @s[tag=_h.wb_despawn_gob] run tag @e[type=#server:area_trigger,tag=ENTITY_FLAG_OBJECT_HOST,dx=-1.0,dz=-1.0,sort=nearest,limit=1] add _h.wb_despawn_gob
execute if entity @s[tag=_h.wb_despawn_gob] if entity @e[type=#server:area_trigger,tag=wb_despawn_gob,dx=-1.0,dz=-1.0,sort=nearest,limit=1] run scoreboard players set @s _h.vmap_collide 1

#loop and life conditions
execute positioned ^ ^ ^0.20 unless score @s _h.vmap_collide = #bool true run function common:collision/vmaps/this.move_forward
kill @s[scores={_h.vmap_collide=1}]