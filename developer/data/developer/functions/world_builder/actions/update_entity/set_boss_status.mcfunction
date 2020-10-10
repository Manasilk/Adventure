scoreboard players set @s entity_rank 3
tag @s remove ENTITY_RANK_NONE
tag @s remove ENTITY_RANK_NORMAL
tag @s remove ENTITY_RANK_ELITE
tag @s add ENTITY_RANK_BOSS
tag @s add ENTITY_FLAG_EXTRA_INSTANCE_BIND
tag @s add ENTITY_FLAG_EXTRA_IMMUNE_KNOCKBACK
attribute @s[tag=ENTITY_FLAG_EXTRA_IMMUNE_KNOCKBACK] minecraft:generic.knockback_resistance base set 10.0
function internal:world/entity/creature/set_updated_script

tag @s remove world_builder.update_npc