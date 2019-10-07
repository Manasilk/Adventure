data modify entity @s OwnerUUIDLeast set from entity @e[type=#server:area_trigger,tag=target_uuid_host,distance=0..0.001,sort=nearest,limit=1] UUID.Least
data modify entity @s OwnerUUIDMost set from entity @e[type=#server:area_trigger,tag=target_uuid_host,distance=0..0.001,sort=nearest,limit=1] UUID.Most
tag @s remove _h.get_target_guid