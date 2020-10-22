scoreboard players operation #temp target_id = @s target_id
execute as @a[distance=0..31.999] if score @s player_id = #temp target_id run tag @s add area_trigger.follow_target
teleport @s[tag=!MOVEMENTGENERATOR_DOUBLE_RATE] ^ ^ ^0.5 facing entity @a[tag=area_trigger.follow_target,distance=0..63.999,limit=1]
teleport @s[tag=MOVEMENTGENERATOR_DOUBLE_RATE] ^ ^ ^0.75 facing entity @a[tag=area_trigger.follow_target,distance=0..63.999,limit=1]

tag @a[tag=area_trigger.follow_target,distance=0..31.999] remove area_trigger.follow_target
scoreboard players reset #temp target_id