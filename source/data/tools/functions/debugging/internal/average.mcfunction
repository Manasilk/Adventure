gamerule maxCommandChainLength 2000000
worldborder set 30000000 0
worldborder add -10000000 1

scoreboard players set #DEBUG cmd_executed 0
function tools:debugging/internal/loop
scoreboard players add #DEBUG loop_iteration 1
scoreboard players operation #DEBUG TEMP += #DEBUG cmd_executed
execute unless score #DEBUG loop_iteration matches 11.. run function tools:debugging/average

execute if score #DEBUG loop_iteration matches 11.. run scoreboard players operation #DEBUG cmd_executed = #DEBUG TEMP
execute if score #DEBUG loop_iteration matches 11.. run scoreboard players operation #DEBUG cmd_executed /= #DEBUG loop_iteration
execute if score #DEBUG loop_iteration matches 11.. run tellraw @a[tag=rbac.debugging] {"translate":"server_broadcast","with":[{"translate":"event_type.debug_runtime","with":[{"score":{"name":"#DEBUG","objective":"cmd_executed"},"color":"white"}]}],"color":"yellow"}
execute if score #DEBUG loop_iteration matches 11.. run function tools:debugging/handler/reset