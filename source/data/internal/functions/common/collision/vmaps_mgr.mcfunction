execute as @e[type=#internal:creature,tag=collision.line_of_sight_target] run function internal:common/collision/update_entity
execute as @a[tag=collision.line_of_sight_target] run function internal:common/collision/update_entity

execute as @e[type=#internal:creature,tag=collision.attempt_line_of_sight_collision] at @s anchored eyes positioned ~ ~0.1 ~ run function internal:common/collision/build_los_ray
execute as @a[tag=collision.attempt_line_of_sight_collision] at @s run function internal:common/collision/build_los_ray

execute as @e[type=#internal:area_trigger,tag=ENTITY_FLAG_COLLISION_TRIGGER] at @s anchored feet positioned ^ ^ ^ run function internal:common/collision/move_forward