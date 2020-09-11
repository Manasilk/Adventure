execute at @s run function server:game/entity/creature/this.get_tagged_level

scoreboard players operation #dbc.temp entity_level /= #const 10
scoreboard players operation @s entity_maxhp += #dbc.temp entity_level
scoreboard players operation @s entity_curhp += #dbc.temp entity_level

scoreboard players operation #dbc.temp entity_level /= #const 2
scoreboard players operation @s entity_curap += #dbc.temp entity_level

function server:game/entity/creature/this.update_entity
tag @s[tag=!_e.initialized_scaling] add _e.initialized_scaling