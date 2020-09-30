#summoned by villager
scoreboard players operation @s[tag=!AREA_TRIGGER_LINKED_TO] owner_id = @a[tag=conversation.stop,distance=0..5.299,limit=1] player_id
scoreboard players operation @s[tag=!AREA_TRIGGER_LINKED_TO] quest_id = @a[tag=conversation.stop,distance=0..5.299,limit=1] quest_id
#summoned by quest trigger
scoreboard players operation @s[tag=AREA_TRIGGER_LINKED_TO] owner_id = @e[type=#internal:area_trigger,tag=ENTITY_FLAG_QUEST_TRIGGER,tag=AREA_TRIGGER_QUEST_LINK,sort=nearest,distance=0..0.001,limit=1] owner_id
scoreboard players operation @s[tag=AREA_TRIGGER_LINKED_TO] quest_id = @e[type=#internal:area_trigger,tag=ENTITY_FLAG_QUEST_TRIGGER,tag=AREA_TRIGGER_QUEST_LINK,sort=nearest,distance=0..0.001,limit=1] quest_id