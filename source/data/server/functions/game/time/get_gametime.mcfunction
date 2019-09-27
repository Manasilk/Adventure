execute store result score #dbc.server world_gametime run time query gametime

scoreboard players operation #dbc.server world_gametime *= #const 10
scoreboard players operation #dbc.server world_gametime /= #const TICKRATE
scoreboard players operation #dbc.server world_gametime /= #const CNVT_MINHR
scoreboard players operation #dbc.server world_gametime /= #const CNVT_MINHR
scoreboard players operation #dbc.server world_gametime *= #const TPD
scoreboard players operation #dbc.server world_gametime /= #const 10