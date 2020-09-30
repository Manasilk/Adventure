scoreboard players reset @s log
scoreboard players enable @s log

tag @s remove player.combat_log_toggled
tag @s add messages.info.combat_log

function internal:world/combat/combat_log/flush_data