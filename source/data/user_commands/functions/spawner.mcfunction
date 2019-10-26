setblock ~ ~ ~ minecraft:spawner{MaxNearbyEntities:0s,RequiredPlayerRange:0s,SpawnData:{id:"minecraft:cave_spider"},SpawnPotentials:[{Entity:{id:"minecraft:cave_spider"}}]}
execute align xyz run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {CustomName:'{"text":"AbandonedMineshaftSpawnAreaTrigger"}',Age:-2147483648,Duration:-1,WaitTime:-2147483648,CustomNameVisible:0b,Tags:["ENTITY_RANK_NORMAL","area_trigger_abandoned_mineshaft"]}

scoreboard players set @e[type=#server:area_trigger,tag=area_trigger_abandoned_mineshaft,sort=nearest,limit=1] spawn_range.x 4
scoreboard players set @e[type=#server:area_trigger,tag=area_trigger_abandoned_mineshaft,sort=nearest,limit=1] spawn_range.y 0
scoreboard players set @e[type=#server:area_trigger,tag=area_trigger_abandoned_mineshaft,sort=nearest,limit=1] spawn_range.z 4

scoreboard players set @e[type=#server:area_trigger,tag=area_trigger_abandoned_mineshaft,sort=nearest,limit=1] override_min.x 0
scoreboard players set @e[type=#server:area_trigger,tag=area_trigger_abandoned_mineshaft,sort=nearest,limit=1] override_min.y 50
scoreboard players set @e[type=#server:area_trigger,tag=area_trigger_abandoned_mineshaft,sort=nearest,limit=1] override_min.z 0

scoreboard players set @e[type=#server:area_trigger,tag=area_trigger_abandoned_mineshaft,sort=nearest,limit=1] override_max.x 0
scoreboard players set @e[type=#server:area_trigger,tag=area_trigger_abandoned_mineshaft,sort=nearest,limit=1] override_max.y 52
scoreboard players set @e[type=#server:area_trigger,tag=area_trigger_abandoned_mineshaft,sort=nearest,limit=1] override_max.z 0