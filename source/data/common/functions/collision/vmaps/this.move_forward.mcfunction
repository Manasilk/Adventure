#Colliding with solid blocks or entities will increment to the handler
# until the ray can no longer loop
execute unless block ^ ^ ^0.25 #server:non_solid run scoreboard players set @s _h.vmap_collide 1

#Checks against entities take in account the invoker's hostility and
# can only virtually collide with entities of opposite hostility
execute if entity @s[tag=ENTITY_ACTION_HOSTILE] run tag @a[distance=0..1.25] add los_target
execute if entity @s[tag=ENTITY_ACTION_HOSTILE] if entity @a[tag=los_target,distance=0..1.25] run scoreboard players set @s _h.vmap_collide 1

execute if entity @s[tag=ENTITY_ACTION_FRIENDLY] run tag @e[type=#server:npc_hostile,team=Hostile,distance=0..1.25] add los_target
execute if entity @s[tag=ENTITY_ACTION_FRIENDLY] if entity @e[type=#server:npc_hostile,team=Hostile,tag=los_target,distance=0..1.25] run scoreboard players set @s _h.vmap_collide 1

execute positioned ^ ^ ^0.25 unless score @s _h.vmap_collide = #bool true run function common:collision/vmaps/this.move_forward