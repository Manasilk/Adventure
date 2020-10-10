scoreboard players set @s[type=#internal:npc_passive] entity_rank 0
scoreboard players set @s[type=#internal:npc_normal] entity_rank 1
scoreboard players set @s[type=#internal:npc_elite] entity_rank 2
scoreboard players set @s[type=#internal:npc_boss] entity_rank 3

tag @s[type=#internal:npc_passive] add ENTITY_RANK_NONE
tag @s[type=#internal:npc_normal] add ENTITY_RANK_NORMAL
tag @s[type=#internal:npc_elite] add ENTITY_RANK_ELITE
tag @s[type=#internal:npc_boss] add ENTITY_RANK_BOSS