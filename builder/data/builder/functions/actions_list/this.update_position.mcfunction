execute store result entity @s Pos[0] double 1 run scoreboard players get @s wb_pos.x
execute store result entity @s Pos[1] double 1 run scoreboard players get @s wb_pos.y
execute store result entity @s Pos[2] double 1 run scoreboard players get @s wb_pos.z
tellraw @a[tag=rbac.builder] {"translate":"CreativeKit.QueryInfo","with":[{"translate":"CreativeKit.Forced","with":[{"selector":"@s","color":"white"},{"score":{"name":"@s","objective":"EntityGuid"},"color":"white"},{"score":{"name":"@s","objective":"CKit.TempX"},"color":"white"},{"score":{"name":"@s","objective":"CKit.TempY"},"color":"white"},{"score":{"name":"@s","objective":"CKit.TempZ"},"color":"white"}],"color":"yellow"}]}
tag @s remove _h.wb_update_npc