scoreboard players set @s[scores={wb_npc_id=1..}] wb_npc_id 0
scoreboard players set @s[scores={wb_gob_id=1..}] wb_gob_id 0

scoreboard players set @s[scores={wb_npc_type=1}] wb_page_last 1
scoreboard players set @s[scores={wb_npc_type=2}] wb_page_last 2
scoreboard players set @s[scores={wb_npc_type=3}] wb_page_last 0
scoreboard players set @s[scores={wb_npc_type=4}] wb_page_last 0

execute if score @s[scores={_h.wb_page_scrl=1}] wb_page_cur < @s wb_page_last run scoreboard players add @s wb_page_cur 1
execute if score @s[scores={_h.wb_page_scrl=-1}] wb_page_cur > #const NULL run scoreboard players remove @s wb_page_cur 1
scoreboard players set @s _h.wb_page_scrl 0
scoreboard players enable @s[scores={wb_class_id=1,wb_class_type=2}] wb_npc_id
scoreboard players enable @s[scores={wb_class_id=2,wb_class_type=2}] wb_gob_id

#EDIT OPTS
execute if score @s[scores={wb_class_id=1,wb_class_type=1}] wb_page_cur matches 0 run function builder:options_list/edit_options/page_0

#HOSTILE
execute if score @s[scores={wb_class_id=1,wb_class_type=2,wb_npc_type=1}] wb_page_cur matches 0 run function builder:options_list/summon_options/creatures/creature_hostile/page_0
execute if score @s[scores={wb_class_id=1,wb_class_type=2,wb_npc_type=1}] wb_page_cur matches 1 run function builder:options_list/summon_options/creatures/creature_hostile/page_1
#NEUTRAL
execute if score @s[scores={wb_class_id=1,wb_class_type=2,wb_npc_type=2}] wb_page_cur matches 0 run function builder:options_list/summon_options/creatures/creature_neutral/page_0
execute if score @s[scores={wb_class_id=1,wb_class_type=2,wb_npc_type=2}] wb_page_cur matches 1 run function builder:options_list/summon_options/creatures/creature_neutral/page_1
execute if score @s[scores={wb_class_id=1,wb_class_type=2,wb_npc_type=2}] wb_page_cur matches 2 run function builder:options_list/summon_options/creatures/creature_neutral/page_2
#FRIENDLY
execute if score @s[scores={wb_class_id=1,wb_class_type=2,wb_npc_type=3}] wb_page_cur matches 0 run function builder:options_list/summon_options/creatures/creature_friendly/page_0
#CUSTOM
execute if score @s[scores={wb_class_id=1,wb_class_type=2,wb_npc_type=4}] wb_page_cur matches 0 run function builder:options_list/summon_options/creatures/creature_custom/page_0

tag @s remove WB_SUBOPT_LISTENER