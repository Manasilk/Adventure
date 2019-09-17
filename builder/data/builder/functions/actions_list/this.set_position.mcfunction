execute store result entity @s Pos[0] double 1 run scoreboard players get @s CKit.TempX
execute store result entity @s Pos[1] double 1 run scoreboard players get @s CKit.TempY
execute store result entity @s Pos[2] double 1 run scoreboard players get @s CKit.TempZ
tellraw @a[tag=QUERY.CKIT_UPDATE_ENTITY] {"translate":"CreativeKit.QueryInfo","with":[{"translate":"CreativeKit.Forced","with":[{"selector":"@s","color":"white"},{"score":{"name":"@s","objective":"EntityGuid"},"color":"white"},{"score":{"name":"@s","objective":"CKit.TempX"},"color":"white"},{"score":{"name":"@s","objective":"CKit.TempY"},"color":"white"},{"score":{"name":"@s","objective":"CKit.TempZ"},"color":"white"}],"color":"yellow"}]}
scoreboard players reset @s CKit.TempX
scoreboard players reset @s CKit.TempY
scoreboard players reset @s CKit.TempZ
tag @s remove QUERY.CKIT_UPDATE_ENTITY
tag @a[tag=QUERY.CKIT_UPDATE_ENTITY] remove QUERY.CKIT_UPDATE_ENTITY