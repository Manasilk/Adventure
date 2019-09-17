summon minecraft:area_effect_cloud ~ ~1 ~ {CustomName:"{\"text\":\"VMAP_LOS_CHK\"}",CustomNameVisible:0,Duration:5,Tags:["vmap_los_chk","ENTITY_FLAG_WORLD_IGNORE"]}
function server:game/entity/get_entity_position
function server:game/entity/get_entity_hostility

execute as @e[type=#server:area_trigger,tag=vmap_los_chk,tag=!_e.initialize_data,distance=0..1.001,sort=nearest,limit=1] run function common:collision/vmaps/this.initialize_default_data

tag @s remove _e.find_los_target