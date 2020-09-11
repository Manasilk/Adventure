tag @s add _H.TP_WAIT_OPTION

#tellraw @s {"translate":"chat.button","with":[{"translate":"zone.ZONENAME","clickEvent":{"action":"run_command","value":"/scoreboard players set @s tp_areaid AREAID"},"color":"white"}],"color":"gold"}
tellraw @s {"translate":"chat.button","with":[{"translate":"tp_menu.return","clickEvent":{"action":"run_command","value":"/scoreboard players set @s tplist -1"},"color":"white"}],"color":"gold"}
tellraw @s {"translate":"chat.button","with":[{"translate":"tp_menu.close","clickEvent":{"action":"run_command","value":"/scoreboard players set @s tplist -2"},"color":"white"}],"color":"gold"}