scoreboard players add @s entity_tick 1
execute if score @s[tag=ENTITY_RANK_NORMAL] entity_tick > #world cfg.normal_t run scoreboard players set @s entity_tick 0
execute if score @s[tag=ENTITY_RANK_ELITE] entity_tick > #world cfg.elite_t run scoreboard players set @s entity_tick 0
execute if score @s[tag=ENTITY_RANK_BOSS] entity_tick > #world cfg.boss_t run scoreboard players set @s entity_tick 0
execute if score @s[tag=ENTITY_FLAG_QUEST_TRIGGER] entity_tick > #world cfg.quest_t run scoreboard players set @s entity_tick 0