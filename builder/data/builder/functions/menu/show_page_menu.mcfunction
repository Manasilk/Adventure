tag @s remove WB_SUBOPT_LISTENER

scoreboard players set @s[scores={wb_npc_id=1..}] wb_npc_id 0
scoreboard players set @s[scores={wb_gob_id=1..}] wb_gob_id 0
scoreboard players enable @s[scores={wb_class_id=1,wb_class_type=2}] wb_npc_id
scoreboard players enable @s[scores={wb_class_id=2,wb_class_type=2}] wb_gob_id

function builder:menu/pages/define_pages_range
#
#
#EDIT OPTS
execute if score @s[scores={wb_class_id=1,wb_class_type=1}] wb_page_cur matches 0 run function builder:options_list/edit_options/page_0
#
execute if score @s[scores={wb_class_id=1,wb_class_type=2,wb_npc_type=1}] wb_page_cur matches 0 run function builder:options_list/summon_options/entities/hostile/page_0
execute if score @s[scores={wb_class_id=1,wb_class_type=2,wb_npc_type=1}] wb_page_cur matches 1 run function builder:options_list/summon_options/entities/hostile/page_1

execute if score @s[scores={wb_class_id=1,wb_class_type=2,wb_npc_type=2}] wb_page_cur matches 0 run function builder:options_list/summon_options/entities/neutral/page_0
execute if score @s[scores={wb_class_id=1,wb_class_type=2,wb_npc_type=2}] wb_page_cur matches 1 run function builder:options_list/summon_options/entities/neutral/page_1
execute if score @s[scores={wb_class_id=1,wb_class_type=2,wb_npc_type=2}] wb_page_cur matches 2 run function builder:options_list/summon_options/entities/neutral/page_2

execute if score @s[scores={wb_class_id=1,wb_class_type=2,wb_npc_type=3}] wb_page_cur matches 0 run function builder:options_list/summon_options/entities/friendly/page_0

#execute if score @s[scores={wb_class_id=1,wb_class_type=2,wb_npc_type=4}] wb_page_cur matches 0 run function builder:options_list/summon_options/entities/custom/page_0
#
#
execute if score @s[scores={wb_class_id=2,wb_class_type=2,wb_gob_type=1}] wb_page_cur matches 0 run function builder:options_list/summon_options/objects/lighting/page_0

execute if score @s[scores={wb_class_id=2,wb_class_type=2,wb_gob_type=2}] wb_page_cur matches 0 run function builder:options_list/summon_options/objects/vegetation/page_0

execute if score @s[scores={wb_class_id=2,wb_class_type=2,wb_gob_type=3}] wb_page_cur matches 0 run function builder:options_list/summon_options/objects/structures/page_0

execute if score @s[scores={wb_class_id=2,wb_class_type=2,wb_gob_type=4}] wb_page_cur matches 0 run function builder:options_list/summon_options/objects/debug/page_0