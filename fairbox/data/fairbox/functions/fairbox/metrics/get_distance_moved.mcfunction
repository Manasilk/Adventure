#Convert any negative position values to positive
function fairbox:metrics/cast_to_positive
#Subtract position(1) from position(2)
scoreboard players operation @s _FB._PosX-1 -= @s _FB._PosX-0
scoreboard players operation @s _FB._PosY-1 -= @s _FB._PosY-0
scoreboard players operation @s _FB._PosZ-1 -= @s _FB._PosZ-0
#Convert result to positive if the summary turns out negatvie
scoreboard players operation @s[scores={_FB._PosX-1=..-1}] _FB._PosX-1 *= #const CNVT_OPP
scoreboard players operation @s[scores={_FB._PosY-1=..-1}] _FB._PosY-1 *= #const CNVT_OPP
scoreboard players operation @s[scores={_FB._PosZ-1=..-1}] _FB._PosZ-1 *= #const CNVT_OPP

#function server:game/warden/info/warden.show_debug_info

#These functions are used to detect teleporting by comparing:
# if position difference is more than maximum allowed distance
# unless the player has already been flagged
execute if score @s[tag=!FB_FLAG_PLAYER_IGNORE,tag=!FB_FLAG_PLAYER_TELEPORT] _FB._PosX-1 > @s _FB._LimitH run tag @s add FB_FLAG_PLAYER_TELEPORT
execute if score @s[tag=!FB_FLAG_PLAYER_IGNORE,tag=!FB_FLAG_PLAYER_TELEPORT] _FB._PosZ-1 > @s _FB._LimitH run tag @s add FB_FLAG_PLAYER_TELEPORT
execute if score @s[tag=!FB_FLAG_PLAYER_IGNORE,tag=!FB_FLAG_PLAYER_TELEPORT] _FB._PosY-1 > @s _FB._LimitV run tag @s add FB_FLAG_PLAYER_TELEPORT

#These functions are used to detect when to revoke the player's privilege to teleports, such as in cases
# with respawning or using an ender pearl, where in both cases the players teleports to a certain position
execute if score @s[tag=FB_FLAG_PLAYER_IGNORE] _FB._PosX-1 > @s _FB._LimitH run function fairbox:events/remove_flag_ignore_player
execute if score @s[tag=FB_FLAG_PLAYER_IGNORE] _FB._PosZ-1 > @s _FB._LimitH run function fairbox:events/remove_flag_ignore_player
execute if score @s[tag=FB_FLAG_PLAYER_IGNORE] _FB._PosY-1 > @s _FB._LimitV run function fairbox:events/remove_flag_ignore_player

#If any detection has succeeded the player is tagged to send a broadcast message and
# be teleported back to the starting position: position(1)
tag @s[tag=!FairBox.Broadcast,tag=FB_FLAG_PLAYER_FLYING] add FairBox.Broadcast
tag @s[tag=!FairBox.Broadcast,tag=FB_FLAG_PLAYER_TELEPORT] add FairBox.Broadcast