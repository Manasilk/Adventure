execute if score @s chat.page_crnt matches 1.. run tag @s add chat.goto_previous_page
scoreboard players remove @s[tag=chat.goto_previous_page] chat.page_crnt 1
execute if entity @s[tag=chat.goto_previous_page] run function internal:world/chat/interaction/update_chat_menu
tag @s remove chat.goto_previous_page

scoreboard players reset @s chat.page_scrl
scoreboard players enable @s chat.page_scrl