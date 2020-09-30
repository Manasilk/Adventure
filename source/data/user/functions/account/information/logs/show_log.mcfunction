scoreboard players reset @s log
scoreboard players enable @s log

tag @s add player.combat_log_toggled
tag @s add messages.info.combat_log

function internal:world/combat/combat_log/flush_data