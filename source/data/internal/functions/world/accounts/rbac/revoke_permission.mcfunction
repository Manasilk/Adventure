#commands
tag @s[tag=account.commands,scores={player_commands=1}] remove account.commands
execute if entity @s[tag=!account.commands] run function internal:world/anticheat/metrics/get_updated_position
scoreboard players set @s[tag=!account.commands,scores={_ac.remflag_tick=-1..199}] _ac.remflag_tick 200
execute if entity @s[tag=!account.commands] run function internal:world/accounts/rbac/disable_commands
tag @s[tag=!account.commands,tag=chat.debug_tooltip] remove chat.debug_tooltip

#debugging
tag @s[tag=account.debugging,scores={player_debugging=1}] remove account.debugging

#builder
tag @s[tag=account.builder,scores={player_builder=1}] remove account.builder
execute if score @s[tag=!account.builder] player_builder matches 1 run function developer:world_builder/clear_tool
execute if score @s[tag=!account.builder] player_builder matches 1 run function developer:world_builder/info/player/flush_builder_data

tellraw @s[scores={player_commands=1}] {"translate":"event_type.revoke_permission","with":[{"translate":"rbac.perm_type.commands"}],"color":"yellow"}
tellraw @s[scores={player_debugging=1}] {"translate":"event_type.revoke_permission","with":[{"translate":"rbac.perm_type.debugging"}],"color":"yellow"}
tellraw @s[scores={player_builder=1}] {"translate":"event_type.revoke_permission","with":[{"translate":"rbac.perm_type.builder"}],"color":"yellow"}
scoreboard players set @s[scores={player_commands=1}] player_commands 0
scoreboard players set @s[scores={player_debugging=1}] player_debugging 0
scoreboard players set @s[scores={player_builder=1}] player_builder 0

tag @s remove account.revoke_permission