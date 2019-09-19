function builder:actions_list/spawn_object/this.create_object_entry

setblock ~ ~1 ~ minecraft:redstone_block replace
tellraw @a[tag=rbac.builder] {"translate":"event_type.summoned_gob","with":[{"score":{"name":"#dbc.object","objective":"object_guid"},"color":"white"},{"score":{"name":"@s","objective":"wb_pos.x"},"color":"white"},{"score":{"name":"@s","objective":"wb_pos.y"},"color":"white"},{"score":{"name":"@s","objective":"wb_pos.z"},"color":"white"}],"color":"yellow"}
kill @s