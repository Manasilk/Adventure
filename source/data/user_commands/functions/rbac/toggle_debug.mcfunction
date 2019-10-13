scoreboard players set @s player_debugging 1
scoreboard players reset @s debug
scoreboard players enable @s debug

tag @s[tag=!rbac.commands] add _e.rbac.deny_permission
tag @s[tag=rbac.commands,tag=!rbac.debugging] add _e.rbac.grant_permission
tag @s[tag=rbac.debugging] add _e.rbac.revoke_permission