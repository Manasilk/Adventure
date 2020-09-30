#commands
tag @s[tag=!account.commands,scores={player_commands=1}] add account.commands
execute if entity @s[tag=account.commands] run function internal:world/accounts/rbac/enable_commands

#builder
tag @s[tag=account.commands,tag=!account.builder,scores={player_builder=1}] add account.builder
execute if entity @s[tag=account.builder] run function developer:world_builder/provide_tool

#debugging
tag @s[tag=account.commands,tag=!account.debugging,scores={player_debugging=1}] add account.debugging

tellraw @s[scores={player_commands=1}] {"translate":"event_type.grant_permission","with":[{"translate":"rbac.perm_type.commands"}],"color":"yellow"}
tellraw @s[scores={player_debugging=1}] {"translate":"event_type.grant_permission","with":[{"translate":"rbac.perm_type.debugging"}],"color":"yellow"}
tellraw @s[scores={player_builder=1}] {"translate":"event_type.grant_permission","with":[{"translate":"rbac.perm_type.builder"}],"color":"yellow"}
scoreboard players set @s[scores={player_commands=1}] player_commands 0
scoreboard players set @s[scores={player_debugging=1}] player_debugging 0
scoreboard players set @s[scores={player_builder=1}] player_builder 0

tag @s remove account.grant_permission