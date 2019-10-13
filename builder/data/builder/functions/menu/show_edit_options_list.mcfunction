scoreboard players set @s[scores={wb_option_id=1..}] wb_option_id 0
tellraw @s {"translate":"builder_menu.edit_option","color":"yellow"}
function builder:options_list/edit_options/page_0
tag @s remove WB_OPT_LISTENER