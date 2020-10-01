execute at @s run function internal:world/entity/creature/set_scaling_level
scoreboard players operation #temp entity_maxhp = @s entity_maxhp
scoreboard players operation #temp entity_curhp = @s entity_curhp
scoreboard players operation #temp entity_curap = @s entity_curap
scoreboard players operation #temp entity_maxhp *= #const 1000
scoreboard players operation #temp entity_curhp *= #const 1000
scoreboard players operation #temp entity_curap *= #const 1000

#Health
scoreboard players operation #temp entity_level /= #const 2
scoreboard players operation #temp entity_maxhp += #temp entity_level
scoreboard players operation #temp entity_curhp += #temp entity_level
#Damage
scoreboard players operation #temp entity_level /= #const 10
scoreboard players operation #temp entity_curap += #temp entity_level

function internal:world/entity/creature/set_updated_attributes
tag @s[tag=!creature.initialized_scaling] add creature.initialized_scaling