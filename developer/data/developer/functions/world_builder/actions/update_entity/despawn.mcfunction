execute store result score @s wb.pos_x run data get entity @s Pos[0] 1
execute store result score @s wb.pos_y run data get entity @s Pos[1] 1
execute store result score @s wb.pos_z run data get entity @s Pos[2] 1

tellraw @a[tag=account.builder] {"translate":"event_type.despawned_mob","with":[{"selector":"@s","color":"white"},{"score":{"name":"@s","objective":"entity_guid"},"color":"white"},{"score":{"name":"@s","objective":"wb.pos_x"},"color":"white"},{"score":{"name":"@s","objective":"wb.pos_y"},"color":"white"},{"score":{"name":"@s","objective":"wb.pos_z"},"color":"white"}],"color":"yellow"}
data merge entity @s {DeathLootTable:"internal:entities/empty"}
kill @s