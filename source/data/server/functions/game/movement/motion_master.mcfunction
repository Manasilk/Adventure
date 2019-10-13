execute if entity @s[type=#server:area_trigger,tag=ENTITY_FLAG_WAYPOINT_TARGET] run function server:game/movement/waypoints/waypoint_mgr
execute if entity @s[type=minecraft:phantom,tag=ENTITY_FLAG_WAYPOINT_MOVEMENT] run function server:game/movement/waypoints/move_point

execute if entity @s[type=#server:area_trigger,tag=ENTITY_FLAG_SPELL_TRIGGER] run function server:game/movement/follow_target
execute if entity @s[type=minecraft:armor_stand,tag=ENTITY_FLAG_SPELL_TRIGGER] run function server:game/movement/follow_target