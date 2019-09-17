tag @s add ENTITY_FLAG_IN_COMBAT
scoreboard players set @s _h.has_victim 1
advancement revoke @s only server:internal/combat/player.get_victim