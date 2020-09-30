summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"BountyPOI.DirectionTooltipTrigger\"}",Age:0,Duration:1,WaitTime:0,Tags:["BountyPOI.DirectionTooltipTrigger"]}
execute as @e[tag=BountyPOI.DirectionTooltipTrigger] at @s run function internal:world/miscellaneous/marker/get_direction_info

function internal:world/miscellaneous/marker/get_poi_distance
scoreboard players reset @s TempBuffer

#0 = south
#-180 = north
#90 = west
#-90 = east
title @s[scores={Direction=1}] actionbar [{"text":"S | ","color":"gold"},{"score":{"name":"@s","objective":"Distance"}},{"text":"m"}]
title @s[scores={Direction=2}] actionbar [{"text":"N | ","color":"gold"},{"score":{"name":"@s","objective":"Distance"}},{"text":"m"}]
title @s[scores={Direction=3}] actionbar [{"text":"W | ","color":"gold"},{"score":{"name":"@s","objective":"Distance"}},{"text":"m"}]
title @s[scores={Direction=4}] actionbar [{"text":"E | ","color":"gold"},{"score":{"name":"@s","objective":"Distance"}},{"text":"m"}]

#45 = southwest
#135 = northwest
#-45 = southeast
#-135 = northeast
title @s[scores={Direction=5}] actionbar [{"text":"SE | ","color":"gold"},{"score":{"name":"@s","objective":"Distance"}},{"text":"m"}]
title @s[scores={Direction=6}] actionbar [{"text":"SW | ","color":"gold"},{"score":{"name":"@s","objective":"Distance"}},{"text":"m"}]
title @s[scores={Direction=7}] actionbar [{"text":"NW | ","color":"gold"},{"score":{"name":"@s","objective":"Distance"}},{"text":"m"}]
title @s[scores={Direction=8}] actionbar [{"text":"NE | ","color":"gold"},{"score":{"name":"@s","objective":"Distance"}},{"text":"m"}]