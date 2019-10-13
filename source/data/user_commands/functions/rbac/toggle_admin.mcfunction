scoreboard players set @s player_commands 1
scoreboard players reset @s admin
scoreboard players enable @s admin

tag @s[scores={rbac_access=0}] add _e.rbac.deny_permission
tag @s[tag=!rbac.commands,scores={rbac_access=1..}] add _e.rbac.grant_permission
tag @s[tag=rbac.commands] add _e.rbac.revoke_permission

scoreboard players set @s[tag=rbac.debugging,tag= _e.rbac.revoke_permission] player_debugging 1
scoreboard players set @s[tag=rbac.builder,tag= _e.rbac.revoke_permission] player_builder 1