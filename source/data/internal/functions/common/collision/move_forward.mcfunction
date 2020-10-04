#Colliding with solid blocks or entities will increment to the handler
# until the ray can no longer loop
execute unless block ^ ^ ^0.20 #internal:collision/vmap run scoreboard players set @s has_collided 1

### GENERAL
#Checks against entities take in account the invoker's hostility and
# can only virtually collide with entities of opposite hostility
execute positioned ~-0.25 ~ ~-0.25 if entity @s[tag=ENTITY_ACTION_HOSTILE] run tag @a[tag=!SPELL_AURA_INVISIBILITY,dx=0.25,dy=0.25,dz=0.25,sort=nearest,limit=1] add collision.line_of_sight_target
execute positioned ~-0.25 ~ ~-0.25 if entity @s[tag=ENTITY_ACTION_HOSTILE] if entity @a[tag=collision.line_of_sight_target,dx=0.25,dy=0.25,dz=0.25,sort=nearest,limit=1] run scoreboard players set @s has_collided 1

execute positioned ~-0.25 ~ ~-0.25 if entity @s[tag=ENTITY_ACTION_NEUTRAL] run tag @a[tag=!SPELL_AURA_INVISIBILITY,dx=0.25,dy=0.25,dz=0.25,sort=nearest,limit=1] add collision.line_of_sight_target
execute positioned ~-0.25 ~ ~-0.25 if entity @s[tag=ENTITY_ACTION_NEUTRAL] if entity @a[tag=collision.line_of_sight_target,dx=0.25,dy=0.25,dz=0.25,sort=nearest,limit=1] run scoreboard players set @s has_collided 1

execute positioned ~-0.25 ~ ~-0.25 if entity @s[tag=ENTITY_ACTION_FRIENDLY] run tag @e[type=#internal:npc_hostile,team=Hostile,tag=!SPELL_AURA_INVISIBILITY,dx=0.25,dy=0.25,dz=0.25,sort=nearest,limit=1] add collision.line_of_sight_target
execute positioned ~-0.25 ~ ~-0.25 if entity @s[tag=ENTITY_ACTION_FRIENDLY] if entity @e[type=#internal:npc_hostile,team=Hostile,tag=collision.line_of_sight_target,dx=0.25,dy=0.25,dz=0.25,sort=nearest,limit=1] run scoreboard players set @s has_collided 1
### BUILDER
execute if entity @s[tag=world_builder.show_info] run function internal:common/collision/show_info
execute if entity @s[tag=world_builder.update_creature] run function internal:common/collision/update_npc
execute if score @s[tag=world_builder.spawn_creature] has_collided matches 1 run function internal:common/collision/spawn_npc
execute if score @s[tag=world_builder.spawn_object] has_collided matches 1 run function internal:common/collision/spawn_gob
execute if entity @s[tag=world_builder.despawn_creature] run function internal:common/collision/despawn_npc
execute if entity @s[tag=world_builder.despawn_object] run function internal:common/collision/despawn_gob

#loop and life conditions
execute positioned ^ ^ ^0.20 unless score @s has_collided matches 1 run function internal:common/collision/move_forward
kill @s[scores={has_collided=1}]