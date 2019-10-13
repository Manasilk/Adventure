tag @s[tag=!rbac.commands] add _e.rbac.deny_permission
scoreboard players reset @s mono
scoreboard players enable @s[tag=rbac.commands] mono

execute if entity @s[tag=rbac.commands] run function tools:debugging/handler/reset
execute if entity @s[tag=rbac.commands] run function tools:debugging/handler/initialize
execute if entity @s[tag=rbac.commands] run function tools:debugging/mono