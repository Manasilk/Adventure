scoreboard players operation @s BountyID = @p[distance=0..0.001] BountyID
scoreboard players operation @e[type=#internal:area_trigger,tag=BountyAreaTrigger] BountyID -= @s BountyID
teleport @s ~ ~ ~ facing entity @e[type=#internal:area_trigger,scores={BountyID=0},limit=1]

scoreboard players set @s[y_rotation=-22.5..22.5] Direction 1
scoreboard players set @s[y_rotation=157.5..-157.5] Direction 2
scoreboard players set @s[y_rotation=67.5..112.5] Direction 3
scoreboard players set @s[y_rotation=-112.5..-67.5] Direction 4
scoreboard players set @s[y_rotation=-67.5..-22.5] Direction 5
scoreboard players set @s[y_rotation=22.5..67.5] Direction 6
scoreboard players set @s[y_rotation=112.5..157.5] Direction 7
scoreboard players set @s[y_rotation=-157.5..-112.5] Direction 8

scoreboard players operation @p[distance=0..0.001] Direction = @s Direction
kill @s