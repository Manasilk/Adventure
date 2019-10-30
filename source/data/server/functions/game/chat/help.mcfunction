tellraw @s {"translate":"help_info.commands.available","color":"yellow"}
tellraw @s {"translate":"help_info.command.played","color":"yellow"}
tellraw @s {"translate":"help_info.command.log","color":"yellow"}
tellraw @s {"translate":"help_info.command.unstuck","color":"yellow"}
tellraw @s[scores={rbac_access=1..}] {"translate":"help_info.command.admin","color":"yellow"}
tag @s remove _e.help_msg