gamerule maxCommandChainLength 2000000
worldborder set 30000000 0
worldborder add -10000000 1

scoreboard players set #DEBUG cmd_executed 0
function tools:debugging/internal/loop
tellraw @a[tag=rbac.debugging] {"translate":"server_broadcast","with":[{"translate":"event_type.debug_runtime","with":[{"score":{"name":"#DEBUG","objective":"cmd_executed"},"color":"white"}]}],"color":"yellow"}