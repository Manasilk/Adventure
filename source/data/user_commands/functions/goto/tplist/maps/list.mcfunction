tag @s add _H.TP_WAIT_OPTION

tellraw @s {"translate":"chat.button","with":[{"translate":"zone.spawn_island","clickEvent":{"action":"run_command","value":"/scoreboard players set @s tp_mapid 1"},"color":"white"}],"color":"gold"}
tellraw @s {"translate":"chat.button","with":[{"translate":"zone.northern_kingdom","clickEvent":{"action":"run_command","value":"/scoreboard players set @s tp_mapid 2"},"color":"white"}],"color":"gold"}
tellraw @s {"translate":"chat.button","with":[{"translate":"zone.arctic_split","clickEvent":{"action":"run_command","value":"/scoreboard players set @s tp_mapid 3"},"color":"white"}],"color":"gold"}
tellraw @s {"translate":"chat.button","with":[{"translate":"zone.southern_kingdom","clickEvent":{"action":"run_command","value":"/scoreboard players set @s tp_mapid 4"},"color":"white"}],"color":"gold"}
tellraw @s {"translate":"chat.button","with":[{"translate":"zone.the_deep_ocean","clickEvent":{"action":"run_command","value":"/scoreboard players set @s tp_mapid 5"},"color":"white"}],"color":"gold"}
tellraw @s {"translate":"chat.button","with":[{"translate":"zone.hellfire_peninsula","clickEvent":{"action":"run_command","value":"/scoreboard players set @s tp_mapid 6"},"color":"white"}],"color":"gold"}
tellraw @s {"translate":"chat.button","with":[{"translate":"zone.the_twisting_nether","clickEvent":{"action":"run_command","value":"/scoreboard players set @s tp_mapid 7"},"color":"white"}],"color":"gold"}
tellraw @s {"translate":"chat.button","with":[{"translate":"tp_menu.return","clickEvent":{"action":"run_command","value":"/scoreboard players set @s tplist -1"},"color":"white"}],"color":"gold"}
tellraw @s {"translate":"chat.button","with":[{"translate":"tp_menu.close","clickEvent":{"action":"run_command","value":"/scoreboard players set @s tplist -2"},"color":"white"}],"color":"gold"}