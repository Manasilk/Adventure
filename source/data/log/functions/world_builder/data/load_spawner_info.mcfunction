#Creature
execute if entity @s[tag=world_builder.spawn_creature] store result storage log:world_builder event[-1].data[].id int 1 run scoreboard players get @s wb.npc_id
execute if entity @s[tag=world_builder.spawn_creature] store result storage log:world_builder event[-1].data[].type int 1 run scoreboard players get @s wb.npc_type
execute if entity @s[tag=world_builder.spawn_creature] store result storage log:world_builder event[-1].data[].guid int 1 run scoreboard players get #entity entity_guid
#Object
execute if entity @s[tag=world_builder.spawn_object] store result storage log:world_builder event[-1].data[].id int 1 run scoreboard players get @s wb.gob_id
execute if entity @s[tag=world_builder.spawn_object] store result storage log:world_builder event[-1].data[].type int 1 run scoreboard players get @s wb.gob_type
execute if entity @s[tag=world_builder.spawn_object] store result storage log:world_builder event[-1].data[].biome.id int 1 run scoreboard players get @s wb.biome_id
execute if entity @s[tag=world_builder.spawn_object] store result storage log:world_builder event[-1].data[].struct_itr int 1 run scoreboard players get @s wb.struct_itr
execute if entity @s[tag=world_builder.spawn_object] store result storage log:world_builder event[-1].data[].guid int 1 run scoreboard players get #object entity_guid