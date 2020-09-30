scoreboard players add @s[tag=!account.commands] anticheat_tick 1
scoreboard players set @s[scores={anticheat_tick=6..}] anticheat_tick 0

#Execution order and TL;DR functionality:
#Prevent players being stuck in solid terrain
#Store falling data
#Store current position (1)
#Store current position (2)
#Calculate distance passed from position(1) to position(2)
execute unless block ~ ~0.55 ~ #internal:collision/anticheat run scoreboard players enable @s[scores={unstuck_cd=0}] unstuck

execute if score @s[tag=!SPELL_EFFECT_FLYING,tag=!SPELL_EFFECT_SLIMEBLOCK] anticheat_tick matches 0.. run function internal:world/anticheat/metrics/set_max_falling_speed
execute if score @s anticheat_tick matches 0 run function internal:world/anticheat/metrics/get_player_position_old
execute if score @s anticheat_tick matches 5 run function internal:world/anticheat/metrics/get_player_position_new
execute if score @s anticheat_tick matches 5 run function internal:world/anticheat/metrics/get_distance_moved

#Revoke any priviliges granted to dead players upon respawn
execute as @e[type=minecraft:player,tag=SPELL_AURA_GHOST] run function internal:world/anticheat/events/filter_corpse

scoreboard players add @s[tag=!account.commands,tag=!SPELL_AURA_GHOST,tag=FB_FLAG_PLAYER_IGNORE] _ac.remflag_tick 1
execute if score @s _ac.remflag_tick matches 200.. run function internal:world/anticheat/events/remove_flag_ignore_player