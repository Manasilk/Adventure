#events
execute if score @s wb.class_id = #preset SHOW_INFO run tag @s add collision.attempt_line_of_sight_collision

execute if score @s[scores={wb.class_id=1,wb.type_id=2}] wb.npc_id matches 1.. run tag @s add collision.attempt_line_of_sight_collision
execute if score @s[scores={wb.class_id=2,wb.type_id=2}] wb.gob_id matches 1.. run tag @s add collision.attempt_line_of_sight_collision
execute if score @s[scores={wb.class_id=2,wb.type_id=2}] wb.gob_id matches -1 run tag @s add collision.attempt_line_of_sight_collision

execute if score @s[scores={wb.class_id=1}] wb.type_id matches 1 run tag @s add collision.attempt_line_of_sight_collision
execute if score @s[scores={wb.class_id=1..2}] wb.type_id matches 3 run tag @s add collision.attempt_line_of_sight_collision

scoreboard players reset @s chat.right_mouse