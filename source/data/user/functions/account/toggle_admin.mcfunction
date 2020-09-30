scoreboard players set @s player_commands 1
scoreboard players reset @s admin
scoreboard players enable @s admin

tag @s[scores={rbac_access=0}] add account.deny_permission
tag @s[tag=!account.commands,scores={rbac_access=1}] add account.grant_permission
tag @s[tag=account.commands] add account.revoke_permission

scoreboard players set @s[tag=account.debugging,tag=account.revoke_permission] player_debugging 1
scoreboard players set @s[tag=account.builder,tag=account.revoke_permission] player_builder 1