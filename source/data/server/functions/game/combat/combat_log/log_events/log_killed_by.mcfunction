function server:game/combat/combat_log/check_timestamp
tellraw @s[tag=_t.h0_m0] {"translate":"server_timestamp","with":[{"text":"0"},{"score":{"name":"#dbc.server","objective":"hours"}},{"text":"0"},{"score":{"name":"#dbc.server","objective":"minutes"}},{"translate":"event_type.log.killed_by","with":[{"selector":"@e[type=#server:area_trigger,tag=entity_type_param,limit=1]","color":"white"}]}],"color":"gray"}
tellraw @s[tag=_t.h0_m1] {"translate":"server_timestamp","with":[{"text":"0"},{"score":{"name":"#dbc.server","objective":"hours"}},{"text":""},{"score":{"name":"#dbc.server","objective":"minutes"}},{"translate":"event_type.log.killed_by","with":[{"selector":"@e[type=#server:area_trigger,tag=entity_type_param,limit=1]","color":"white"}]}],"color":"gray"}
tellraw @s[tag=_t.h1_m0] {"translate":"server_timestamp","with":[{"text":""},{"score":{"name":"#dbc.server","objective":"hours"}},{"text":"0"},{"score":{"name":"#dbc.server","objective":"minutes"}},{"translate":"event_type.log.killed_by","with":[{"selector":"@e[type=#server:area_trigger,tag=entity_type_param,limit=1]","color":"white"}]}],"color":"gray"}
tellraw @s[tag=_t.h1_m1] {"translate":"server_timestamp","with":[{"text":""},{"score":{"name":"#dbc.server","objective":"hours"}},{"text":""},{"score":{"name":"#dbc.server","objective":"minutes"}},{"translate":"event_type.log.killed_by","with":[{"selector":"@e[type=#server:area_trigger,tag=entity_type_param,limit=1]","color":"white"}]}],"color":"gray"}

tag @s remove _t.h0_m0
tag @s remove _t.h0_m1
tag @s remove _t.h1_m0
tag @s remove _t.h1_m1
tag @s remove _e.log.event_type.killed_by