tellraw @s {"translate":"event_type.deny_permission","color":"red"}
scoreboard players set @s[scores={player_commands=1}] player_commands 0
scoreboard players set @s[scores={player_debugging=1}] player_debugging 0
scoreboard players set @s[scores={player_builder=1}] player_builder 0

tag @s remove account.deny_permission