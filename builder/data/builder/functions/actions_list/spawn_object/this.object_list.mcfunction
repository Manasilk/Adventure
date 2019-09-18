execute store result score @s wb_pos.x run data get entity @s Pos[0] 1
execute store result score @s wb_pos.y run data get entity @s Pos[1] 1
execute store result score @s wb_pos.z run data get entity @s Pos[2] 1

scoreboard players add #dbc.object object_guid 1
scoreboard players operation @e[type=#server:area_trigger,tag=W_OBJECT,distance=0..0.001,sort=nearest,limit=1] object_guid = #dbc.entity object_guid

tellraw @a[tag=rbac.builder] {"translate":"event_type.summoned_mob","with":[{"selector":"@e[type=#server:area_trigger,sort=nearest,limit=1]","color":"white"},{"score":{"name":"#dbc.object","objective":"object_guid"},"color":"white"},{"score":{"name":"@s","objective":"wb_pos.x"},"color":"white"},{"score":{"name":"@s","objective":"wb_pos.y"},"color":"white"},{"score":{"name":"@s","objective":"wb_pos.z"},"color":"white"}],"color":"yellow"}