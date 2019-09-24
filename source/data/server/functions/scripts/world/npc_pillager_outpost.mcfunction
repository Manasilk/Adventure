function server:game/time/update_respawn

execute if score @s entity_upd_t = #dbc.server cfg.normal_t run function server:game/entity/area_trigger/this.get_entity_count
execute if score @s[scores={entity_count=0..8}] entity_upd_t = #const cfg.normal_t run summon minecraft:pillager ~ ~ ~ {HandItems:[{id:"minecraft:crossbow",Count:1b},{}],ActiveEffects:[{Id:14b,Duration:40,Ambient:0b,ShowParticles:0b,ShowIcon:0b}]}
execute if score @s entity_upd_t = #dbc.server cfg.normal_t run spreadplayers ~ ~ 12.0 32.0 false @e[type=minecraft:pillager,tag=!_e.spread_pos]
execute if score @s entity_upd_t = #dbc.server cfg.normal_t run tag @e[type=minecraft:pillager,tag=!_e.spread_pos,distance=0..38] add _e.spread_pos