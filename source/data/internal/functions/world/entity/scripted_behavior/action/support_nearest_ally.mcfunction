tag @s add ENTITY_FLAG_IN_COMBAT
function internal:world/entity/creature/show_aggro_particles
execute store result score @s entity_curhp run data get entity @s Health 1

data modify entity @s AngryAt set from storage internal:buffer target_uuid
scoreboard players operation @s target_id = @a[tag=ENTITY_FLAG_IN_COMBAT,sort=nearest] player_id

tag @s add creature.support_nearest_ally