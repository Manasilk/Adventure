#generic
function internal:world/accounts/generic_prompts

#triggers
execute if score @s builder matches 1 run function user:account/toggle_builder
execute if score @s debug matches 1 run function user:account/toggle_debug
execute if score @s reset_quests matches 1 run function user:account/statistics/reset_quests
execute if score @s reset_stats matches 1 run function user:account/statistics/reset_stats
execute if score @s reset_xp matches 1 run function user:account/statistics/reset_xp
execute if score @s gmisland matches 1 run function user:teleport/gmisland
execute if score @s tplist matches 1 run function user:teleport/locations/teleport_manager