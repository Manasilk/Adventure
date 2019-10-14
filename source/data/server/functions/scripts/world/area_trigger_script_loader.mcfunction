#This is where scripts' loading functions should be declared
#function server:scripts/world/<type>
execute if entity @s[tag=area_trigger_pillager_outpost] if score #dbc.server cfg.do_spawn = #bool true run function server:scripts/world/area_trigger_pillager_outpost
execute if entity @s[tag=area_trigger_quest_trigger] run function server:scripts/world/area_trigger_quest_trigger
execute if entity @s[tag=area_trigger_quest_monster] if entity @a[distance=0..39.999] run function server:scripts/world/area_trigger_quest_monster
execute if entity @s[tag=area_trigger_quest_item] if entity @a[distance=0..39.999] run function server:scripts/world/area_trigger_quest_item
execute if entity @s[tag=area_trigger_quest_talkto] run function server:scripts/world/area_trigger_quest_talkto