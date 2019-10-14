function tools:debugging/handler/update

function tools:debugging/internal/loop
tellraw @a[tag=rbac.debugging] {"translate":"server_broadcast","with":[{"translate":"event_type.debug_runtime","with":[{"score":{"name":"#DEBUG","objective":"cmd_executed"},"color":"white"}]}],"color":"yellow"}
worldborder set 15360 0