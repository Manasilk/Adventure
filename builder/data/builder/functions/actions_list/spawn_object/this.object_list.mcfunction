execute if entity @s[tag=_h.wb_spawn_gob,tag=!_e.prep_gob,scores={wb_struct_itr=0}] run function builder:actions_list/spawn_object/object_list/this.get_object
execute if entity @s[tag=_h.wb_spawn_gob,tag=_e.prep_gob,scores={wb_struct_itr=1}] run function builder:actions_list/spawn_object/this.update_structure_block

scoreboard players add @s entity_upd_t 1
execute if score @s entity_upd_t matches 199.. run setblock ~ ~ ~ minecraft:air