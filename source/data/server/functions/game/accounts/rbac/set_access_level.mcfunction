scoreboard players set @s[scores={set_gm=1}] rbac_access 1
scoreboard players set @s[scores={set_gm=-1}] rbac_access 0

execute if score @s rbac_access matches 1.. run scoreboard players enable @s admin
execute if score @s rbac_access matches 0 run function server:game/accounts/rbac/disable_commands