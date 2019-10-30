tag @s[scores={rbac_access=0}] add _e.rbac.revoke_permission
scoreboard players set @s[tag=rbac.commands,tag=_e.rbac.revoke_permission] player_commands 1
scoreboard players set @s[tag=rbac.debugging,tag=_e.rbac.revoke_permission] player_debugging 1
scoreboard players set @s[tag=rbac.builder,tag=_e.rbac.revoke_permission] player_builder 1

scoreboard players reset @s[scores={rbac_access=0}] admin
scoreboard players reset @s builder
scoreboard players reset @s debug
scoreboard players reset @s gmisland
scoreboard players reset @s xyz
scoreboard players reset @s daytime
scoreboard players reset @s tooltip

scoreboard players reset @s mono
scoreboard players reset @s average

scoreboard players reset @s reset_quests
scoreboard players reset @s reset_stats
scoreboard players reset @s reset_xp
scoreboard players reset @s quest_triggers
scoreboard players reset @s spawn_triggers
scoreboard players reset @s set_gm