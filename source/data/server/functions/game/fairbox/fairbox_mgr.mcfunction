execute unless entity @s[tag=rbac.commands] run function server:game/fairbox/check_gamemode
function server:game/fairbox/check_activity
function server:game/fairbox/check_position

#The function below determines which action should the anticheat take towards the player
# whom was tagged by the anticheat. The function can be disabled by toggle.
execute if score #dbc.fairbox _FB.Actions = #bool true if entity @s[tag=FairBox.Broadcast] run function server:game/fairbox/events/do_action
execute if entity @s[tag=FairBox.Broadcast] run function server:game/fairbox/events/send_info_message