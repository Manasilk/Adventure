execute if entity @s[scores={wb_gob_type=1}] run function builder:actions_list/spawn_object/object_list/lighting/this.get_entry
#execute if entity @s[scores={wb_gob_type=2}] run function builder:actions_list/spawn_object/object_list/vegetation/this.get_entry
execute if entity @s[scores={wb_gob_type=3}] run function builder:actions_list/spawn_object/object_list/structure/this.get_entry
#execute if entity @s[scores={wb_gob_type=4,wb_gob_id=-1}] run function builder:actions_list/spawn_object/object_list/debug/testobject
tag @s add _e.prep_gob