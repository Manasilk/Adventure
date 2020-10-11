execute if entity @s[scores={wb.gob_type=1}] run function developer:world_builder/actions/spawn_object/destructor_list/lighting/get_entry
#execute if entity @s[scores={wb.gob_type=2}] run function developer:world_builder/actions/spawn_object/object_list/vegetation/
execute if entity @s[scores={wb.gob_type=3}] run function developer:world_builder/actions/spawn_object/destructor_list/structure/get_entry

tellraw @a[tag=account.builder] {"translate":"event_type.despawned_gob","with":[{"score":{"name":"@s","objective":"entity_guid"},"color":"white"},{"score":{"name":"@s","objective":"wb.pos_x"},"color":"white"},{"score":{"name":"@s","objective":"wb.pos_y"},"color":"white"},{"score":{"name":"@s","objective":"wb.pos_z"},"color":"white"}],"color":"yellow"}
kill @e[type=minecraft:item,distance=0..3.0]
kill @s