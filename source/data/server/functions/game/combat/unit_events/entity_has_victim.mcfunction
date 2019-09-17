tag @s add ENTITY_FLAG_IN_COMBAT
scoreboard players set @s _h.is_victim 1
advancement revoke @s only server:internal/combat/entity.get_victim