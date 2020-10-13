tag @s add ENTITY_FLAG_IN_COMBAT
scoreboard players set @s is_victim 1
advancement revoke @s only internal:world/combat/entity.get_victim

effect clear @s minecraft:invisibility