#TEMPORARY, WIP
execute store result storage log:world_builder event[-1].data[].creature.position[].x int 1 run scoreboard players get @s[tag=world_builder.spawn_creature] wb.pos_x
execute store result storage log:world_builder event[-1].data[].creature.position[].y int 1 run scoreboard players get @s[tag=world_builder.spawn_creature] wb.pos_y
execute store result storage log:world_builder event[-1].data[].creature.position[].z int 1 run scoreboard players get @s[tag=world_builder.spawn_creature] wb.pos_z
execute store result storage log:world_builder event[-1].data[].creature.id int 1 run scoreboard players get @s[tag=world_builder.spawn_creature] wb.npc_id
execute store result storage log:world_builder event[-1].data[].creature.type int 1 run scoreboard players get @s[tag=world_builder.spawn_object] wb.npc_type
execute store result storage log:world_builder event[-1].data[].creature.guid int 1 run scoreboard players get #entity entity_guid