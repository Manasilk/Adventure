execute if score @s[scores={_h.wb_page_scrl=1}] wb_page_cur < @s wb_page_last run scoreboard players add @s wb_page_cur 1
execute if score @s[scores={_h.wb_page_scrl=-1}] wb_page_cur > #const NULL run scoreboard players remove @s wb_page_cur 1
scoreboard players set @s _h.wb_page_scrl 0
scoreboard players enable @s _h.wb_page_scrl

function builder:menu/show_page_menu