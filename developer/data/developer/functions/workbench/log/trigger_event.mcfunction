scoreboard players add #log_event log.event_id 1
scoreboard players set #log_event log.event_type 0
data modify storage internal:debug log.event append value {name:"EVENT.INFO.PROTOTYPE",data:[]}

function developer:workbench/log/register_event