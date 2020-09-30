execute store result score @s Map.PosX run data get entity @s Pos[0] 1
execute store result score @s Map.PosY run data get entity @s Pos[1] 1
execute store result score @s Map.PosZ run data get entity @s Pos[2] 1

scoreboard players operation @e[type=#internal:area_trigger,tag=BountyAreaTrigger] BountyID -= @s BountyID
scoreboard players operation @s Map.PosX -= @e[type=#internal:area_trigger,scores={BountyID=0},limit=1] BountyPOI.x
scoreboard players operation @s Map.PosY -= @e[type=#internal:area_trigger,scores={BountyID=0},limit=1] BountyPOI.y
scoreboard players operation @s Map.PosZ -= @e[type=#internal:area_trigger,scores={BountyID=0},limit=1] BountyPOI.z

#pow(Pos[], 2)
scoreboard players operation @s Map.PosX *= @s Map.PosX
scoreboard players operation @s Map.PosY *= @s Map.PosY
scoreboard players operation @s Map.PosZ *= @s Map.PosZ

scoreboard players set @s TEMP 0
scoreboard players operation @s TEMP += @s Map.PosX
scoreboard players operation @s TEMP += @s Map.PosY
scoreboard players operation @s TEMP += @s Map.PosZ

function internal:world/world/math/get_distance
function internal:world/miscellaneous/marker/get_player_target
scoreboard players operation @s Distance -= @e[type=#internal:area_trigger,scores={BountyID=0},limit=1] BountyPOI.Range
scoreboard players operation @e[type=#internal:area_trigger,tag=BountyAreaTrigger] BountyID += @s BountyID