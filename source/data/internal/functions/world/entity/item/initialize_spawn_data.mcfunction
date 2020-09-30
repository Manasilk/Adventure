tag @s add item.initialize_spawn_data

data modify entity @s[tag=ENTITY_FLAG_NO_DESPAWN] Age set value -32768
data modify entity @s[tag=ENTITY_FLAG_NO_PICKUP] PickupDelay set value 32767