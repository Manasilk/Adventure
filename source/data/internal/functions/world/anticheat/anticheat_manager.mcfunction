execute unless entity @s[tag=account.commands] run function internal:world/anticheat/check_gamemode
function internal:world/anticheat/check_activity
function internal:world/anticheat/check_position

#The function below determines which action should the anticheat take towards the player
# whom was tagged by the anticheat. The function can be disabled by toggle.
execute if score #anticheat _ac.actions matches 1 if entity @s[tag=anticheat.broadcast_info] run function internal:world/anticheat/events/do_action
execute if entity @s[tag=anticheat.broadcast_info] run function internal:world/anticheat/events/send_info_message