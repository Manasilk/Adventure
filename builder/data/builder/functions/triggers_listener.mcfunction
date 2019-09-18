#events
execute if score @s wb_class_id = #dbc.enum SHOW_INFO run function builder:_h.wb_update

execute if score @s[scores={wb_class_id=1,wb_class_type=2}] wb_npc_id matches 1.. run function builder:_h.wb_update
execute if score @s[scores={wb_class_id=2,wb_class_type=2}] wb_gob_id matches 1.. run function builder:_h.wb_update

execute if score @s[scores={wb_class_id=1}] wb_class_type matches 1 run function builder:_h.wb_update
execute if score @s[scores={wb_class_id=1..2}] wb_class_type matches 3 run function builder:_h.wb_update