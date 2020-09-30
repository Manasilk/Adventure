scoreboard objectives add _ac.v_lim dummy {"translate":"dbc.fairbox.limit_v"}
scoreboard objectives add _ac.h_lim dummy {"translate":"dbc.fairbox.limit_h"}
scoreboard objectives add _ac.pos_x0 dummy {"translate":"dbc.fairbox.pos_x_old"}
scoreboard objectives add _ac.pos_y0 dummy {"translate":"dbc.fairbox.pos_y_old"}
scoreboard objectives add _ac.pos_z0 dummy {"translate":"dbc.fairbox.pos_z_old"}
scoreboard objectives add _ac.pos_x1 dummy {"translate":"dbc.fairbox.pos_x_new"}
scoreboard objectives add _ac.pos_y1 dummy {"translate":"dbc.fairbox.pos_y_new"}
scoreboard objectives add _ac.pos_z1 dummy {"translate":"dbc.fairbox.pos_z_new"}
scoreboard objectives add _ac.dist_lim dummy {"translate":"dbc.fairbox.distance_limit"}
scoreboard objectives add _ac.fall_spd dummy {"translate":"dbc.fairbox.freefall"}

scoreboard objectives add _ac.gamemode dummy {"translate":"dbc.fairbox.gamemode"}
#SURVIVAL                    = 1,
#ADVENTURE                   = 2,
#CREATIVE                    = 4,
#SPECTATOR                   = 8
scoreboard objectives add _ac.actions dummy {"translate":"dbc.fairbox.actions"}
scoreboard objectives add _ac.flags dummy {"translate":"dbc.fairbox.flags"}
#WARDEN_FLAG_PLAYER_IGNORE   = 1,
#WARDEN_FLAG_PLAYER_FLYING   = 2,
#WARDEN_FLAG_PLAYER_TELEPORT = 4
scoreboard objectives add _ac.remflag_tick dummy {"translate":"dbc.fairbox.purge_flag_timer"}
scoreboard objectives add anticheat_tick dummy {"translate":"dbc.fairbox.update_timer"}