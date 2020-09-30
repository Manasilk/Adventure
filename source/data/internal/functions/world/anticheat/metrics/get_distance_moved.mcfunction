#Subtract position(1) from position(2)
scoreboard players operation @s _ac.pos_x1 -= @s _ac.pos_x0
scoreboard players operation @s _ac.pos_y1 -= @s _ac.pos_y0
scoreboard players operation @s _ac.pos_z1 -= @s _ac.pos_z0
scoreboard players operation #MATH x = @s _ac.pos_x1
scoreboard players operation #MATH y = @s _ac.pos_y1
scoreboard players operation #MATH z = @s _ac.pos_z1
scoreboard players operation #MATH x *= #MATH x
scoreboard players operation #MATH y *= #MATH y
scoreboard players operation #MATH z *= #MATH z
scoreboard players operation #MATH TEMP += #MATH x
scoreboard players operation #MATH TEMP += #MATH y
scoreboard players operation #MATH TEMP += #MATH z
function internal:world/general/compute/sqrt
scoreboard players operation @s distance = #MATH result
scoreboard players reset #MATH result

function internal:world/anticheat/info/show_debug_info

#These functions are used to detect teleporting by comparing:
# if position difference is more than maximum allowed distance
# unless the player has already been flagged
execute if score @s[tag=!ANTICHEAT_FLAG_PLAYER_IGNORE,tag=!ANTICHEAT_FLAG_PLAYER_TELEPORT] distance > @s _ac.dist_limit run tag @s add ANTICHEAT_FLAG_PLAYER_TELEPORT

#These functions are used to detect when to revoke the player's privilege to teleports, such as in cases
# with respawning or using an ender pearl, where in both cases the players teleports to a certain position
execute if score @s[tag=ANTICHEAT_FLAG_PLAYER_IGNORE] distance > @s _ac.dist_limit run function internal:world/anticheat/events/remove_flag_ignore_player

#If any detection has succeeded the player is tagged to send a broadcast message and
# be teleported back to the starting position: position(1)
tag @s[tag=!anticheat.broadcast_info,tag=ANTICHEAT_FLAG_PLAYER_FLYING] add anticheat.broadcast_info
tag @s[tag=!anticheat.broadcast_info,tag=ANTICHEAT_FLAG_PLAYER_TELEPORT] add anticheat.broadcast_info