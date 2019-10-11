#get item count for each objective, if active
function server:game/quests/quest_tracker/quest_items/get_required_items

#first objective field
execute if score @s[tag=!_e.complete_objective_0,scores={task_objectives=1..,item_count0=1..}] item_count0 = @s quest_item0 run scoreboard players add @s task_pobj_count 1
execute if score @s[tag=!_e.complete_objective_0,scores={task_objectives=1..,item_count0=1..}] item_count0 = @s quest_item0 run tag @s add _e.complete_objective_0
#second objective field
execute if score @s[tag=!_e.complete_objective_1,scores={task_objectives=2..,item_count1=1..}] item_count1 = @s quest_item1 run scoreboard players add @s[tag=!_e.complete_objective_1] task_pobj_count 1
execute if score @s[tag=!_e.complete_objective_1,scores={task_objectives=2..,item_count1=1..}] item_count1 = @s quest_item1 run tag @s add _e.complete_objective_1
#third objective field
execute if score @s[tag=!_e.complete_objective_2,scores={task_objectives=3..,item_count2=1..}] item_count2 = @s quest_item2 run scoreboard players add @s[tag=!_e.complete_objective_2] task_pobj_count 1
execute if score @s[tag=!_e.complete_objective_2,scores={task_objectives=3..,item_count2=1..}] item_count2 = @s quest_item2 run tag @s add _e.complete_objective_2
#fourth objective field
execute if score @s[tag=!_e.complete_objective_3,scores={task_objectives=4,item_count3=1..}] item_count3 = @s quest_item3 run scoreboard players add @s[tag=!_e.complete_objective_3] task_pobj_count 1
execute if score @s[tag=!_e.complete_objective_3,scores={task_objectives=4,item_count3=1..}] item_count3 = @s quest_item3 run tag @s add _e.complete_objective_3