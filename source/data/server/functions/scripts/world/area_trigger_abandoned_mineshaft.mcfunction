execute if block ~ ~ ~ minecraft:spawner run function server:game/time/update_respawn
execute unless block ~ ~ ~ minecraft:spawner run scoreboard players set @s[scores={entity_upd_t=0..}] entity_upd_t -1

execute if score @s entity_upd_t = #dbc.server cfg.normal_t run function server:game/entity/area_trigger/add_summoned_spawn