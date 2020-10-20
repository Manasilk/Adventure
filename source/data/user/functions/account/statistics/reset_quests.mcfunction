scoreboard players reset @s reset_quests
scoreboard players enable @s reset_quests
tellraw @s {"translate":"event_type.reset_account_quests","color":"yellow"}

scoreboard players reset @s quest_id
scoreboard players set @s quest_log 0
scoreboard players set @s stat_quests_cmpl 0
advancement revoke @s from internal:world/account/character/complete_quests_25

tag @s remove QUEST_ACCEPT_1000
tag @s remove QUEST_ACCEPT_1001
tag @s remove QUEST_ACCEPT_1002
tag @s remove QUEST_ACCEPT_1003

tag @s remove QUEST_REWARD_1000
tag @s remove QUEST_REWARD_1001
tag @s remove QUEST_REWARD_1002
tag @s remove QUEST_REWARD_1003

tag @s remove QUEST_COMPLETE_1000
tag @s remove QUEST_COMPLETE_1001
tag @s remove QUEST_COMPLETE_1002
tag @s remove QUEST_COMPLETE_1003