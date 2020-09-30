execute if score @s chat.page_crnt < @s chat.page_last run tag @s add chat.goto_next_page
scoreboard players add @s[tag=chat.goto_next_page] chat.page_crnt 1
execute if entity @s[tag=chat.goto_next_page] run function internal:world/chat/interaction/update_chat_menu
tag @s remove chat.goto_next_page