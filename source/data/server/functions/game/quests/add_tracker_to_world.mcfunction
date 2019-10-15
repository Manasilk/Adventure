execute if entity @s[type=minecraft:villager] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"\"QuestAreaTrigger\"",CustomNameVisible:0b,Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["ENTITY_FLAG_QUEST_TRIGGER"]}
execute if entity @s[type=#server:area_trigger,tag=AREA_TRIGGER_QUEST_LINK] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"\"QuestAreaTrigger\"",CustomNameVisible:0b,Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["ENTITY_FLAG_QUEST_TRIGGER","AREA_TRIGGER_LINKED_TO"]}

execute as @e[type=#server:area_trigger,tag=!_e.load_quest_info,distance=0..0.001,sort=nearest,limit=1] at @s run function server:game/quests/link_to_invoker
tag @s[type=minecraft:villager] remove _e.get_quest_tracker