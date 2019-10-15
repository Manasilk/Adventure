execute if entity @a[tag=ENTITY_FLAG_QUEST_TARGET,scores={_h.interact=1..},distance=0..5.299] run function server:game/entity/area_trigger/get_linked_area_trigger

execute unless entity @e[type=minecraft:villager,tag=ENTITY_FLAG_QUEST_RELATION,distance=0..0.001,limit=1] run function server:game/time/update_entity
execute if score @s entity_upd_t = #const UPD_CYCLE run tag @s add _e.get_next_poi
execute if entity @s[tag=_e.get_next_poi] run function server:game/quests/get_next_poi