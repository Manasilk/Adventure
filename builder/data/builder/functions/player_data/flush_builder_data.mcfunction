scoreboard players set @s[scores={wb_class_id=1..}] wb_class_id 0
scoreboard players set @s[scores={wb_class_type=1..}] wb_class_type 0
scoreboard players set @s[scores={wb_option_id=-1..}] wb_option_id 0
scoreboard players set @s[scores={wb_page_cur=1..}] wb_page_cur 0
scoreboard players set @s[scores={wb_page_last=1..}] wb_page_last 0
scoreboard players set @s[scores={wb_npc_type=1..}] wb_npc_type 0
scoreboard players set @s[scores={wb_gob_type=1..}] wb_gob_type 0
scoreboard players set @s[scores={wb_npc_id=1..}] wb_npc_id 0
scoreboard players set @s[scores={wb_gob_id=1..}] wb_gob_id 0
scoreboard players set @s wb_pos.x 0
scoreboard players set @s wb_pos.y 0
scoreboard players set @s wb_pos.z 0
scoreboard players set @s wb_rot.x 0
scoreboard players set @s wb_rot.y 0

tag @s[tag=WB_MENU_LISTENER] remove WB_MENU_LISTENER
tag @s[tag=WB_OPT_LISTENER] remove WB_OPT_LISTENER
tag @s[tag=WB_SUBOPT_LISTENER] remove WB_SUBOPT_LISTENER

function builder:player_data/flush_biome_data