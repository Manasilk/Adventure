execute if entity @s[scores={wb_class_id=1..2,wb_class_type=0}] run function builder:options_list/builder.class_list

execute if entity @s[scores={wb_class_id=1,wb_class_type=1,wb_option_id=0}] run function builder:options_list/builder.type_list
execute if entity @s[scores={wb_class_id=1,wb_class_type=1,wb_option_id=-1..}] run function builder:options_list/builder.edit_option_list

execute if entity @s[scores={wb_class_id=1,wb_class_type=2,wb_npc_type=0}] run function builder:options_list/builder.type_list
execute if entity @s[scores={wb_class_id=1,wb_class_type=2,wb_npc_type=1..,wb_npc_id=0}] run function builder:options_list/builder.npc_type_list
execute if entity @s[scores={wb_class_id=1,wb_class_type=2,wb_npc_type=1..,wb_npc_id=1..}] run function builder:options_list/_h.wb_pages
execute if entity @s[scores={wb_class_id=1,wb_class_type=3}] run function builder:options_list/builder.class_list

execute if entity @s[scores={wb_class_id=2,wb_class_type=2,wb_gob_type=0}] run function builder:options_list/builder.type_list
execute if entity @s[scores={wb_class_id=2,wb_class_type=2,wb_gob_type=1..,wb_gob_id=0}] run function builder:options_list/builder.gob_type_list
execute if entity @s[scores={wb_class_id=2,wb_class_type=2,wb_gob_type=1..,wb_gob_id=1..}] run function builder:options_list/_h.wb_pages

execute if entity @s[scores={wb_class_id=3}] run function builder:options_list/builder.class_list
execute if score @s _h.wb_menu_ret = #bool true run function builder:options_list/_h.wb_menu_ret

execute if entity @s[scores={wb_class_id=0}] run function builder:menu/show_class_list

#class.creature
execute if entity @s[scores={wb_class_id=1,wb_class_type=0}] run function builder:menu/show_type_list
execute if entity @s[scores={wb_class_id=1,wb_class_type=1}] run function builder:menu/show_edit_options
execute if entity @s[scores={wb_class_id=1,wb_class_type=2}] run function builder:menu/show_npc_type_list

#class.object
execute if entity @s[scores={wb_class_id=2,wb_class_type=0}] run function builder:menu/show_type_list
execute if entity @s[scores={wb_class_id=1,wb_class_type=1}] run function builder:menu/show_gob_spawn_list

#class.info