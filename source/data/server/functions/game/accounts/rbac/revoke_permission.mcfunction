#commands
tag @s[tag=rbac.commands,scores={player_commands=1}] remove rbac.commands
execute if entity @s[tag=!rbac.commands] run function server:game/fairbox/metrics/get_updated_position
scoreboard players set @s[tag=!rbac.commands,scores={_FB._T.PurgeFlag=-1..199}] _FB._T.PurgeFlag 200

#debugging
tag @s[tag=rbac.debugging,scores={player_debugging=1}] remove rbac.debugging

#builder
tag @s[tag=rbac.builder,scores={player_builder=1}] remove rbac.builder
execute if score @s[tag=!rbac.builder] player_builder = #bool true run function user_commands:builder/clear_tool
execute if score @s[tag=!rbac.builder] player_builder = #bool true run function builder:player_data/flush_builder_data

tellraw @s[scores={player_commands=1}] {"translate":"event_type.revoke_permission","with":[{"translate":"rbac.perm_type.commands"}],"color":"yellow"}
tellraw @s[scores={player_debugging=1}] {"translate":"event_type.revoke_permission","with":[{"translate":"rbac.perm_type.debugging"}],"color":"yellow"}
tellraw @s[scores={player_builder=1}] {"translate":"event_type.revoke_permission","with":[{"translate":"rbac.perm_type.builder"}],"color":"yellow"}
scoreboard players set @s[scores={player_commands=1}] player_commands 0
scoreboard players set @s[scores={player_debugging=1}] player_debugging 0
scoreboard players set @s[scores={player_builder=1}] player_builder 0

tag @s remove _e.rbac.revoke_permission