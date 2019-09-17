scoreboard players add @s[tag=!rbac.commands] _FB._T.Update 1
scoreboard players set @s[scores={_FB._T.Update=6..}] _FB._T.Update 0

#Execution order and TL;DR functionality:
#Prevent players being stuck in solid terrain
#Store falling data
#Store current position (1)
#Store current position (2)
#Calculate distance passed from position(1) to position(2)
execute unless block ~ ~0.55 ~ #server:non_solid run tp @s[gamemode=!spectator] ~ ~1 ~
execute if score @s _FB._T.Update matches 0.. run function fairbox:fairbox/info/fairbox.show_debug_info

execute if score @s _FB._T.Update matches 0.. run function fairbox:fairbox/metrics/fairbox.get_player_falling
execute if score @s _FB._T.Update matches 0 run function fairbox:fairbox/metrics/fairbox.get_player_position_old
execute if score @s _FB._T.Update matches 0.. run function fairbox:fairbox/metrics/fairbox.get_player_position_new
execute if score @s _FB._T.Update matches 5 run function fairbox:fairbox/metrics/fairbox.get_distance_difference

#Revoke any priviliges granted to dead players upon respawn
execute as @e[type=minecraft:player,tag=FB_FLAG_PLAYER_IGNORE,tag=SPELL_AURA_GHOST,scores={_FB._T.Update=5}] run function fairbox:fairbox/events/fairbox.disallow_teleport
execute as @e[type=minecraft:player,tag=rbac.commands,tag=SPELL_AURA_GHOST,scores={_FB._T.Update=-1}] run function fairbox:fairbox/events/fairbox.disallow_teleport

scoreboard players add @s[tag=!rbac.commands,tag=!SPELL_AURA_GHOST,tag=FB_FLAG_PLAYER_IGNORE] _FB._T.PurgeFlag 1
execute if score @s _FB._T.PurgeFlag matches 200.. run function fairbox:fairbox/events/fairbox.disallow_teleport