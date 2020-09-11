scoreboard players reset @s tplist
scoreboard players enable @s tplist
scoreboard players set @s tp_mapid 0
scoreboard players set @s tp_zoneid 0
scoreboard players set @s tp_areaid 0

tag @s add TP_MENU_LISTENER
function user_commands:goto/tplist/tp_menu