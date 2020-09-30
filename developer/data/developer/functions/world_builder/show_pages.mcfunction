scoreboard players enable @s[scores={wb.npc_type=1..}] wb.npc_id
scoreboard players enable @s[scores={wb.gob_type=1..}] wb.gob_id
scoreboard players set @s[scores={wb.npc_type=1..}] wb.npc_id 0
scoreboard players set @s[scores={wb.gob_type=1..}] wb.gob_id 0

#Creatures
execute if score @s wb.npc_type matches 1 run function developer:world_builder/menu/pages/creatures/hostile/show_list
execute if score @s wb.npc_type matches 2 run function developer:world_builder/menu/pages/creatures/neutral/show_list
execute if score @s wb.npc_type matches 3 run function developer:world_builder/menu/pages/creatures/friendly/show_list
execute if score @s wb.npc_type matches 4 run function developer:world_builder/menu/pages/creatures/custom/show_list

#Objects
execute if score @s wb.gob_type matches 1 run function developer:world_builder/menu/pages/objects/lighting/show_list
execute if score @s wb.gob_type matches 2 run function developer:world_builder/menu/pages/objects/vegetation/show_list
execute if score @s wb.gob_type matches 3 run function developer:world_builder/menu/pages/objects/structures/show_list

function internal:world/chat/interaction/show_scroll_buttons