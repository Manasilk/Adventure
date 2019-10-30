execute unless entity @s[tag=SHOW_LOG,scores={log=1..}] run function user_commands:combat/show_log
execute if entity @s[tag=SHOW_LOG,scores={log=1..}] run function user_commands:combat/hide_log

scoreboard players enable @s log