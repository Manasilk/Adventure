#Colliding with solid blocks or entities will increment to the handler
# until the ray can no longer loop
execute unless block ^ ^ ^0.20 #server:non_solid run scoreboard players set @s _h.vmap_collide 1

#Checks against entities take in account the invoker's hostility and
# can only virtually collide with entities of opposite hostility
execute if entity @s[tag=ENTITY_ACTION_HOSTILE] run tag @a[distance=0..350] add los_target
execute if entity @s[tag=ENTITY_ACTION_HOSTILE] if entity @a[tag=los_target,distance=0..350] run scoreboard players set @s _h.vmap_collide 1

execute if entity @s[tag=ENTITY_ACTION_FRIENDLY] run tag @e[type=#server:npc_hostile,team=Hostile,distance=0..350] add los_target
execute if entity @s[tag=ENTITY_ACTION_FRIENDLY] if entity @e[type=#server:npc_hostile,team=Hostile,tag=los_target,distance=0..350] run scoreboard players set @s _h.vmap_collide 1

execute if entity @s[tag=_h.wb_show_info] run tag @e[type=#server:creature,limit=1,dx=0.20,dy=0.20,dz=0.20] add _h.wb_show_info
execute if entity @s[tag=_h.wb_show_info] if entity @e[type=#server:creature,tag=_h.wb_show_info,limit=1,distance=0..350] run scoreboard players set @s _h.vmap_collide 1
execute if entity @s[tag=_h.wb_update_npc] run tag @e[type=#server:creature,limit=1,dx=0.20,dy=0.20,dz=0.20] add _h.wb_update_npc
execute if entity @s[tag=_h.wb_update_npc] run scoreboard players operation @e[type=#server:creature,limit=1,dx=0.20,dy=0.20,dz=0.20] wb_option_id = @s wb_option_id
execute if entity @s[tag=_h.wb_update_npc] if entity @e[type=#server:creature,tag=_h.wb_update_npc,limit=1,dx=0.20,dy=0.20,dz=0.20] run function builder:actions_list/entity.fetch_position
execute if entity @s[tag=_h.wb_update_npc] if entity @e[type=#server:creature,tag=_h.wb_update_npc,limit=1,dx=0.20,dy=0.20,dz=0.20] run function builder:actions_list/entity.fetch_position
execute if entity @s[tag=_h.wb_update_npc] if entity @e[type=#server:creature,tag=_h.wb_update_npc,limit=1,dx=0.20,dy=0.20,dz=0.20] run scoreboard players set @s _h.vmap_collide 1
execute if entity @s[tag=_h.wb_despawn_npc] run tag @e[type=#server:creature,limit=1,dx=0.20,dy=0.20,dz=0.20] add _h.wb_despawn_npc
execute if entity @s[tag=_h.wb_despawn_npc] if entity @e[type=#server:creature,tag=_h.wb_despawn_npc,limit=1,dx=0.20,dy=0.20,dz=0.20] run scoreboard players set @s _h.vmap_collide 1
execute if score @s[tag=_h.wb_spawn_npc] _h.vmap_collide = #bool true run function builder:actions_list/spawn_entity/this.entity_list
execute if score @s[tag=_h.wb_spawn_gob] _h.vmap_collide = #bool true run function builder:actions_list/spawn_object/this.object_list

execute positioned ^ ^ ^0.20 unless score @s _h.vmap_collide = #bool true run function common:collision/vmaps/this.move_forward
kill @s[scores={_h.vmap_collide=1}]