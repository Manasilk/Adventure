execute store result storage internal:debug log.event[0].id int 1 run scoreboard players get #log_event log.event_id
execute store result storage internal:debug log.event[0].type int 1 run scoreboard players get #log_event log.event_type
execute store result storage internal:debug log.event[0].build.version int 1 run scoreboard players get #world build_version
execute store result storage internal:debug log.event[0].build.update int 1 run scoreboard players get #world build_update
execute store result storage internal:debug log.event[0].build.hotfix int 1 run scoreboard players get #world build_hotfix
execute store result storage internal:debug log.event[0].build.revision int 1 run scoreboard players get #world build_revision
execute store result storage internal:debug log.event[0].timestamp int 1 run time query gametime

function developer:workbench/log/fetch_data_by_type

scoreboard players reset #log_event log.event_type