execute if entity @s[type=#internal:creature] run scoreboard players add #entity entity_guid 1
execute if entity @s[type=#internal:creature] run scoreboard players operation @s entity_guid = #entity entity_guid

execute if entity @s[type=#internal:object,tag=ENTITY_FLAG_OBJECT_ACTOR] run scoreboard players add #object entity_guid 1
execute if entity @s[type=#internal:object,tag=ENTITY_FLAG_OBJECT_ACTOR] run scoreboard players operation @s entity_guid = #object entity_guid

execute if entity @s[type=#internal:area_trigger,tag=ENTITY_FLAG_EXTRA_TRIGGER] run scoreboard players add #area_trigger entity_guid 1
execute if entity @s[type=#internal:area_trigger,tag=ENTITY_FLAG_EXTRA_TRIGGER] run scoreboard players operation @s entity_guid = #area_trigger entity_guid