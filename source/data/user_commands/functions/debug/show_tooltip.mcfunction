tag @s[tag=!rbac.commands] add _e.rbac.deny_permission

tag @s[tag=rbac.commands,scores={xyz=1..}] add SHOW_COORDINATES
#tag @s[tag=rbac.commands,scores={daytime=1..}] add SHOW_DAYTIME

tag @s[tag=rbac.commands,tag=SHOW_COORDINATES] add SHOW_TOOLTIP
tag @s[tag=rbac.commands,tag=SHOW_DAYTIME] add SHOW_TOOLTIP

scoreboard players reset @s tooltip
scoreboard players enable @s[tag=rbac.commands] daytime
scoreboard players enable @s[tag=rbac.commands] xyz
scoreboard players enable @s[tag=rbac.commands] tooltip