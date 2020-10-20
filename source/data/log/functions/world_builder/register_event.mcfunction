execute store result storage log:world_builder event[-1].id int 1 run scoreboard players get #log_event __event_id
execute store result storage log:world_builder event[-1].type int 1 run scoreboard players get #log_event __event_type
execute store result storage log:world_builder event[-1].build.version int 1 run scoreboard players get #world build_version
execute store result storage log:world_builder event[-1].build.update int 1 run scoreboard players get #world build_update
execute store result storage log:world_builder event[-1].build.hotfix int 1 run scoreboard players get #world build_hotfix
execute store result storage log:world_builder event[-1].build.revision int 1 run scoreboard players get #world build_revision
execute store result storage log:world_builder event[-1].timestamp int 1 run time query gametime

function developer:workbench/log/world_builder/data_by_type

scoreboard players reset #log __event_type