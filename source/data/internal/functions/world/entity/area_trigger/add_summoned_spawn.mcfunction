function internal:world/entity/area_trigger/get_entity_count
execute if entity @s[tag=area_trigger.generic_spawner] run function internal:world/entity/area_trigger/get_map_spawn_position
execute if score @s[tag=area_trigger_abandoned_mineshaft] entity_count matches 0..5 at @e[type=#internal:area_trigger,tag=MAP_SPAWN_TARGET,tag=area_trigger.target_position_ok,distance=0..31.999,sort=nearest,limit=1] run function internal:world/entity/area_trigger/summon_mineshaft_spawn
execute if score @s[tag=area_trigger_ocean_monument] entity_count matches 0..8 at @e[type=#internal:area_trigger,tag=MAP_SPAWN_TARGET,tag=area_trigger.target_position_ok,distance=0..31.999,sort=nearest,limit=1] run function internal:world/entity/area_trigger/summon_ocean_monument_spawn

#Special cases (pre-defined spawns)
execute if score @s[tag=area_trigger_pillager_outpost] entity_count matches 0..10 run function internal:world/entity/area_trigger/summon_pillager_outpost_spawn
