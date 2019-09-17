#commands
tag @s[tag=!rbac.commands,scores={player_commands=1}] add rbac.commands
gamemode creative @s[tag=rbac.commands]

#builder
tag @s[tag=rbac.commands,tag=!rbac.builder,scores={player_builder=1}] add rbac.builder
execute if score @s[tag=rbac.builder] player_builder = #bool true run function user_commands:builder/provide_tool

#debugging
tag @s[tag=rbac.commands,tag=!rbac.debugging,scores={player_debugging=1}] add rbac.debugging

tellraw @s[scores={player_commands=1}] {"translate":"event_type.grant_permission","with":[{"translate":"rbac.perm_type.commands"}],"color":"yellow"}
tellraw @s[scores={player_debugging=1}] {"translate":"event_type.grant_permission","with":[{"translate":"rbac.perm_type.debugging"}],"color":"yellow"}
tellraw @s[scores={player_builder=1}] {"translate":"event_type.grant_permission","with":[{"translate":"rbac.perm_type.builder"}],"color":"yellow"}
scoreboard players set @s[scores={player_commands=1}] player_commands 0
scoreboard players set @s[scores={player_debugging=1}] player_debugging 0
scoreboard players set @s[scores={player_builder=1}] player_builder 0

tag @s remove _e.rbac.grant_permission