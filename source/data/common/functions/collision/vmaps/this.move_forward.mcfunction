#Colliding with solid blocks or entities will increment to the handler
# until the ray can no longer loop
execute unless block ^ ^ ^0.20 #server:non_solid run scoreboard players set @s _h.vmap_collide 1

### GENERAL
#Checks against entities take in account the invoker's hostility and
# can only virtually collide with entities of opposite hostility
execute if entity @s[tag=ENTITY_ACTION_HOSTILE] run tag @a[dx=-0.2,dy=0.2,dz=0.2,sort=nearest,limit=1] add los_target
execute if entity @s[tag=ENTITY_ACTION_HOSTILE] if entity @a[tag=los_target,dx=-0.2,dy=0.2,dz=0.2,sort=nearest,limit=1] run scoreboard players set @s _h.vmap_collide 1

execute if entity @s[tag=ENTITY_ACTION_FRIENDLY] run tag @e[type=#server:npc_hostile,team=Hostile,dx=-0.2,dy=0.2,dz=0.2,sort=nearest,limit=1] add los_target
execute if entity @s[tag=ENTITY_ACTION_FRIENDLY] if entity @e[type=#server:npc_hostile,team=Hostile,tag=los_target,dx=-0.2,dy=0.2,dz=0.2,sort=nearest,limit=1] run scoreboard players set @s _h.vmap_collide 1
### BUILDER
execute if entity @s[tag=_h.wb_show_info] run function common:collision/vmaps/show_info
execute if entity @s[tag=_h.wb_update_npc] run function common:collision/vmaps/update_npc
execute if score @s[tag=_h.wb_spawn_npc] _h.vmap_collide = #bool true run function common:collision/vmaps/spawn_npc
execute if score @s[tag=_h.wb_spawn_gob] _h.vmap_collide = #bool true run function common:collision/vmaps/spawn_gob
execute if entity @s[tag=_h.wb_despawn_npc] run common:collision/vmaps/despawn_npc
execute if entity @s[tag=_h.wb_despawn_gob] run common:collision/vmaps/despawn_gob

#loop and life conditions
execute positioned ^ ^ ^0.20 unless score @s _h.vmap_collide = #bool true run function common:collision/vmaps/this.move_forward
kill @s[scores={_h.vmap_collide=1}]