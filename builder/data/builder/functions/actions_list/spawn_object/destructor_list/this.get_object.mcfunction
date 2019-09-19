#execute if entity @s[scores={wb_biome_id=,wb_gob_type=,wb_gob_id=}] run function builder:actions_list/spawn_object/object_list/lighting/
#execute if entity @s[scores={wb_biome_id=,wb_gob_type=,wb_gob_id=}] run function builder:actions_list/spawn_object/object_list/vegetation/
#execute if entity @s[scores={wb_biome_id=,wb_gob_type=,wb_gob_id=}] run function builder:actions_list/spawn_object/object_list/structures/
execute if entity @s[scores={wb_gob_id=-1}] run function builder:actions_list/spawn_object/destructor_list/debug/testobject

tellraw @a[tag=rbac.builder] {"translate":"event_type.despawned_gob","with":[{"score":{"name":"#dbc.object","objective":"object_guid"},"color":"white"},{"score":{"name":"@s","objective":"wb_pos.x"},"color":"white"},{"score":{"name":"@s","objective":"wb_pos.y"},"color":"white"},{"score":{"name":"@s","objective":"wb_pos.z"},"color":"white"}],"color":"yellow"}
kill @s