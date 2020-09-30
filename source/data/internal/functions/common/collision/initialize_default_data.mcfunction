#Upon summoning the virtual ray, we assign the invoker's rotation as the rotation the ray is facing
scoreboard players operation @s entity_hostility = #temp entity_hostility
tag @s[scores={entity_hostility=1}] add ENTITY_ACTION_FRIENDLY
tag @s[scores={entity_hostility=2}] add ENTITY_ACTION_NEUTRAL
tag @s[scores={entity_hostility=3}] add ENTITY_ACTION_HOSTILE

execute store result entity @s Rotation[0] float 1 run scoreboard players get #temp entity.rot_x
execute store result entity @s Rotation[1] float 1 run scoreboard players get #temp entity.rot_y
function internal:common/collision/flush_temp_data

scoreboard players set @s has_collided 0
tag @s add area_trigger.initialized_spawn_data