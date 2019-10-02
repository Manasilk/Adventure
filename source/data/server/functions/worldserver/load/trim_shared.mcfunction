function server:game/world/trim/entity_objectives
tellraw @a[tag=rbac.debugging] {"translate":"server_broadcast","with":[{"translate":"event_type.load_trimmed"}],"color":"yellow"}