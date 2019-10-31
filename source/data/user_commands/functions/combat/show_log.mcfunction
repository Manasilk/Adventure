tellraw @s {"translate":"event_type.combat_log_on","color":"yellow"}
tag @s add SHOW_LOG
function server:game/combat/combat_log/flush_data

scoreboard players reset @s log
scoreboard players enable @s log