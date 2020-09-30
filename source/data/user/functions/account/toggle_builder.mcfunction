scoreboard players set @s player_builder 1
scoreboard players reset @s builder
scoreboard players enable @s builder

tag @s[tag=!account.commands] add account.deny_permission
tag @s[tag=account.commands,tag=!account.builder] add account.grant_permission
tag @s[tag=account.builder] add account.revoke_permission