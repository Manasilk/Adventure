#This is where scripts' loading functions should be declared
#function server:scripts/world/<type>
execute as @e[type=#server:area_trigger] at @s run function server:scripts/world/area_trigger_script_loader
execute as @e[type=#server:creature] at @s run function server:scripts/world/entity_script_loader
execute as @e[type=minecraft:player] at @s run function server:scripts/world/player_script_loader