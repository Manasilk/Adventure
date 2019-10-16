function server:game/quests/add_tracker_to_world

scoreboard players operation @e[type=#server:area_trigger,tag=ENTITY_FLAG_QUEST_TRIGGER,tag=AREA_TRIGGER_LINKED_TO,distance=0..0.001,sort=nearest,limit=1] TEMP = @s TEMP
execute as @e[type=#server:area_trigger,tag=ENTITY_FLAG_QUEST_TRIGGER,tag=AREA_TRIGGER_LINKED_TO,scores={TEMP=1},distance=0..0.001,sort=nearest,limit=1] at @s run function server:game/quests/quest_objective/linked/quest_1001/0
execute as @e[type=#server:area_trigger,tag=ENTITY_FLAG_QUEST_TRIGGER,tag=AREA_TRIGGER_LINKED_TO,scores={TEMP=2},distance=0..0.001,sort=nearest,limit=1] at @s run function server:game/quests/quest_objective/linked/quest_1001/1
execute as @e[type=#server:area_trigger,tag=ENTITY_FLAG_QUEST_TRIGGER,tag=AREA_TRIGGER_LINKED_TO,scores={TEMP=3},distance=0..0.001,sort=nearest,limit=1] at @s run function server:game/quests/quest_objective/linked/quest_1001/2

scoreboard players remove @s TEMP 1
execute if score @s TEMP > #const NULL run function server:game/quests/quest_tracker/quest_triggers/quest_1001