scoreboard players reset @s reset_stats
scoreboard players enable @s reset_stats
tellraw @s {"translate":"event_type.reset_account_stats","color":"yellow"}

scoreboard players set @s stat_dmg_dealt
scoreboard players set @s stat_dmg_taken
scoreboard players set @s stat_mob_kills
scoreboard players set @s stat_quests_cmpl
