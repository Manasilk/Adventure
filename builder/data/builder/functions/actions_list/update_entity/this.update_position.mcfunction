execute store result entity @s Pos[0] double 1 run scoreboard players get @s wb_pos.x
execute store result entity @s Pos[1] double 1 run scoreboard players get @s wb_pos.y
execute store result entity @s Pos[2] double 1 run scoreboard players get @s wb_pos.z
tellraw @a[tag=rbac.builder] {"translate":"event_type.moved_mob","with":[{"selector":"@s","color":"white"},{"score":{"name":"@s","objective":"entity_guid"},"color":"white"},{"score":{"name":"@s","objective":"wb_pos.x"},"color":"white"},{"score":{"name":"@s","objective":"wb_pos.y"},"color":"white"},{"score":{"name":"@s","objective":"wb_pos.z"},"color":"white"}],"color":"yellow"}
tag @s remove _h.wb_update_npc