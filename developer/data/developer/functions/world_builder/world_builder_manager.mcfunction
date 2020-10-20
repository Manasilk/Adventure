execute if score @s[tag=chat.update_chat_menu,predicate=developer:world_builder/world_builder_tool] chat.main_menu matches 0 run function developer:world_builder/show_main_menu
execute if score @s[tag=chat.update_chat_menu] chat.main_menu matches 1.. run function developer:world_builder/show_sub_menu

execute if score @s[predicate=developer:world_builder/world_builder_tool,scores={chat.opts_menu=1..}] chat.right_mouse matches 1.. run function developer:world_builder/on_right_mouse