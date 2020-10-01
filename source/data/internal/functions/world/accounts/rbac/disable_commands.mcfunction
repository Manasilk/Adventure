#Re-enable for legitimate accounts
scoreboard players enable @s[scores={rbac_access=1}] admin

scoreboard players set @s player_commands 1
scoreboard players set @s[tag=account.debugging] player_debugging 1
scoreboard players set @s[tag=account.builder] player_builder 1

scoreboard players reset @s admin
scoreboard players reset @s builder
scoreboard players reset @s debug
scoreboard players reset @s gmisland

scoreboard players reset @s reset_quests
scoreboard players reset @s reset_stats
scoreboard players reset @s reset_xp