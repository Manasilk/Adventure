tellraw @s[tag=player.combat_log_toggled] {"translate":"event_type.combat_log_on","color":"yellow"}
tellraw @s[tag=!player.combat_log_toggled] {"translate":"event_type.combat_log_off","color":"yellow"}
tag @s remove messages.info.combat_log