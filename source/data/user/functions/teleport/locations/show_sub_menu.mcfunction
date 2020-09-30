execute if entity @s[scores={tp_mapid=1..,tp_zoneid=0}] run function user:teleport/locations/menu/zones
execute if entity @s[scores={tp_mapid=1..,tp_zoneid=1..,tp_areaid=0}] run function user:teleport/locations/menu/areas

execute if entity @s[scores={chat.opts_menu=1..}] run function user:teleport/locations/show_pages

tag @s remove chat.update_chat_menu