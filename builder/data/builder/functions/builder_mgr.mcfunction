execute if score @s[scores={wb_class_id=0},nbt={SelectedItem:{tag:{builder_tool:1b}}}] _h.wb_rmb = #bool true run function builder:menu/show_class_list
execute if score @s[scores={wb_class_id=1..},nbt={SelectedItem:{tag:{builder_tool:1b}}}] _h.wb_rmb = #bool true run function builder:triggers_listener
scoreboard players set @s[scores={_h.wb_rmb=1..}] _h.wb_rmb 0

execute if score @s _h.wb_menu_ret = #bool true run function builder:_h.thrown

execute unless score @s[scores={_h.wb_page_scrl=-1..1}] _h.wb_page_scrl = #const NULL run function builder:_h.wb_page_scrl

function builder:builder_show_menu