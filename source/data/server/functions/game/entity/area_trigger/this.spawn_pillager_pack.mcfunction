summon minecraft:pillager ~1 ~ ~-1 {HandItems:[{id:"minecraft:crossbow",Count:1b},{}]}
summon minecraft:pillager ~-1 ~ ~-1 {HandItems:[{id:"minecraft:crossbow",Count:1b},{}]}
summon minecraft:pillager ~ ~ ~ {HandItems:[{id:"minecraft:crossbow",Count:1b},{}]}
summon minecraft:pillager ~1 ~ ~1 {HandItems:[{id:"minecraft:crossbow",Count:1b},{}]}
summon minecraft:pillager ~-1 ~ ~1 {HandItems:[{id:"minecraft:crossbow",Count:1b},{}]}

spreadplayers ~ ~ 0.0 18.0 false @e[type=minecraft:pillager,tag=!_e.spread_pos]
tag @e[type=minecraft:pillager,tag=!_e.spread_pos,distance=0..26.0] add _e.spread_pos
function server:game/entity/area_trigger/this.get_entity_count