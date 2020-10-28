execute store result storage log:anticheat event[-1].data[].player.guid int 1 run scoreboard players get @s player_id
execute store result storage log:anticheat event[-1].data[].player.gamemode int 1 run data get entity @s playerGameType
execute store result storage log:anticheat event[-1].data[].player.position.x float 0.1 run scoreboard players get @s _ac.pos_x0
execute store result storage log:anticheat event[-1].data[].player.position.y float 0.1 run scoreboard players get @s _ac.pos_y0
execute store result storage log:anticheat event[-1].data[].player.position.z float 0.1 run scoreboard players get @s _ac.pos_z0
execute store result storage log:anticheat event[-1].data[].anticheat.do_action int 1 run scoreboard players get #anticheat _ac.actions
execute store result storage log:anticheat event[-1].data[].anticheat.gamemode int 1 run scoreboard players get #anticheat _ac.gamemode
execute store result storage log:anticheat event[-1].data[].anticheat.distance_limit int 1 run scoreboard players get @s _ac.dist_lim
execute store result storage log:anticheat event[-1].data[].anticheat.distance_passed int 1 run scoreboard players get @s distance

function internal:common/logging/anticheat/data/check_for_errors