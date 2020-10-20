scoreboard players operation #world __hours = #world world_daytime
scoreboard players operation #world __minutes = #world world_daytime

#0 = 06:00
#6000 = 12:00
#12000 = 18:00
#18000 = 24:00
scoreboard players operation #world __hours /= #const 1000
execute if score #world world_daytime matches 0..17999 run scoreboard players operation #world __hours += #const 6
execute if score #world world_daytime matches 18000..23999 run scoreboard players operation #world __hours -= #const 18

scoreboard players operation #world __minutes %= #const 1000
scoreboard players operation #world __minutes *= #const CNVT_MINHR
scoreboard players operation #world __minutes /= #const 1000