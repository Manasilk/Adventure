execute if entity @s[scores={wb_gob_type=1}] run function builder:actions_list/spawn_object/destructor_list/lighting/this.get_entry
#execute if entity @s[scores={wb_gob_type=2}] run function builder:actions_list/spawn_object/object_list/vegetation/
execute if entity @s[scores={wb_gob_type=3}] run function builder:actions_list/spawn_object/destructor_list/structure/this.get_entry
#execute if entity @s[scores={wb_gob_type=4}] run function builder:actions_list/spawn_object/destructor_list/debug/testobject

tellraw @a[tag=rbac.builder] {"translate":"event_type.despawned_gob","with":[{"score":{"name":"@s","objective":"entity_guid"},"color":"white"},{"score":{"name":"@s","objective":"wb_pos.x"},"color":"white"},{"score":{"name":"@s","objective":"wb_pos.y"},"color":"white"},{"score":{"name":"@s","objective":"wb_pos.z"},"color":"white"}],"color":"yellow"}
kill @e[type=minecraft:item,distance=0..3.0]
kill @s