function internal:world/entity/scripted_behavior/action/enable_ai
tag @s remove ENTITY_FLAG_SERVER_CONTROLLED
scoreboard players reset @s entity_tick