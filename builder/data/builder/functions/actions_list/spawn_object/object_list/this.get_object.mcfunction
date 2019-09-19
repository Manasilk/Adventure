#execute if entity @s[scores={wb_biome_id=,wb_gob_type=,wb_gob_id=}] run function builder:actions_list/spawn_object/object_list/lighting/
#execute if entity @s[scores={wb_biome_id=,wb_gob_type=,wb_gob_id=}] run function builder:actions_list/spawn_object/object_list/vegetation/
#execute if entity @s[scores={wb_biome_id=,wb_gob_type=,wb_gob_id=}] run function builder:actions_list/spawn_object/object_list/structures/
execute if entity @s[scores={wb_gob_id=-1}] run function builder:actions_list/spawn_object/object_list/debug/testobject
tag @s add _e.prep_gob