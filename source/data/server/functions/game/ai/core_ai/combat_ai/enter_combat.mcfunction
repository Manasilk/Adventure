tag @s add ENTITY_FLAG_IN_COMBAT
function server:game/entity/creature/this.show_aggro
execute store result score @s entity_curhp run data get entity @s Health 1
function server:game/combat/unit_events/get_range_damage_dealt