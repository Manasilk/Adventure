execute if entity @s[tag=account.deny_permission] run function internal:world/accounts/rbac/deny_permission
execute if entity @s[tag=account.grant_permission] run function internal:world/accounts/rbac/grant_permission
execute if entity @s[tag=account.revoke_permission] run function internal:world/accounts/rbac/revoke_permission

#command access
execute if score @s set_gm matches -2147483648.. run function internal:world/accounts/rbac/set_access_level

execute if entity @s[tag=account.commands] run function internal:world/accounts/admin_prompts
execute if entity @s[tag=!account.commands] run function internal:world/accounts/generic_prompts

#character data
execute unless score @s expansion = #world expansion run function internal:world/accounts/character/set_expansion