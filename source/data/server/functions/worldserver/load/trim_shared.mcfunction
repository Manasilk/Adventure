function server:game/world/trim/entity_objectives
function server:game/world/trim/gc_objectives
tellraw @a[tag=rbac.debugging] {"translate":"server_broadcast","with":[{"translate":"event_type.load_trimmed"}],"color":"yellow"}

scoreboard players set #dbc.server trim_stat 2