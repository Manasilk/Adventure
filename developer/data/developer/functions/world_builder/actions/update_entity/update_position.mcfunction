execute store result entity @s Pos[0] double 1 run scoreboard players get @s wb.pos_x
execute store result entity @s Pos[1] double 1 run scoreboard players get @s wb.pos_y
execute store result entity @s Pos[2] double 1 run scoreboard players get @s wb.pos_z
tellraw @a[tag=account.builder] {"translate":"event_type.moved_mob","with":[{"selector":"@s","color":"white"},{"score":{"name":"@s","objective":"entity_guid"},"color":"white"},{"score":{"name":"@s","objective":"wb.pos_x"},"color":"white"},{"score":{"name":"@s","objective":"wb.pos_y"},"color":"white"},{"score":{"name":"@s","objective":"wb.pos_z"},"color":"white"}],"color":"yellow"}
tag @s remove world_builder.update_npc