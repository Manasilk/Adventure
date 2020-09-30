teleport @s ^ ^ ^0.1
execute unless entity @e[type=#internal:area_trigger,tag=ENTITY_FLAG_WAYPOINT_TARGET,distance=0..2.000] run tag @s remove _e.updated_wp_poi
execute if entity @s[tag=_e.get_waypoint_id] run function internal:world/movement/waypoints/get_waypoint_target