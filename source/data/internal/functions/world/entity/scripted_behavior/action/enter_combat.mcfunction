tag @s add ENTITY_FLAG_IN_COMBAT
function internal:world/entity/creature/show_aggro_particles
execute store result score @s entity_curhp run data get entity @s Health 1
function internal:world/entity/scripted_behavior/target/set_target_aggro
function internal:world/combat/unit_events/get_range_damage_dealt