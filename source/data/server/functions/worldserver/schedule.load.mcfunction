function server:worldserver/load/check_setup
function server:worldserver/load/check_update
function server:worldserver/config

execute if score #dbc.server cfg.do_trim = #bool true run scoreboard players set #dbc.server trim_stat 1
execute if score #dbc.server cfg.do_trim = #bool false unless score #dbc.server trim_stat matches 0 run scoreboard players set #dbc.server trim_stat 0