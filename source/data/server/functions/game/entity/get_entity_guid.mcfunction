execute in minecraft:overworld positioned 0 0 0 run data modify entity @e[type=#server:area_trigger,tag=target_uuid_host,distance=0..0.001,sort=nearest,limit=1] UUIDLeast set from entity @s UUIDLeast
execute in minecraft:overworld positioned 0 0 0 run data modify entity @e[type=#server:area_trigger,tag=target_uuid_host,distance=0..0.001,sort=nearest,limit=1] UUIDMost set from entity @s UUIDMost
tag @s remove _e.get_guid