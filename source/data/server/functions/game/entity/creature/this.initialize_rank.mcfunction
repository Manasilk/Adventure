scoreboard players set @s[type=#server:npc_passive] entity_rank 0
scoreboard players set @s[type=#server:npc_normal] entity_rank 1
scoreboard players set @s[type=#server:npc_elite] entity_rank 2
scoreboard players set @s[type=#server:npc_boss] entity_rank 3

tag @s[scores={entity_rank=0}] add ENTITY_RANK_NONE
tag @s[scores={entity_rank=1}] add ENTITY_RANK_NORMAL
tag @s[scores={entity_rank=2}] add ENTITY_RANK_ELITE
tag @s[scores={entity_rank=3}] add ENTITY_RANK_BOSS