#This is where scripts' loading functions should be declared
#function internal:scripts/world/<type>
execute if block ~ ~ ~ minecraft:nether_portal run function internal:scripts/world/trigger_hellfire_portal
execute if block ~ ~0.1 ~ minecraft:end_portal run function internal:scripts/world/trigger_outlands_portal

execute unless block ~ ~ ~ #internal:portals run scoreboard players reset @s[tag=SMART_EVENT_CAST] spell_cast_t
execute unless block ~ ~ ~ #internal:portals run tag @s[tag=SMART_EVENT_CAST] remove SMART_EVENT_CAST