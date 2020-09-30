#Keep player in combat if hit or hit by entity
scoreboard players set @s[scores={is_victim=1}] combat_reset_t 0
scoreboard players set @s[scores={has_victim=1}] combat_reset_t 0