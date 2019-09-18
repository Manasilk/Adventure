#main
execute if entity @s[tag=WB_MENU_LISTENER,scores={wb_class_id=1..2,wb_class_type=0}] run function builder:menu/show_type_list
#class.creature, class.object
execute if entity @s[tag=WB_OPT_LISTENER,scores={wb_class_id=1,wb_class_type=1}] run function builder:menu/show_edit_options_list
execute if entity @s[tag=WB_OPT_LISTENER,scores={wb_class_id=1,wb_class_type=2,wb_npc_type=0}] run function builder:menu/show_npc_type_list
execute if entity @s[tag=WB_OPT_LISTENER,scores={wb_class_id=2,wb_class_type=2,wb_gob_type=0}] run function builder:menu/show_gob_type_list
#class_type(3) = despawn
#type.pages
execute if entity @s[tag=WB_SUBOPT_LISTENER,scores={wb_npc_type=1..}] run function builder:menu/show_page_menu
execute if entity @s[tag=WB_SUBOPT_LISTENER,scores={wb_gob_type=1..}] run function builder:menu/show_page_menu