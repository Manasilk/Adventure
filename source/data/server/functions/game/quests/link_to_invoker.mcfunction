#summoned by villager
scoreboard players operation @s[tag=!AREA_TRIGGER_LINKED_TO] owner_id = @a[tag=_h.gossip_break,distance=0..3.999,limit=1] player_id
scoreboard players operation @s[tag=!AREA_TRIGGER_LINKED_TO] quest_id = @a[tag=_h.gossip_break,distance=0..3.999,limit=1] quest_id
#summoned by quest trigger
scoreboard players operation @s[tag=AREA_TRIGGER_LINKED_TO] owner_id = @e[type=#server:area_trigger,tag=ENTITY_FLAG_QUEST_TRIGGER,tag=AREA_TRIGGER_QUEST_LINK,sort=nearest,distance=0..0.001,limit=1] owner_id
scoreboard players operation @s[tag=AREA_TRIGGER_LINKED_TO] quest_id = @e[type=#server:area_trigger,tag=ENTITY_FLAG_QUEST_TRIGGER,tag=AREA_TRIGGER_QUEST_LINK,sort=nearest,distance=0..0.001,limit=1] quest_id