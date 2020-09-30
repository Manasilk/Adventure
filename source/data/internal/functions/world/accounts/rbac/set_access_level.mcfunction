scoreboard players set @s[scores={set_gm=0}] rbac_access 0
scoreboard players set @s[scores={set_gm=1}] rbac_access 1
scoreboard players reset @s set_gm

execute if score @s rbac_access matches 1 run scoreboard players enable @s admin
execute if score @s rbac_access matches 0 run function internal:world/accounts/character/clear_rbac_data