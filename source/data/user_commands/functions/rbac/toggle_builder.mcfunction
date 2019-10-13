scoreboard players set @s player_builder 1
scoreboard players reset @s builder
scoreboard players enable @s builder

tag @s[tag=!rbac.commands] add _e.rbac.deny_permission
tag @s[tag=rbac.commands,tag=!rbac.builder] add _e.rbac.grant_permission
tag @s[tag=rbac.builder] add _e.rbac.revoke_permission