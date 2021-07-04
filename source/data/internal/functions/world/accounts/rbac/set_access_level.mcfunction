scoreboard players set @s[scores={set_gm=0}] rbac_access 0
scoreboard players set @s[scores={set_gm=1}] rbac_access 1

#Conditions prevent function calls when values of 'set_gm' are out of range [0,1]
execute if entity @s[scores={set_gm=1,rbac_access=1}] run scoreboard players enable @s admin
execute if entity @s[scores={set_gm=1,rbac_access=1}] run scoreboard players enable @s tplist
execute if entity @s[scores={set_gm=0,rbac_access=0}] run function internal:world/accounts/character/clear_rbac_data

scoreboard players reset @s set_gm