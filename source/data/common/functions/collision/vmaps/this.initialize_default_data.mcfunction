#Upon summoning the virtual ray, we assign the invoker's rotation as the rotation the ray is facing
scoreboard players operation @s entity_hostility = #dbc.temp entity_hostility
tag @s[scores={entity_hostility=1}] add ENTITY_ACTION_FRIENDLY
tag @s[scores={entity_hostility=3}] add ENTITY_ACTION_HOSTILE

execute store result entity @s Rotation[0] float 1 run scoreboard players get #dbc.temp entity_rot.x
execute store result entity @s Rotation[1] float 1 run scoreboard players get #dbc.temp entity_rot.y
function common:collision/vmaps/flush_temp_data

scoreboard players set @s _h.vmap_collide 0
tag @s add _e.initialize_data