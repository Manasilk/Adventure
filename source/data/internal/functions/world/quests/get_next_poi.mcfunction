scoreboard players operation #temp TEMP = @s quest_chat
execute as @e[type=minecraft:villager,tag=ENTITY_FLAG_QUEST_RELATION] if score @s entity_id = #temp TEMP run tag @s add creature.move_to_target
teleport @s @e[type=minecraft:villager,tag=creature.move_to_target,limit=1]
tag @e[type=minecraft:villager,tag=creature.move_to_target,distance=0..0.001,limit=1] remove creature.move_to_target
scoreboard players set #temp TEMP 0
#tag @s remove area_trigger.get_next_point_of_interest