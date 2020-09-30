execute if entity @a[tag=ENTITY_FLAG_QUEST_TARGET,scores={chat.triggered=1..},distance=0..5.299] run function internal:world/entity/area_trigger/get_linked_area_trigger

execute unless entity @e[type=minecraft:villager,tag=ENTITY_FLAG_QUEST_RELATION,distance=0..0.001,limit=1] run function internal:world/time/update_entity
execute if score @s entity_tick = #const UPD_CYCLE run function internal:world/quests/get_next_poi
#execute if score @s entity_tick = #const UPD_CYCLE run tag @s add area_trigger.get_next_point_of_interest
#execute if entity @s[tag=area_trigger.get_next_point_of_interest] run function internal:world/quests/get_next_poi