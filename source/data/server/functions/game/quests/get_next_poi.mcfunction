scoreboard players operation @e[type=minecraft:villager,tag=ENTITY_FLAG_QUEST_RELATION] entity_id -= @s[scores={quest_talk0=1..,task_pobj_count=0}] quest_talk0
teleport @s @e[type=minecraft:villager,tag=ENTITY_FLAG_QUEST_RELATION,scores={entity_id=0},limit=1]
scoreboard players operation @e[type=minecraft:villager,tag=ENTITY_FLAG_QUEST_RELATION] entity_id += @s[scores={quest_talk0=1..,task_pobj_count=0}] quest_talk0

scoreboard players operation @e[type=minecraft:villager,tag=ENTITY_FLAG_QUEST_RELATION] entity_id -= @s[scores={quest_talk1=1..,task_pobj_count=1}] quest_talk1
teleport @s @e[type=minecraft:villager,tag=ENTITY_FLAG_QUEST_RELATION,scores={entity_id=0},limit=1]
scoreboard players operation @e[type=minecraft:villager,tag=ENTITY_FLAG_QUEST_RELATION] entity_id += @s[scores={quest_talk1=1..,task_pobj_count=1}] quest_talk1

scoreboard players operation @e[type=minecraft:villager,tag=ENTITY_FLAG_QUEST_RELATION] entity_id -= @s[scores={quest_talk2=1..,task_pobj_count=2}] quest_talk2
teleport @s @e[type=minecraft:villager,tag=ENTITY_FLAG_QUEST_RELATION,scores={entity_id=0},limit=1]
scoreboard players operation @e[type=minecraft:villager,tag=ENTITY_FLAG_QUEST_RELATION] entity_id += @s[scores={quest_talk2=1..,task_pobj_count=2}] quest_talk2

scoreboard players operation @e[type=minecraft:villager,tag=ENTITY_FLAG_QUEST_RELATION] entity_id -= @s[scores={quest_talk3=1..,task_pobj_count=3}] quest_talk3
teleport @s @e[type=minecraft:villager,tag=ENTITY_FLAG_QUEST_RELATION,scores={entity_id=0},limit=1]
scoreboard players operation @e[type=minecraft:villager,tag=ENTITY_FLAG_QUEST_RELATION] entity_id += @s[scores={quest_talk3=1..,task_pobj_count=3}] quest_talk3
tag @s add _e.get_next_pos