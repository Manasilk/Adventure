execute as @a[tag=!_e.initialized_entry] run function server:game/entity/player/initialize_player_entity

execute if score #dbc.gc gc_upd_t = #const UPD_CYCLE run function server:game/world/clear_garbage
execute if score #dbc.server tick_upd_t = #const UPD_CYCLE run function server:game/world/get_realmlist