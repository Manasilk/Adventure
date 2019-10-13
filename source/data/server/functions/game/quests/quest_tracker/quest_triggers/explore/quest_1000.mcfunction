execute unless score @s TEMP >= #const INT_MIN run scoreboard players set @s TEMP 4
execute if score @s TEMP > #const NULL run function server:game/quests/add_tracker_to_world

scoreboard players operation @e[type=#server:area_trigger,tag=ENTITY_FLAG_QUEST_TRIGGER,tag=!AREA_TRIGGER_LINKED_TO,sort=nearest,limit=1] TEMP = @s TEMP
execute as @e[type=#server:area_trigger,scores={TEMP=1},sort=nearest,limit=1] run function server:game/quests/quest_objective/linked/quest_1000/0
execute as @e[type=#server:area_trigger,scores={TEMP=2},sort=nearest,limit=1] run function server:game/quests/quest_objective/linked/quest_1000/1
execute as @e[type=#server:area_trigger,scores={TEMP=3},sort=nearest,limit=1] run function server:game/quests/quest_objective/linked/quest_1000/2
execute as @e[type=#server:area_trigger,scores={TEMP=4},sort=nearest,limit=1] run function server:game/quests/quest_objective/linked/quest_1000/3

scoreboard players remove @s TEMP 1
execute if score @s TEMP > #const NULL run function server:game/quests/quest_tracker/quest_triggers/explore/quest_1000
scoreboard players reset @s[scores={TEMP=0}] TEMP