#execute origin (0,0,0), entity pos (0,0,0)
execute if entity @s[team=Friendly] run team join Friendly @e[type=#server:area_trigger,tag=entity_name_parameter,distance=0..0.001,limit=1]
execute if entity @s[team=QuestStart] run team join QuestStart @e[type=#server:area_trigger,tag=entity_name_parameter,distance=0..0.001,limit=1]
execute if entity @s[team=QuestEnd] run team join QuestEnd @e[type=#server:area_trigger,tag=entity_name_parameter,distance=0..0.001,limit=1]

data merge entity @e[type=#server:area_trigger,tag=entity_name_parameter,distance=0..0.001,limit=1] {CustomName:"{\"text\":\"ENTITY_NAME\"}"}
data merge entity @e[type=#server:area_trigger,tag=entity_message_parameter,distance=0..0.001,limit=1] {CustomName:"{\"text\":\"TELLRAW_TEXT\"}"}
tag @a[distance=0..3.999,sort=nearest,limit=1] add _e.get_tellraw_msg