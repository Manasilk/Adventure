tag @s[tag=!rbac.commands,scores={rbac_access=3..}] add _e.rbac.deny_permission
scoreboard players reset @s trim
scoreboard players enable @s trim

execute if entity @s[tag=rbac.commands,scores={rbac_access=3..}] if score #dbc.server cfg.do_trim = #bool true run function server:worldserver/load/trim_shared