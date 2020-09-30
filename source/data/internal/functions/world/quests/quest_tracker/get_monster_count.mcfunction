scoreboard players operation @s[scores={task_objectives=1..}] npc_count0 += @a[tag=ENTITY_FLAG_QUEST_TARGET,distance=0..31.999,limit=1] quest_kill0
scoreboard players operation @s[scores={task_objectives=2..}] npc_count1 += @a[tag=ENTITY_FLAG_QUEST_TARGET,distance=0..31.999,limit=1] quest_kill1
scoreboard players operation @s[scores={task_objectives=3..}] npc_count2 += @a[tag=ENTITY_FLAG_QUEST_TARGET,distance=0..31.999,limit=1] quest_kill2
scoreboard players operation @s[scores={task_objectives=4}] npc_count3 += @a[tag=ENTITY_FLAG_QUEST_TARGET,distance=0..31.999,limit=1] quest_kill3

#first objective field
execute if score @s[tag=!quest.complete_objective_0,scores={task_objectives=1..,npc_count0=1..}] npc_count0 >= @s quest_kill0 run scoreboard players add @s task_pobj_count 1
execute if score @s[tag=!quest.complete_objective_0,scores={task_objectives=1..,npc_count0=1..}] npc_count0 >= @s quest_kill0 run tag @s add quest.complete_objective_0
#second objective field
execute if score @s[tag=!quest.complete_objective_1,scores={task_objectives=2..,npc_count1=1..}] npc_count1 >= @s quest_kill1 run scoreboard players add @s[tag=!quest.complete_objective_1] task_pobj_count 1
execute if score @s[tag=!quest.complete_objective_1,scores={task_objectives=2..,npc_count1=1..}] npc_count1 >= @s quest_kill1 run tag @s add quest.complete_objective_1
#third objective field
execute if score @s[tag=!quest.complete_objective_2,scores={task_objectives=3..,npc_count2=1..}] npc_count2 >= @s quest_kill2 run scoreboard players add @s[tag=!quest.complete_objective_2] task_pobj_count 1
execute if score @s[tag=!quest.complete_objective_2,scores={task_objectives=3..,npc_count2=1..}] npc_count2 >= @s quest_kill2 run tag @s add quest.complete_objective_2
#fourth objective field
execute if score @s[tag=!quest.complete_objective_3,scores={task_objectives=4,npc_count3=1..}] npc_count3 >= @s quest_kill3 run scoreboard players add @s[tag=!quest.complete_objective_3] task_pobj_count 1
execute if score @s[tag=!quest.complete_objective_3,scores={task_objectives=4,npc_count3=1..}] npc_count3 >= @s quest_kill3 run tag @s add quest.complete_objective_3

tag @s remove area_trigger.linked_to_owner