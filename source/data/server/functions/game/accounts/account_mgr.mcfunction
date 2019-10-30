execute if entity @s[tag=_e.rbac.deny_permission] run function server:game/accounts/rbac/deny_permission
execute if entity @s[tag=_e.rbac.grant_permission] run function server:game/accounts/rbac/grant_permission
execute if entity @s[tag=_e.rbac.revoke_permission] run function server:game/accounts/rbac/revoke_permission

execute if score @s set_gm matches -1 run function server:game/accounts/rbac/set_access_level
execute if score @s set_gm matches 1 run function server:game/accounts/rbac/set_access_level

execute if score @s admin = #bool true run function user_commands:rbac/toggle_admin
execute if score @s builder = #bool true run function user_commands:rbac/toggle_builder
execute if score @s debug = #bool true run function user_commands:rbac/toggle_debug
execute if score @s mono = #bool true run function user_commands:debug/print_mono
execute if score @s average = #bool true run function user_commands:debug/print_average
execute if score @s played = #bool true run function user_commands:account/show_played
execute if score @s reset_quests = #bool true run function user_commands:account/reset_quests
execute if score @s reset_stats = #bool true run function user_commands:account/reset_stats
execute if score @s reset_xp = #bool true run function user_commands:account/reset_xp
execute if score @s quest_triggers = #bool true run function user_commands:debug/print_quest_triggers
execute if score @s spawn_triggers = #bool true run function user_commands:debug/print_spawn_triggers
execute if score @s tooltip = #bool true run function user_commands:debug/toggle_tooltip
execute if score @s gmisland = #bool true run function user_commands:goto/gmisland
execute if score @s unstuck = #bool true run function user_commands:goto/spawn
execute if score @s log = #bool true run function user_commands:combat/toggle_log

execute unless score @s expansion = #dbc.server expansion run function server:game/accounts/character/set_expansion