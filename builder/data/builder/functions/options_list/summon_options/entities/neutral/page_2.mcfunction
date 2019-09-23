tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n"},{"translate":"builder_menu.npc_summon_option","color":"yellow"}]
tellraw @s [{"text":"[","color":"gold"},{"translate":"npc_cat","clickEvent":{"action":"run_command","value":"/trigger wb_npc_id set 55"},"color":"white"},{"text":"]","color":"gold"}]
tellraw @s [{"text":"[","color":"gold"},{"translate":"npc_iron_golem","clickEvent":{"action":"run_command","value":"/trigger wb_npc_id set 52"},"color":"white"},{"text":"]","color":"gold"}]
tellraw @s [{"text":"[","color":"gold"},{"translate":"npc_snow_golem","clickEvent":{"action":"run_command","value":"/trigger wb_npc_id set 53"},"color":"white"},{"text":"]","color":"gold"}]
function builder:menu/show_page_scroll_list