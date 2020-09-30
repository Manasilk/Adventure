execute store result score #world world_gametime run time query gametime

scoreboard players operation #world world_gametime *= #const 10
scoreboard players operation #world world_gametime /= #const TICKRATE
scoreboard players operation #world world_gametime /= #const CNVT_MINHR
scoreboard players operation #world world_gametime /= #const CNVT_MINHR
scoreboard players operation #world world_gametime *= #const TPD
scoreboard players operation #world world_gametime /= #const 10