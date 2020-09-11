#commands
tag @s remove rbac.commands
function server:game/fairbox/metrics/get_updated_position
scoreboard players set @s _FB._T.PurgeFlag 200
function server:game/accounts/rbac/disable_commands
tag @s remove SHOW_TOOLTIP

#debugging
tag @s remove rbac.debugging

#builder
tag @s remove rbac.builder
function user_commands:builder/clear_tool
function builder:player_data/flush_builder_data

#info
tellraw @s {"translate":"event_type.revoke_permission","with":[{"translate":"rbac.perm_type.commands"}],"color":"yellow"}
tellraw @s {"translate":"event_type.revoke_permission","with":[{"translate":"rbac.perm_type.debugging"}],"color":"yellow"}
tellraw @s {"translate":"event_type.revoke_permission","with":[{"translate":"rbac.perm_type.builder"}],"color":"yellow"}

#data
scoreboard players set @s player_commands 0
scoreboard players set @s player_debugging 0
scoreboard players set @s player_builder 0
scoreboard players reset @s admin
scoreboard players reset @s builder
scoreboard players reset @s debug
scoreboard players reset @s gmisland
scoreboard players reset @s xyz
scoreboard players reset @s daytime
scoreboard players reset @s tooltip
scoreboard players reset @s mono
scoreboard players reset @s average
scoreboard players reset @s reset_quests
scoreboard players reset @s reset_stats
scoreboard players reset @s reset_xp
scoreboard players reset @s quest_triggers
scoreboard players reset @s spawn_triggers