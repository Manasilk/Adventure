scoreboard objectives add _FB._LimitV dummy {"translate":"dbc.fairbox.limit_v"}
scoreboard objectives add _FB._LimitH dummy {"translate":"dbc.fairbox.limit_h"}
scoreboard objectives add _FB._PosX-0 dummy {"translate":"dbc.fairbox.pos_x_old"}
scoreboard objectives add _FB._PosY-0 dummy {"translate":"dbc.fairbox.pos_y_old"}
scoreboard objectives add _FB._PosZ-0 dummy {"translate":"dbc.fairbox.pos_z_old"}
scoreboard objectives add _FB._PosX-1 dummy {"translate":"dbc.fairbox.pos_x_new"}
scoreboard objectives add _FB._PosY-1 dummy {"translate":"dbc.fairbox.pos_y_new"}
scoreboard objectives add _FB._PosZ-1 dummy {"translate":"dbc.fairbox.pos_z_new"}
scoreboard objectives add _FB._FreeFall dummy {"translate":"dbc.fairbox.freefall"}

scoreboard objectives add _FB.Gamemode dummy {"translate":"dbc.fairbox.gamemode"}
#SURVIVAL                    = 1,
#ADVENTURE                   = 2,
#CREATIVE                    = 4,
#SPECTATOR                   = 8
scoreboard objectives add _FB.Actions dummy {"translate":"dbc.fairbox.actions"}
scoreboard objectives add _FB.Flags dummy {"translate":"dbc.fairbox.flags"}
#WARDEN_FLAG_PLAYER_IGNORE   = 1,
#WARDEN_FLAG_PLAYER_FLYING   = 2,
#WARDEN_FLAG_PLAYER_TELEPORT = 4
scoreboard objectives add _FB._T.PurgeFlag dummy {"translate":"dbc.fairbox.purge_flag_timer"}
scoreboard objectives add _FB._T.Update dummy {"translate":"dbc.fairbox.update_timer"}

scoreboard objectives add _FB.Debug dummy 