execute unless entity @s[tag=_H.TP_WAIT_OPTION] run function user_commands:goto/tplist/zones/list
tag @s[tag=_H.TP_WAIT_OPTION,scores={tp_zoneid=1..}] remove _H.TP_WAIT_OPTION