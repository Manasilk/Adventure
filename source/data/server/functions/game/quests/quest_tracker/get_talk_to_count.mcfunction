function server:game/quests/get_track_target
execute if entity @a[tag=ENTITY_FLAG_QUEST_TARGET,scores={_h.interact=1..},distance=0..4.299] run scoreboard players add @s task_pobj_count 1
execute if entity @a[tag=ENTITY_FLAG_QUEST_TARGET,scores={_h.interact=1..},distance=0..4.299] run tag @s[tag=_e.get_next_pos] remove _e.get_next_pos
execute if entity @a[tag=ENTITY_FLAG_QUEST_TARGET,scores={_h.interact=1..},distance=0..4.299] run tag @s[tag=!_e.get_spawn_pos] add _e.get_spawn_pos

execute if entity @e[tag=!_e.get_next_pos] run function server:game/quests/get_next_poi
execute if entity @s[tag=_e.get_spawn_pos] run function server:game/quests/get_spawn_pos