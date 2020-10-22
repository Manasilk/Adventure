function internal:scheduler/load/check_setup
function internal:scheduler/load/check_updates

function internal:configuration/world
#execute if score #world cfg.do_trim matches 1 run scoreboard players set #world <scoreboard> 1
#execute if score #world cfg.do_trim matches -1..0 unless score #world <scoreboard> matches 0 run scoreboard players set #world <scoreboard> 0