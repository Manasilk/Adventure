scoreboard players add #world log.cls_time 1
execute if score #world log.cls_time > #world cfg.cls_log_t run scoreboard players set #world log.cls_time 0
execute if score #world log.cls_time = #world cfg.cls_log_t run function developer:workbench/log/clear_oldest_event