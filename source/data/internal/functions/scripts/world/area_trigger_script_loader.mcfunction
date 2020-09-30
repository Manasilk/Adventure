#This is where scripts' loading functions should be declared
#function internal:scripts/world/<type>
execute if entity @s[tag=area_trigger_pillager_outpost] if score #world cfg.do_spawn matches 1 run function internal:scripts/world/area_trigger_pillager_outpost
execute if entity @s[tag=area_trigger_abandoned_mineshaft] if score #world cfg.do_spawn matches 1 run function internal:scripts/world/area_trigger_abandoned_mineshaft
execute if entity @s[tag=area_trigger_quest_trigger] run function internal:scripts/world/area_trigger_quest_trigger
execute if entity @s[tag=area_trigger_quest_monster] if entity @a[distance=0..39.999] run function internal:scripts/world/area_trigger_quest_monster
execute if entity @s[tag=area_trigger_quest_item] if entity @a[distance=0..39.999] run function internal:scripts/world/area_trigger_quest_item
execute if entity @s[tag=area_trigger_quest_talkto] run function internal:scripts/world/area_trigger_quest_talkto