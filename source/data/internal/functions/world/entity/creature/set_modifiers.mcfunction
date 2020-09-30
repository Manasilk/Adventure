execute at @s run function internal:world/entity/creature/set_scaling_level

scoreboard players operation #temp entity_level /= #const 2
scoreboard players operation @s entity_maxhp += #temp entity_level
scoreboard players operation @s entity_curhp += #temp entity_level

scoreboard players operation #temp entity_level /= #const 10
scoreboard players operation @s entity_curap += #temp entity_level

function internal:world/entity/creature/set_updated_attributes
tag @s[tag=!creature.initialized_scaling] add creature.initialized_scaling