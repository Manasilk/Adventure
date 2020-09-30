tag @s remove area_trigger.summon_quest_targets

execute if score @s quest_id matches 1000 run function internal:scripts/quests/entity_spawn/quest_1000
execute if score @s quest_id matches 1001 run function internal:scripts/quests/entity_spawn/quest_1001
execute if score @s quest_id matches 1002 run function internal:scripts/quests/entity_spawn/quest_1002
execute if score @s quest_id matches 1003 run function internal:scripts/quests/entity_spawn/quest_1003