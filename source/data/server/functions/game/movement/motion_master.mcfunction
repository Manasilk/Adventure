execute as @e[type=#server:area_trigger,tag=ENTITY_FLAG_WAYPOINT_TARGET] at @s run function server:game/movement/waypoints/waypoint_mgr
execute as @e[type=minecraft:phantom,tag=ENTITY_FLAG_WAYPOINT_MOVEMENT] at @s run function server:game/movement/waypoints/move_point

execute as @e[type=#server:area_trigger,tag=ENTITY_FLAG_SPELL_TRIGGER] at @s run function server:game/movement/follow_target