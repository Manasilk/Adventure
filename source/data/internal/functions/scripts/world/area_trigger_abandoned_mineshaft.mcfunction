execute if block ~ ~ ~ minecraft:spawner run function internal:world/time/update_respawn
execute unless block ~ ~ ~ minecraft:spawner run scoreboard players set @s[scores={entity_tick=0..}] entity_tick -1

execute if score @s entity_tick = #world cfg.normal_t run function internal:world/entity/area_trigger/add_summoned_spawn