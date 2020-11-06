scoreboard players set @s[scores={chat.sub_menu=0,chat.main_menu=1..}] chat.main_menu 0
scoreboard players set @s[scores={chat.sub_menu=1..,chat.opts_menu=0}] chat.sub_menu 0
scoreboard players remove @s[scores={chat.sub_menu=1..,chat.opts_menu=1..}] chat.opts_menu 1
scoreboard players reset @s chat.page_scrl

#world_builder specific
execute if entity @s[tag=account.builder] run function developer:world_builder/on_return

scoreboard players reset @s chat.return
tag @s add messages.special.empty_chat
function internal:world/chat/interaction/update_chat_menu