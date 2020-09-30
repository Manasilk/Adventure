#commands
tag @s remove account.commands
function internal:world/anticheat/metrics/get_updated_position
scoreboard players set @s _ac.remflag_tick 200
function internal:world/accounts/rbac/disable_commands
tag @s remove chat.debug_tooltip

#debugging
tag @s remove account.debugging

#builder
tag @s remove account.builder
function developer:world_builder/clear_tool
function developer:world_builder/info/player/flush_builder_data

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
scoreboard players reset @s reset_quests
scoreboard players reset @s reset_stats
scoreboard players reset @s reset_xp