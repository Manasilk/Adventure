execute if entity @s[type=#server:creature] run summon minecraft:area_effect_cloud ~ ~1 ~ {CustomName:"{\"text\":\"VMAP_LOS_CHK\"}",CustomNameVisible:0,Duration:24000,Tags:["vmap_los_chk","ENTITY_FLAG_WORLD_IGNORE","SUMMONER_CREATURE"]}
execute if entity @s[type=minecraft:player] run summon minecraft:area_effect_cloud ~ ~1 ~ {CustomName:"{\"text\":\"VMAP_LOS_CHK\"}",CustomNameVisible:0,Duration:24000,Tags:["vmap_los_chk","ENTITY_FLAG_WORLD_IGNORE","SUMMONER_PLAYER"]}

function server:game/entity/get_entity_rotation
execute if entity @s[type=minecraft:player,scores={wb_option_id=12}] run function server:game/entity/get_entity_position

execute as @e[type=#server:area_trigger,tag=vmap_los_chk,tag=SUMMONER_CREATURE,tag=!_e.initialize_data,distance=0..1.001,sort=nearest,limit=1] run function common:collision/vmaps/this.initialize_default_data
execute as @e[type=#server:area_trigger,tag=vmap_los_chk,tag=SUMMONER_PLAYER,tag=!_e.initialize_data,distance=0..1.001,sort=nearest,limit=1] run function builder:actions_list/load_info/this.initialize_default_data

tag @s remove _e.find_los_target