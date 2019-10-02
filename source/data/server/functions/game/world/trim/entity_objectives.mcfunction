#delete objectives to clear saved entity entries
scoreboard objectives remove entity_id
scoreboard objectives remove entity_guid
scoreboard objectives remove entity_hostility
scoreboard objectives remove entity_rank
scoreboard objectives remove entity_level
scoreboard objectives remove entity_hpprc
scoreboard objectives remove entity_basehp
scoreboard objectives remove entity_baseap
scoreboard objectives remove entity_curap
scoreboard objectives remove entity_curhp
scoreboard objectives remove entity_maxhp
scoreboard objectives remove entity_temphp
scoreboard objectives remove entity_armor
scoreboard objectives remove entity_spawn.x
scoreboard objectives remove entity_spawn.y
scoreboard objectives remove entity_spawn.z
#restore scores
function server:game/world/trim/create/entity_objectives
#re-initialize scores
execute as @e[type=#server:creature,tag=_e.initialized_entry] run function server:game/world/trim/create/initialize_objectives