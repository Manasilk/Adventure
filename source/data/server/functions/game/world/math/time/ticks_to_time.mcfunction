scoreboard players operation #dbc.server hours = #dbc.server world_daytime
scoreboard players operation #dbc.server minutes = #dbc.server world_daytime

#0 = 06:00
#6000 = 12:00
#12000 = 18:00
#18000 = 24:00
scoreboard players operation #dbc.server hours /= #const 1000
execute if score #dbc.server world_daytime matches 0..17999 run scoreboard players operation #dbc.server hours += #const 6
execute if score #dbc.server world_daytime matches 18000..23999 run scoreboard players operation #dbc.server hours -= #const 18

scoreboard players operation #dbc.server minutes %= #const 1000
scoreboard players operation #dbc.server minutes *= #const 60
scoreboard players operation #dbc.server minutes /= #const 1000