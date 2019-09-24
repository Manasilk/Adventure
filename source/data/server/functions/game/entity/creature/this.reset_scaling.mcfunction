function server:game/entity/creature/this.get_base_attributes
scoreboard players operation @s entity_level = #dbc.entity entity_level

tag @s remove _e.initialized_scaling