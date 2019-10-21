scoreboard players operation #dbc.server TEMP = #dbc.server world_daytime

scoreboard players operation #dbc.server TEMP /= #const 1000
scoreboard players operation #dbc.server __time_h = #dbc.server TEMP

scoreboard players operation #dbc.server TEMP = #dbc.server world_daytime
scoreboard players operation #dbc.server TEMP %= #const 1000
scoreboard players operation #dbc.server TEMP /= #const TPM
scoreboard players operation #dbc.server TEMP *= #const 10
scoreboard players operation #dbc.server __time_m = #dbc.server TEMP

scoreboard players reset #dbc.server TEMP