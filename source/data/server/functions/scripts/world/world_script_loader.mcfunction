#This is where scripts' loading functions should be declared
#function server:scripts/world/<type>
execute if score #dbc.server cfg.do_spawn = #bool true as @e[type=#server:area_trigger,tag=npc_pillager_outpost] at @s run function server:scripts/world/npc_pillager_outpost
execute as @e[type=minecraft:player] at @s if block ~ ~ ~ minecraft:nether_portal run function server:scripts/world/trigger_hellfire_portal