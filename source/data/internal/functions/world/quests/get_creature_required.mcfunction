scoreboard players operation #temp TEMP = @s quest_id
execute as @e[type=#internal:creature,tag=CREATURE_QUEST_REQUIREMENT] if score @s quest_id > #const NULL run scoreboard players operation @s quest_id -= #temp TEMP
execute unless entity @e[type=#internal:creature,tag=CREATURE_QUEST_REQUIREMENT,scores={quest_id=0}] run scoreboard players add @s respawn_tick 1
execute as @e[type=#internal:creature,tag=CREATURE_QUEST_REQUIREMENT] if score @s quest_id >= #const INT_MIN run scoreboard players operation @s quest_id += #temp TEMP

scoreboard players set #temp TEMP 0