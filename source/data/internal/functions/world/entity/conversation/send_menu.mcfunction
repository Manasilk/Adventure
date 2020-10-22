execute if entity @s[tag=!ENTITY_FLAG_QUESTGIVER] run function internal:world/entity/conversation/get_chat_menu
execute if entity @s[tag=ENTITY_FLAG_QUESTGIVER] run function internal:world/entity/conversation/get_quest_menu

scoreboard players reset @a[scores={chat.triggered=1..},distance=0..5.299] chat.triggered
tag @a[tag=conversation.stop,distance=0..5.299] remove conversation.stop