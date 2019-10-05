#This is where scripts' loading functions should be declared
#function server:scripts/world/<type>
execute if entity @s[tag=area_trigger_pillager_outpost] if score #dbc.server cfg.do_spawn = #bool true run function server:scripts/world/area_trigger_pillager_outpost