tag @s add WB_MENU_LISTENER

scoreboard players set @s[scores={wb_class_type=1..}] wb_class_type 0
scoreboard players set @s[scores={wb_class_id=1..}] wb_class_id 0

tellraw @s {"translate":"builder_menu.class_option","with":[{"text":"[","color":"gold"},{"translate":"builder_class.creature","clickEvent":{"action":"run_command","value":"/scoreboard players set @s wb_class_id 1"},"color":"white"},{"text":"]","color":"gold"},{"text":"[","color":"gold"},{"translate":"builder_class.object","clickEvent":{"action":"run_command","value":"/scoreboard players set @s wb_class_id 2"},"color":"white"},{"text":"]","color":"gold"},{"text":"[","color":"gold"},{"translate":"builder_class.show_info","clickEvent":{"action":"run_command","value":"/scoreboard players set @s wb_class_id 3"},"hoverEvent":{"action":"show_text","value":[{"translate":"builder_desc.class_type.show_info"}]},"color":"white"},{"text":"]","color":"gold"}],"color":"yellow"}