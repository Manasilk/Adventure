execute store result score @s entity_basehp run data get entity @s Attributes[0].Base 1
execute store result score @s entity_baseap run data get entity @s Attributes[7].Base 1
execute store result score @s entity_armor run data get entity @s Attributes[4].Base 1
scoreboard players operation @s entity_maxhp = @s entity_basehp
scoreboard players operation @s entity_curhp = @s entity_basehp
scoreboard players operation @s entity_curap = @s entity_baseap
scoreboard players operation @s entity_temphp = @s entity_curhp

function server:game/entity/creature/this.get_modifiers