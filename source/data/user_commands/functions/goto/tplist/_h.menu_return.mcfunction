scoreboard players set @s[scores={tp_areaid=1..}] tp_areaid 0
scoreboard players set @s[scores={tp_zoneid=1..,tp_areaid=0}] tp_zoneid 0
scoreboard players set @s[scores={tp_mapid=1..,tp_zoneid=0}] tp_mapid 0
tag @s remove _H.TP_WAIT_OPTION

scoreboard players reset @s tplist
scoreboard players enable @s tplist