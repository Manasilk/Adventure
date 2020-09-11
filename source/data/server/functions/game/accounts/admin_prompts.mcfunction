#generic
function server:game/accounts/generic_prompts

#triggers
execute if score @s builder = #bool true run function user_commands:rbac/toggle_builder
execute if score @s debug = #bool true run function user_commands:rbac/toggle_debug
execute if score @s reset_quests = #bool true run function user_commands:account/reset_quests
execute if score @s reset_stats = #bool true run function user_commands:account/reset_stats
execute if score @s reset_xp = #bool true run function user_commands:account/reset_xp
execute if score @s quest_triggers = #bool true run function user_commands:debug/print_quest_triggers
execute if score @s spawn_triggers = #bool true run function user_commands:debug/print_spawn_triggers
execute if score @s tooltip = #bool true run function user_commands:debug/toggle_tooltip
execute if score @s gmisland = #bool true run function user_commands:goto/gmisland
execute if score @s tplist = #bool true run function user_commands:debug/show_tplist
execute if entity @s[tag=TP_MENU_LISTENER] run function user_commands:goto/tplist/tp_menu