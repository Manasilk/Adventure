tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"},{"translate":"builder_menu.npc_summon_option","color":"yellow"}]
tellraw @s [{"text":"[","color":"gold"},{"translate":"npc_villager","clickEvent":{"action":"run_command","value":"/trigger wb_npc_id set 11"},"color":"white"},{"text":"]","color":"gold"}]
tellraw @s [{"text":"[","color":"gold"},{"translate":"npc_wandering_trader","clickEvent":{"action":"run_command","value":"/trigger wb_npc_id set 68"},"color":"white"},{"text":"]","color":"gold"}]
tellraw @s [{"text":"[","color":"gold"},{"translate":"npc_trader_llama","clickEvent":{"action":"run_command","value":"/trigger wb_npc_id set 69"},"color":"white"},{"text":"]","color":"gold"}]
function builder:menu/show_page_scroll_list