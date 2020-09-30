execute if entity @s[type=#internal:area_trigger,tag=ENTITY_FLAG_WAYPOINT_TARGET] run function internal:world/movement/waypoints/waypoint_mgr
execute if entity @s[type=minecraft:phantom,tag=ENTITY_FLAG_WAYPOINT_MOVEMENT] run function internal:world/movement/waypoints/move_point

execute if entity @s[type=#internal:area_trigger,tag=ENTITY_FLAG_SPELL_TRIGGER] run function internal:world/movement/follow_target
execute if entity @s[type=minecraft:armor_stand,tag=ENTITY_FLAG_SPELL_TRIGGER] run function internal:world/movement/follow_target