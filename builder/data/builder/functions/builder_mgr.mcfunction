execute if score @s[nbt={SelectedItem:{tag:{_H.BuilderRMB:1b}}}] _h.wb_rmb = #bool true run function builder:builder_show_menu
scoreboard players set @s[scores={_h.wb_rmb=1..}] _h.wb_rmb 0

execute if score @s _h.wb_menu_ret = #bool true run function builder:builder_show_menu
scoreboard players set @s[scores={_h.wb_menu_ret=1}] _h.wb_menu_ret 0