tellraw @s {"translate":"event_type.combat_log_off","color":"yellow"}
tag @s remove SHOW_LOG
scoreboard players reset @s log
scoreboard players enable @s log