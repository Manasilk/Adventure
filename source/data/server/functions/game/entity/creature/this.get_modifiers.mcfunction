scoreboard players operation @s entity_level /= #const 10
scoreboard players operation @s entity_maxhp += @s entity_level
scoreboard players operation @s entity_curhp += @s entity_level
scoreboard players operation @s entity_curap += @s entity_level
scoreboard players operation @s entity_level = #dbc.entity entity_level

function server:game/entity/creature/this.update_entity
tag @s[tag=!_e.initialized_scaling] add _e.initialized_scaling