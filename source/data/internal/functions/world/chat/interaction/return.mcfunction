scoreboard players remove @s[scores={chat.sub_menu=1..,chat.opts_menu=1..}] chat.opts_menu 1
scoreboard players set @s[scores={chat.sub_menu=1..,chat.opts_menu=0}] chat.sub_menu 0
scoreboard players set @s[scores={chat.sub_menu=0,chat.main_menu=1..}] chat.main_menu 0

#world_builder specific
execute at @s[tag=account.builder,scores={chat.return=1..}] run kill @e[type=minecraft:item,nbt={Item:{tag:{world_builder_tool:1b}}},sort=nearest,limit=1,distance=0..1.999]
replaceitem entity @s[tag=account.builder,scores={chat.return=1..}] hotbar.0 minecraft:carrot_on_a_stick{world_builder_tool:1b,CustomModelData:1,display:{Name:'{"italic":false,"translate":"item.assist_tool"}'}}

scoreboard players reset @s chat.return
function internal:world/chat/interaction/update_chat_menu