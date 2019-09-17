tag @s[tag=WB_OPT_LISTENER] remove WB_OPT_LISTENER
scoreboard players set @s[scores={wb_class_type=1..}] wb_class_type 0
scoreboard players set @s[scores={wb_class_id=1..}] wb_class_id 0
scoreboard players enable @s wb_class_id
tellraw @s {"translate":"builder_menu.class_option","with":[{"text":"[","color":"gold"},{"translate":"builder_class.creature","clickEvent":{"action":"run_command","value":"/trigger wb_class_id set 1"},"color":"white"},{"text":"]","color":"gold"},{"text":"[","color":"gold"},{"translate":"builder_class.object","clickEvent":{"action":"run_command","value":"/trigger wb_class_id set 2"},"color":"white"},{"text":"]","color":"gold"},{"text":"[","color":"gold"},{"translate":"builder_class.show_info","clickEvent":{"action":"run_command","value":"/trigger wb_class_id set 3"},"color":"white"},{"text":"]","color":"gold"}],"color":"yellow"}
tag @s add WB_MENU_LISTENER