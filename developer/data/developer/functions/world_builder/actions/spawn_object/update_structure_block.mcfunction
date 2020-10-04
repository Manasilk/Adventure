function developer:world_builder/actions/spawn_object/create_object_entry

setblock ~ ~1 ~ minecraft:redstone_block replace
fill ~ ~ ~ ~ ~1 ~ minecraft:air
tellraw @a[tag=account.builder] {"translate":"event_type.summoned_gob","with":[{"score":{"name":"#object","objective":"entity_guid"},"color":"white"},{"score":{"name":"@s","objective":"wb.pos_x"},"color":"white"},{"score":{"name":"@s","objective":"wb.pos_y"},"color":"white"},{"score":{"name":"@s","objective":"wb.pos_z"},"color":"white"}],"color":"yellow"}
kill @s