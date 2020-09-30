execute as @a[tag=!player.initialized_spawn_data] run function internal:world/entity/player/initialize_player_entity

execute if score #garbage garbage_tick = #const UPD_CYCLE run function internal:world/general/clear_garbage
execute if score #world world_tick = #const UPD_CYCLE run function internal:world/general/update