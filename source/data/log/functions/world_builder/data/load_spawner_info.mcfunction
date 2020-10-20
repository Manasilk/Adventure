#TEMPORARY, WIP
execute store result storage log:world_builder event[-1].data[].position.x int 1 run scoreboard players get @s wb.pos_x
execute store result storage log:world_builder event[-1].data[].position.y int 1 run scoreboard players get @s wb.pos_y
execute store result storage log:world_builder event[-1].data[].position.z int 1 run scoreboard players get @s wb.pos_z

#Creature
execute store result storage log:world_builder event[-1].data[].id int 1 run scoreboard players get @s[tag=world_builder.spawn_creature] wb.npc_id
execute store result storage log:world_builder event[-1].data[].type int 1 run scoreboard players get @s[tag=world_builder.spawn_creature] wb.npc_type
execute if entity @s[tag=world_builder.spawn_creature] store result storage log:world_builder event[-1].data[].guid int 1 run scoreboard players get #entity entity_guid
#Object
execute store result storage log:world_builder event[-1].data[].id int 1 run scoreboard players get @s[tag=world_builder.spawn_object] wb.gob_id
execute store result storage log:world_builder event[-1].data[].type int 1 run scoreboard players get @s[tag=world_builder.spawn_object] wb.gob_type
execute store result storage log:world_builder event[-1].data[].biome.id int 1 run scoreboard players get @s[tag=world_builder.spawn_object] wb.biome_id
execute store result storage log:world_builder event[-1].data[].struct_itr int 1 run scoreboard players get @s[tag=world_builder.spawn_object] wb.struct_itr
execute if entity @s[tag=world_builder.spawn_object] store result storage log:world_builder event[-1].data[].guid int 1 run scoreboard players get #object entity_guid