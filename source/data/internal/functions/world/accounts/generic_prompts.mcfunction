#triggers
execute if score @s admin matches 1 run function user:account/toggle_admin
execute if score @s help matches 1 run function user:account/information/chat/show_help
execute if score @s clear matches 1 run function user:account/information/chat/empty_chat
execute if score @s log matches 1 run function user:account/information/logs/toggle_log
execute if score @s played matches 1 run function user:account/statistics/show_played
execute if score @s unstuck matches 1 run function user:teleport/unstuck