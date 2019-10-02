tag @s[tag=!rbac.commands] add _e.rbac.deny_permission
execute if entity @s[tag=rbac.commands] if score #dbc.server cfg.do_trim = #bool true run function server:worldserver/load/trim_shared