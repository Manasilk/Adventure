scoreboard objectives add __setup dummy

scoreboard objectives add world_version dummy {"translate":"dbc.server.world_version"}
scoreboard objectives add world_daytime dummy {"translate":"dbc.server.world_daytime"}
scoreboard objectives add world_gametime dummy {"translate":"dbc.server.world_gametime"}
scoreboard objectives add build_version dummy {"translate":"dbc.core.build_version"}
scoreboard objectives add build_update dummy {"translate":"dbc.core.build_update"}
scoreboard objectives add build_hotfix dummy {"translate":"dbc.core.build_hotfix"}
scoreboard objectives add build_revision dummy {"translate":"dbc.core.build_revision"}
scoreboard objectives add build_pd_d dummy {"translate":"dbc.core.build_pd_d"}
scoreboard objectives add build_pd_m dummy {"translate":"dbc.core.build_pd_m"}
scoreboard objectives add build_pd_y dummy {"translate":"dbc.core.build_pd_y"}
scoreboard objectives add __hours dummy {"translate":"dbc.server.hours"}
scoreboard objectives add __minutes dummy {"translate":"dbc.server.minutes"}
scoreboard objectives add expansion dummy  {"translate":"dbc.server.expansion"}

scoreboard objectives add entity_tick dummy {"translate":"dbc.server.entity_tick"}
scoreboard objectives add world_tick dummy {"translate":"dbc.server.world_tick"}
scoreboard objectives add garbage_tick dummy {"translate":"dbc.server.gc_upd_t"}
scoreboard objectives add garbage_age dummy {"translate":"dbc.server.garbage_age"}

scoreboard objectives add worldspawn.x dummy {"translate":"dbc.server.worldspawn_x"}
scoreboard objectives add worldspawn.y dummy {"translate":"dbc.server.worldspawn_y"}
scoreboard objectives add worldspawn.z dummy {"translate":"dbc.server.worldspawn_z"}

#CURRENTLY UNUSED
#scoreboard objectives add trim_stat dummy
#TRIM_STATUS_DISMISSED = 0,
#TRIM_STATUS_SCHEDULED = 1,
#TRIM_STATUS_COMPLETE  = 2

#Configuration
#See: <...>\datapacks\source\data\internal\functions\configuration\world.mcfunction
scoreboard objectives add cfg.do_trim dummy {"translate":"dbc.server.do_trim"}
scoreboard objectives add cfg.do_spawn dummy {"translate":"dbc.server.do_spawn"}
scoreboard objectives add cfg.boss_t dummy {"translate":"dbc.server.boss_spawn_t"}
scoreboard objectives add cfg.elite_t dummy {"translate":"dbc.server.elite_spawn_t"}
scoreboard objectives add cfg.normal_t dummy {"translate":"dbc.server.normal_spawn_t"}
scoreboard objectives add cfg.quest_t dummy {"translate":"dbc.server.quest_t"}
scoreboard objectives add cfg.prjctl_age dummy {"translate":"dbc.server.projectile_t"}
scoreboard objectives add cfg.item_age dummy {"translate":"dbc.server.item_t"}
scoreboard objectives add cfg.cls_log_t dummy {"translate":"config.cls_log_t"}