scoreboard players operation #temp TEMP = @s quest_id
execute as @e[type=#internal:creature,tag=CREATURE_QUEST_REQUIREMENT] if score @s quest_id > #const NULL run scoreboard players operation @s quest_id -= #temp TEMP
execute unless entity @e[type=#internal:creature,tag=CREATURE_QUEST_REQUIREMENT,scores={quest_id=0}] run scoreboard players add @s respawn_tick 1
execute as @e[type=#internal:creature,tag=CREATURE_QUEST_REQUIREMENT] if score @s quest_id >= #const INT_MIN run scoreboard players operation @s quest_id += #temp TEMP

scoreboard players set #temp TEMP 0


scoreboard players operation #temp TEMP = @s quest_item0
execute if entity @s[scores={quest_item0=1..}] unless entity @e[type=minecraft:item,tag=ITEM_QUEST_REQUIREMENT,nbt={Item:{tag:{QuestItem:1b}}},distance=0..31.999] run scoreboard players add @s respawn_tick 1
execute if entity @s[scores={quest_item1=1..}] unless entity @e[type=minecraft:item,tag=ITEM_QUEST_REQUIREMENT,nbt={Item:{tag:{QuestItem:2b}}},distance=0..31.999] run scoreboard players add @s respawn_tick 1
execute if entity @s[scores={quest_item2=1..}] unless entity @e[type=minecraft:item,tag=ITEM_QUEST_REQUIREMENT,nbt={Item:{tag:{QuestItem:3b}}},distance=0..31.999] run scoreboard players add @s respawn_tick 1
execute if entity @s[scores={quest_item3=1..}] unless entity @e[type=minecraft:item,tag=ITEM_QUEST_REQUIREMENT,nbt={Item:{tag:{QuestItem:4b}}},distance=0..31.999] run scoreboard players add @s respawn_tick 1

scoreboard players operation #temp TEMP = @s[scores={quest_item1=1..}] quest_item1
execute if score @s quest_item1 matches 1.. as @e[type=minecraft:item,tag=ITEM_QUEST_REQUIREMENT,nbt={Item:{tag:{QuestItem:1b}}},distance=0..31.999] if score @s quest_id > #const NULL run scoreboard players operation @s quest_id -= #temp TEMP
execute if score @s quest_item1 matches 1.. unless entity @e[type=minecraft:item,tag=ITEM_QUEST_REQUIREMENT,scores={quest_id=0},distance=0..31.999,limit=1] 

execute if score @s quest_item1 matches 1.. unless entity @e[type=minecraft:item,tag=ITEM_QUEST_REQUIREMENT,nbt={Item:{tag:{QuestItem:1b}}},distance=0..31.999] run scoreboard players add @s respawn_tick 1
scoreboard players operation #temp TEMP = @s[scores={quest_item2=1..}] quest_item2
scoreboard players operation #temp TEMP = @s[scores={quest_item3=1..}] quest_item3