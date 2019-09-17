#This is where scripts' loading functions should be declared
execute as @e[type=#server:area_trigger,tag=WORLD_EVENT_CHRISTMAS] run function server:scripts/events/christmas
execute as @e[type=#server:area_trigger,tag=WORLD_EVENT_FIREWORKS] run function server:scripts/events/fireworks
execute as @e[type=#server:area_trigger,tag=WORLD_EVENT_HALLOWEEN] run function server:scripts/events/halloween
execute as @e[type=#server:area_trigger,tag=WORLD_EVENT_VALENTINES] run function server:scripts/events/valentines
execute as @e[type=#server:area_trigger,tag=WORLD_EVENT_ANNIVERSARY] run function server:scripts/events/anniversary