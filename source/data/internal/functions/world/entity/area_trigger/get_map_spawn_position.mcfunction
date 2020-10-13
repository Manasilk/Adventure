#CURRENTLY UNSUSED

#execute unless score @s loop_iteration > #const INT_MIN run scoreboard players set @s loop_iteration 10
#scoreboard players remove @s loop_iteration 1
#stores the executor's position to #temp
#function internal:world/entity/get_entity_position

#get random value for x, y, z
#if any override values exist assign them as range values
#>x
#scoreboard players operation @s min = #temp entity.pos_x
#scoreboard players operation @s max = #temp entity.pos_x
#scoreboard players operation @s[scores={override_min.x=0}] min -= @s spawn_range.x
#scoreboard players operation @s[scores={override_max.x=0}] max += @s spawn_range.x
#scoreboard players operation @s[scores={override_min.x=1..}] min = @s override_min.x
#scoreboard players operation @s[scores={override_max.x=1..}] max = @s override_max.x
#function internal:world/general/compute/random/lcg_range
#scoreboard players operation #temp map_pos.x = @s rand
#>y
#scoreboard players operation @s min = #temp entity.pos_y
#scoreboard players operation @s max = #temp entity.pos_y
#scoreboard players operation @s[scores={override_min.y=0}] min -= @s spawn_range.y
#scoreboard players operation @s[scores={override_max.y=0}] max += @s spawn_range.y
#scoreboard players operation @s[scores={override_min.y=1..}] min = @s override_min.y
#scoreboard players operation @s[scores={override_max.y=1..}] max = @s override_max.y
#function internal:world/general/compute/random/lcg_range
#scoreboard players operation #temp map_pos.y = @s rand
#>z
#scoreboard players operation @s min = #temp entity.pos_z
#scoreboard players operation @s max = #temp entity.pos_z
#scoreboard players operation @s[scores={override_min.z=0}] min -= @s spawn_range.z
#scoreboard players operation @s[scores={override_max.z=0}] max += @s spawn_range.z
#scoreboard players operation @s[scores={override_min.z=1..}] min = @s override_min.z
#scoreboard players operation @s[scores={override_max.z=1..}] max = @s override_max.z
#function internal:world/general/compute/random/lcg_range
#scoreboard players operation #temp map_pos.z = @s rand
#tellraw @a[tag=account.debugging] [{"text":"GUID: "},{"score":{"name":"@s","objective":"entity_guid"}},{"text":", X: "},{"score":{"name":"#temp","objective":"map_pos.x"}},{"text":", Y: "},{"score":{"name":"#temp","objective":"map_pos.y"}},{"text":", Z: "},{"score":{"name":"#temp","objective":"map_pos.z"}},{"text":", Iteration: "},{"score":{"name":"@s","objective":"loop_iteration"}}]
#
#summon an aec that moves to the `map.pos` coordinates and checks if the blocks at (this->y && this->y+1) are not solid
#unless the conditions are met the aec is destroyed and this function is called again if the aec doesnt exist
#summon minecraft:area_effect_cloud ~ ~1 ~ {CustomName:'{"text":"AreaTriggerMapSpawnTarget"}',Age:0,Duration:0,WaitTime:0,CustomNameVisible:0b,Tags:["MAP_SPAWN_TARGET"]}
#execute as @e[type=#internal:area_trigger,tag=MAP_SPAWN_TARGET,distance=0..1.501,sort=nearest,limit=1] at @s run function internal:world/entity/area_trigger/check_target_position
#execute unless entity @e[type=#internal:area_trigger,tag=area_trigger.target_position_ok,distance=0..31.999,sort=nearest,limit=1] if score @s loop_iteration > #const NULL run function internal:world/entity/area_trigger/get_map_spawn_position
#
#scoreboard players reset #temp entity.pos_x
#scoreboard players reset #temp entity.pos_y
#scoreboard players reset #temp entity.pos_z
#scoreboard players reset #temp map_pos.x
#scoreboard players reset #temp map_pos.y
#scoreboard players reset #temp map_pos.z
#scoreboard players reset @s rand
#scoreboard players reset @s min
#scoreboard players reset @s max
#scoreboard players reset @s loop_iteration