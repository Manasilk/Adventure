scoreboard players operation @s entity_basehp -= @s entity_level
scoreboard players operation @s entity_baseap -= @s entity_level
scoreboard players operation @s entity_curhp -= @s entity_level
scoreboard players set @s[scores={entity_curhp=-2147483648..0}] entity_curhp 1
scoreboard players operation @s entity_level = #dbc.entity entity_level

function server:game/entity/creature/this.get_modifiers
tag @s remove _h.modify_attributes