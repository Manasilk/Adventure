tellraw @s {"translate":"builder_menu.gob_summon_option","color":"yellow"}
tellraw @s [{"text":"[","color":"gold"},{"translate":"street_lamp_small","clickEvent":{"action":"run_command","value":"/trigger wb_gob_id set 1"},"color":"white"},{"text":"]","color":"gold"}]
tellraw @s [{"text":"[","color":"gold"},{"translate":"street_lamp_large","clickEvent":{"action":"run_command","value":"/trigger wb_gob_id set 2"},"color":"white"},{"text":"]","color":"gold"}]
function builder:menu/show_page_scroll_list