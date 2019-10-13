execute if entity @s[tag=_e.rbac.deny_permission] run function server:game/accounts/rbac/deny_permission
execute if entity @s[tag=_e.rbac.grant_permission] run function server:game/accounts/rbac/grant_permission
execute if entity @s[tag=_e.rbac.revoke_permission] run function server:game/accounts/rbac/revoke_permission

execute if score @s set_gm = #bool true run function server:game/accounts/rbac/set_access_level
execute if score @s admin = #bool true run function user_commands:rbac/toggle_admin
execute if score @s builder = #bool true run function user_commands:rbac/toggle_builder
execute if score @s debug = #bool true run function user_commands:rbac/toggle_debug

scoreboard players operation @s expansion = #dbc.server expansion