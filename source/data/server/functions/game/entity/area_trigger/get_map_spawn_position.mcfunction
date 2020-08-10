#stores the executor's position to #dbc.temp
execute unless score @s loop_iteration > #const INT_MIN run scoreboard players set @s loop_iteration 10
scoreboard players remove @s loop_iteration 1
function server:game/entity/get_entity_position

#get random value for x, y, z
#if any override values exist assign them as range values
#>x
scoreboard players operation @s[scores={override_min.x=0}] min = #dbc.temp entity_pos.x
scoreboard players operation @s[scores={override_min.x=0}] max = #dbc.temp entity_pos.x
scoreboard players operation @s[scores={override_min.x=0}] min -= @s spawn_range.x
scoreboard players operation @s[scores={override_min.x=0}] max += @s spawn_range.x
scoreboard players operation @s[scores={override_min.x=1..}] min = @s override_min.x
scoreboard players operation @s[scores={override_max.x=1..}] max = @s override_max.x
function server:game/world/math/random/lcg_range
scoreboard players operation #dbc.temp map_pos.x = @s rand
#>y
scoreboard players operation @s[scores={override_min.y=0}] min = #dbc.temp entity_pos.y
scoreboard players operation @s[scores={override_min.y=0}] max = #dbc.temp entity_pos.y
scoreboard players operation @s[scores={override_min.y=0}] min -= @s spawn_range.y
scoreboard players operation @s[scores={override_min.y=0}] max += @s spawn_range.y
scoreboard players operation @s[scores={override_min.y=1..}] min = @s override_min.y
scoreboard players operation @s[scores={override_max.y=1..}] max = @s override_max.y
function server:game/world/math/random/lcg_range
scoreboard players operation #dbc.temp map_pos.y = @s rand
#>z
scoreboard players operation @s[scores={override_min.z=0}] min = #dbc.temp entity_pos.z
scoreboard players operation @s[scores={override_min.z=0}] max = #dbc.temp entity_pos.z
scoreboard players operation @s[scores={override_min.z=0}] min -= @s spawn_range.z
scoreboard players operation @s[scores={override_min.z=0}] max += @s spawn_range.z
scoreboard players operation @s[scores={override_min.z=1..}] min = @s override_min.z
scoreboard players operation @s[scores={override_max.z=1..}] max = @s override_max.z
function server:game/world/math/random/lcg_range
scoreboard players operation #dbc.temp map_pos.z = @s rand

#summon an aec that moves to the `map.pos` coordinates and checks if the blocks at (this->y && this->y+1) are not solid
#unless the conditions are met the aec is destroyed and this function is called again if the aec doesnt exist
summon minecraft:area_effect_cloud ~ ~1 ~ {CustomName:'{"text":"AreaTriggerMapSpawnTarget"}',Age:0,Duration:1,WaitTime:0,CustomNameVisible:0b,Tags:["MAP_SPAWN_TARGET"]}
execute as @e[type=#server:area_trigger,tag=MAP_SPAWN_TARGET,distance=0..1.501,sort=nearest,limit=1] at @s run function server:game/entity/area_trigger/get_map_target_position
#TBA
#spec case spawns put of bounds of range for (y+=1, (x,z)=(x+=1,z+=1)
#execute as @e[type=#server:area_trigger,tag=MAP_SPAWN_TARGET,distance=0..1.501,sort=nearest,limit=1] at @s run function server:game/entity/area_trigger/get_map_target_position_spc
execute unless entity @e[type=#server:area_trigger,tag=_h.pos_spawn_valid,distance=0..31.999,sort=nearest,limit=1] if score @s loop_iteration > #const NULL run function server:game/entity/area_trigger/get_map_spawn_position

scoreboard players reset #dbc.temp entity_pos.x
scoreboard players reset #dbc.temp entity_pos.y
scoreboard players reset #dbc.temp entity_pos.z
scoreboard players reset #dbc.temp map_pos.x
scoreboard players reset #dbc.temp map_pos.y
scoreboard players reset #dbc.temp map_pos.z
scoreboard players reset @s min
scoreboard players reset @s max
scoreboard players reset @s loop_iteration
