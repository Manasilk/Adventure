scoreboard players set @s player_debugging 1
scoreboard players reset @s debug
scoreboard players enable @s debug

tag @s[tag=!account.commands] add account.deny_permission
tag @s[tag=account.commands,tag=!account.debugging] add account.grant_permission
tag @s[tag=account.debugging] add account.revoke_permission