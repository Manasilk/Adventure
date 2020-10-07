scoreboard players add #world world_tick 1
scoreboard players add #garbage garbage_tick 1

execute if score #world world_tick = #const UPD_CYCLE run scoreboard players set #world world_tick 0
execute if score #garbage garbage_tick = #const UPD_CYCLE run scoreboard players set #garbage garbage_tick 0