function server:game/entity/area_trigger/this.get_entity_count
function server:game/entity/area_trigger/get_map_spawn_position
execute if score @s[tag=area_trigger_abandoned_mineshaft] entity_count matches 0..5 at @e[type=#server:area_trigger,tag=MAP_SPAWN_TARGET,tag=_h.pos_spawn_valid,distance=0..31.999,sort=nearest,limit=1] run function server:game/entity/area_trigger/summon_mineshaft_spawn