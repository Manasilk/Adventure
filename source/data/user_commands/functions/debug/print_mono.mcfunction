tag @s[tag=!rbac.commands] add _e.rbac.deny_permission

execute if entity @s[tag=rbac.commands] run function tools:debugging/handler/reset
execute if entity @s[tag=rbac.commands] run function tools:debugging/handler/initialize
execute if entity @s[tag=rbac.commands] run function tools:debugging/mono