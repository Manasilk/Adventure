execute if score @s tplist matches -1 run function user_commands:goto/tplist/_h.menu_return
execute if score @s tplist matches -2 run function user_commands:goto/tplist/_h.close_menu

execute if entity @s[scores={tp_mapid=0}] run function user_commands:goto/tplist/maps/map_options
execute if entity @s[scores={tp_mapid=1..,tp_zoneid=0}] run function user_commands:goto/tplist/zones/zone_options
execute if entity @s[scores={tp_zoneid=1..,tp_areaid=0}] run function user_commands:goto/tplist/areas/area_options