execute if entity @s[tag=_e.rbac.deny_permission] run function server:game/accounts/rbac/deny_permission
execute if entity @s[tag=_e.rbac.grant_permission] run function server:game/accounts/rbac/grant_permission
execute if entity @s[tag=_e.rbac.revoke_permission] run function server:game/accounts/rbac/revoke_permission

#command access
execute if score @s set_gm matches -1.. run function server:game/accounts/rbac/set_access_level

execute if entity @s[tag=rbac.commands] run function server:game/accounts/admin_prompts
execute if entity @s[tag=!rbac.commands] run function server:game/accounts/generic_prompts

#character data
execute unless score @s expansion = #dbc.server expansion run function server:game/accounts/character/set_expansion