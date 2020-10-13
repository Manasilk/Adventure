execute if score @s[tag=area_trigger_abandoned_mineshaft] entity_count matches 0..5 run function internal:world/entity/area_trigger/summon_mineshaft_spawn
execute if score @s[tag=area_trigger_ocean_monument] entity_count matches 0..8 run function internal:world/entity/area_trigger/summon_ocean_monument_spawn
execute if score @s[tag=area_trigger_pillager_outpost] entity_count matches 0..10 run function internal:world/entity/area_trigger/summon_pillager_outpost_spawn
