#setup `TRACK_N`,`WAYPOINT_N` to match desired route and waypoint
summon minecraft:phantom ~ ~ ~ {Tags:["ENTITY_FLAG_WAYPOINT_MOVEMENT"],NoAI:1b}
#entity `path_id` must match the aec's path_id so it goes on that path
scoreboard players set @e[type=minecraft:phantom,tag=ENTITY_FLAG_WAYPOINT_MOVEMENT,distance=0..0.001,limit=1] path_id 0
scoreboard players set @e[type=minecraft:phantom,tag=ENTITY_FLAG_WAYPOINT_MOVEMENT,distance=0..0.001,limit=1] waypoint_id 0
execute as @e[type=minecraft:phantom,tag=ENTITY_FLAG_WAYPOINT_MOVEMENT,distance=0..0.001,limit=1] at @s run function server:game/movement/waypoints/get_waypoint_target