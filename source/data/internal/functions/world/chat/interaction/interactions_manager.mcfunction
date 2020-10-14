execute if score @s chat.right_mouse matches 1.. run function internal:world/chat/interaction/right_mouse
execute if score @s chat.return matches 1.. run function internal:world/chat/interaction/return

execute if score @s chat.page_scrl matches -1 run function internal:world/chat/interaction/goto_previous_page
execute if score @s chat.page_scrl matches 1 run function internal:world/chat/interaction/goto_next_page