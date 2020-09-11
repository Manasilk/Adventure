#triggers
execute if score @s admin = #bool true run function user_commands:rbac/toggle_admin
execute if score @s help = #bool true run function user_commands:account/show_help
execute if score @s played = #bool true run function user_commands:account/show_played
execute if score @s unstuck = #bool true run function user_commands:goto/unstuck
execute if score @s log = #bool true run function user_commands:combat/toggle_log
execute if score @s clear = #bool true run function user_commands:chat/clear_chat