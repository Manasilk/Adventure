execute if entity @s[tag=_e.rbac.deny_permission] run function server:game/accounts/rbac/deny_permission
execute if entity @s[tag=_e.rbac.grant_permission] run function server:game/accounts/rbac/grant_permission
execute if entity @s[tag=_e.rbac.revoke_permission] run function server:game/accounts/rbac/revoke_permission