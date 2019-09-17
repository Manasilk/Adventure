execute unless entity @s[tag=rbac.commands] run function fairbox:fairbox/check_gamemode
function fairbox:fairbox/check_activity
function fairbox:fairbox/check_position

#The function below determines which action should the anticheat take towards the player
# whom was tagged by the anticheat. The function can be disabled by toggle.
execute if score #dbc.fairbox _FB.Actions = #bool true if entity @s[tag=FairBox.Broadcast] run function fairbox:fairbox/events/do_action
execute if entity @s[tag=FairBox.Broadcast] run function fairbox:fairbox/events/send_info_message