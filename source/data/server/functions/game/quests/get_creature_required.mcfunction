scoreboard players operation #dbc.temp TEMP = @s quest_id
execute as @e[type=#server:creature,tag=CREATURE_QUEST_REQUIREMENT] if score @s quest_id > #const NULL run scoreboard players operation @s quest_id -= #dbc.temp TEMP
execute unless entity @e[type=#server:creature,tag=CREATURE_QUEST_REQUIREMENT,scores={quest_id=0}] run scoreboard players add @s respawn_upd_t 1
execute as @e[type=#server:creature,tag=CREATURE_QUEST_REQUIREMENT] if score @s quest_id >= #const INT_MIN run scoreboard players operation @s quest_id += #dbc.temp TEMP

scoreboard players set #dbc.temp TEMP 0