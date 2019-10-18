#This is where scripts' loading functions should be declared
#function server:scripts/world/<type>
execute if block ~ ~ ~ minecraft:nether_portal run function server:scripts/world/trigger_hellfire_portal
execute if block ~ ~0.1 ~ minecraft:end_portal run function server:scripts/world/trigger_outlands_portal