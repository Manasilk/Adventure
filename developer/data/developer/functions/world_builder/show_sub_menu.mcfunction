execute if entity @s[scores={wb.class_id=1..2,wb.type_id=0}] run function developer:world_builder/menu/types

execute if entity @s[scores={wb.class_id=1,wb.type_id=1}] run function developer:world_builder/menu/edits
execute if entity @s[scores={wb.class_id=1,wb.type_id=2,wb.npc_type=0}] run function developer:world_builder/menu/creatures
execute if entity @s[scores={wb.class_id=2,wb.type_id=2,wb.gob_type=0}] run function developer:world_builder/menu/objects

execute if entity @s[scores={chat.opts_menu=1..}] run function developer:world_builder/show_pages

tag @s remove chat.update_chat_menu